FROM python:3.11-slim

WORKDIR /app

# Cài đặt dependencies hệ thống
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements và cài đặt Python packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Tạo thư mục logs
RUN mkdir -p logs

# Expose port
EXPOSE 5000

# Command để chạy ứng dụng - SỬA ĐƯỜNG DẪN
CMD ["python", "app.py"]