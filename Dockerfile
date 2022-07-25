FROM python:3.9

COPY . /usr/app

WORKDIR /usr/app

RUN pip install -r requirements.txt

RUN export $(cat .env | xargs)

CMD [ "python3", "hello.py" ]




