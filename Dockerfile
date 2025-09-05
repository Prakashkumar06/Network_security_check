# Use a supported, secure base image
FROM python:3.10-slim-bookworm

WORKDIR /app

COPY . /app

# Install AWS CLI using pip (simpler, avoids apt errors)
RUN pip install --no-cache-dir --upgrade pip awscli

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
