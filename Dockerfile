FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir django==3.2
EXPOSE 8000
CMD [ "sh","-c","python manage.py migrate && python manage.py runserver 0.0.0.0:8000" ]

