FROM python:3.8-slim-buster
COPY requirements.txt .
RUN python3 -m pip install --upgrade -r requirements.txt
COPY app app/
RUN python3 app/server.py
EXPOSE 5000
CMD ["python3", "app/server.py", "serve"]
