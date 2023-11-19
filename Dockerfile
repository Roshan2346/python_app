FROM python

WORKDIR /usr/app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

ENV FLASK_APP=index.py

CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]
