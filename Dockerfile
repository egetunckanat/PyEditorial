FROM python:3.9

WORKDIR /app
COPY . .

# install requirements
RUN pip install -r requirements.txt

RUN pip install psycopg2

# # migrations
# RUN python manage.py makemigrations
# RUN python manage.py migrate

# RUN python manage.py migrate --run-syncdb
# # static
# RUN python manage.py collectstatic --noinput


