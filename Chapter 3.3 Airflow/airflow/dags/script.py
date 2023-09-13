from airflow import DAG 
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator
from datetime import timedelta
import datetime
import requests
import psycopg2


def exchange_data():
    
    url = "https://api.exchangerate.host/latest"

    params = {
        'base': "BTC",
        'symbols': 'RUB',
        'format': 'JSON'
    }

    response = requests.get(url, params=params)
    data = response.json()

    connection = psycopg2.connect(
        host = 'host.docker.internal',
        port = '5432',
        user = 'user',
        password = 'secret',
        database = 'db'
    )

    print("Connected")
    cursor = connection.cursor()

    today = datetime.datetime.today().replace(microsecond=0).strftime('%Y-%m-%d %H:%M:%S')
    data = [(today, 'BTC', 'RUB', data['rates']['RUB'])]

    info = ','.join(cursor.mogrify("(%s,%s,%s,%s)",i).decode('utf-8') for i in data)
    print(info)

    cursor.execute("INSERT INTO exchange (date, first_c, second_c, exchange_rate) VALUES " + (info))
    connection.commit() 

    cursor.close()

    connection.close()

default_args = {
    "owner": "airflow",
    'start_date': "2023-09-13 08:00"
}

dag = DAG(
    'simple_tasks',
    schedule=timedelta(minutes=10),
    default_args=default_args
    )

gm_task = BashOperator(
    task_id='print_gm_task',
    bash_command='echo "Good morning, my diggers!"',
    dag = dag
    )

rate_task = PythonOperator(
    task_id='exchange_data_task',
    python_callable=exchange_data,
    dag = dag
    )

gm_task >> rate_task