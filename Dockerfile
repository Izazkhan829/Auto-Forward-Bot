FROM python:3.12-slim

WORKDIR /app

# Install gcc and build essentials
RUN apt-get update && apt-get install -y gcc build-essential

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
