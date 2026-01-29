# 1. Base image
FROM python:3.11-slim

# 2. Set working directory
WORKDIR /app

# 3. Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy app code
COPY . .

# 5. Expose port
EXPOSE 8000

# 6. Run app
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
