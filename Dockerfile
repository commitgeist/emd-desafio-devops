FROM python:3.5-alpine

WORKDIR /usr/src/app

COPY requirements.txt  app.py ./
RUN pip install Flask

ENV ENV_NAME="DesafioDevOps"

EXPOSE 8000

CMD [ "python3", "app.py" ]
