FROM python:3.12-slim

WORKDIR /app

# Install dependencies if any
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy code into container
COPY app/ .

# Keep container alive
CMD ["tail", "-f", "/dev/null"]
