FROM python:bookworm
MAINTAINER "Nikolas Garofil"
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY demo.py ./
CMD [ "python", "./demo.py" ]
