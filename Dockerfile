FROM python:3.8

ADD requirements.txt /

RUN pip install -r /requirements.txt

ADD iris-classifier.py /

ENV PYTHONUNBUFFERED=1

CMD [ "python", "./iris-classifier.py" ]
