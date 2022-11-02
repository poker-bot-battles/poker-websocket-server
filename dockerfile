FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --upgrade -r /code/requirements.txt

COPY ./app /code/app

EXPOSE 8765:8765

CMD ["python", "app/server.py"]
