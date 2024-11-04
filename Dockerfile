FROM python:3.13.0-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app/

EXPOSE 5000

RUN rm -f /bin/sh /usr/bin/sh /bin/bash /usr/bin/bash /bin/rbash /usr/bin/rbash /bin/dash /usr/bin/dash

CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app"]