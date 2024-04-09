ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
