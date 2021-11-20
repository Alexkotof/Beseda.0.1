FROM python:3.9

RUN mkdir -p /usr/chat
WORKDIR /usr/chat

COPY . /usr/chat
RUN pip  install --no-cache-dir -r requirements.txt

EXPOSE 5000
ENV TZ Europe/Moscow

CMD ["python", "app.py"]