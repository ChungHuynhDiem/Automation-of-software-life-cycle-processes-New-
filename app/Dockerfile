FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy toàn bộ nội dung
COPY . .

RUN mkdir -p logs
EXPOSE 5000

# SỬA COMMAND - file app.py nằm trong thư mục app
CMD ["python", "app.py"]