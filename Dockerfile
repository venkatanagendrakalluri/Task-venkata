# Taking python 3.7 - Latest
FROM python:3.9.2

MAINTAINER Santhosh Deepu <deepu4social@gmail.com>

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Bundle app source
COPY src /app

# Exposing the http server port
EXPOSE 8080

# Command to execute as the Docker starts
CMD [ "python", "main.py" ]