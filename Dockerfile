FROM python:3.8-slim
LABEL maintainer="Tim McBride <tim@deviousgeek.com>"
WORKDIR /app
ADD ["requirements.txt", "cm8200b_stats.py", "./"]
RUN pip3 install -r requirements.txt --disable-pip-version-check
ENTRYPOINT ["python", "cm8200b_stats.py"]