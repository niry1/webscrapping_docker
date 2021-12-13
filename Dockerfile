# This file defines the Docker container that will contain the Crawler app.
# From the source image #python
FROM python:3.6-slim
# Identify maintainer
LABEL maintainer = "niry.hoareau@gmail.com"
# Set the default working directory
WORKDIR /app/
COPY crawler.py requirements.txt /app/
RUN pip install -r requirements.txt
CMD ["python","./crawler.py"]
# When the container starts, run this
ENTRYPOINT python ./ crawler.py
