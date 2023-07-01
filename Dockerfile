FROM python

WORKDIR src

COPY . /src

RUN pip install -r /src/requirements.txt

RUN python manage.py migrate

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "stocks_products.wsgi"]