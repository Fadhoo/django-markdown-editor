FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /martor_demo/martor_demo/
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . /martor_demo/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]