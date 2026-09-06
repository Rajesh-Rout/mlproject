FROM python:3.10-slim

WORKDIR /app

# install uv
RUN pip install --no-cache-dir uv
COPY requirements.txt .

RUN uv pip install --system -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python","app.py"]