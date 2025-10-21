# FROM python:3.11-slim

# WORKDIR /app

# RUN apt-get update && apt-get install -y \
#     postgresql-client \
#     && rm -rf /var/lib/apt/lists/*

# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# RUN mkdir -p logs
# EXPOSE 5000

# CMD ["python", "app/app.py"]
# Dockerfile
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Cài đặt dependencies hệ thống
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements và cài đặt Python packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy thư mục app vào /app
COPY app/ ./app

# Tạo thư mục logs
RUN mkdir -p logs

# Expose port
EXPOSE 5000

# Set working directory vào thư mục app để chạy app.py
WORKDIR /app/app

# Command để chạy ứng dụng
CMD ["python", "app.py"]
