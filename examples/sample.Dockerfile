FROM python:3.11-slim

# Intentionally using ADD instead of COPY to trigger a warning
ADD . /app

WORKDIR /app

# No USER instruction to trigger "run as root" warning
RUN apt-get update && apt-get install -y curl

CMD ["python3", "--version"]
