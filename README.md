# 研究室向け業績アーカイブ with docker-compose
研究室向け業績アーカイブ を docker-compose を用いて nginx + gunicorn + django の構成で起動  
https://github.com/yamaken1343/gyoseki-archive 

## Requirements
- docker
- docker-compose

## Quick Start
```
# Download
git clone https://github.com/yamaken1343/gyoseki-docker
cd gyoseki-docker

# Download gyoseki-archive
git clone https://github.com/yamaken1343/gyoseki-archive

# Initialzie django and create superuser
docker-compose run django python manage.py makemigrations
docker-compose run django python manage.py migrate
docker-compose run django python manage.py createsuperuser

# Up
docker-compose up

# Access on http://localhost
```
