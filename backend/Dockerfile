FROM python:3.12-alpine

# Install base dependencies
RUN apk add --no-cache curl build-base bash

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Add Poetry to PATH for all future layers
ENV PATH="/root/.local/bin:$PATH"
ENV PYTHONPATH=/app


# Copy project files
WORKDIR /app
COPY pyproject.toml poetry.lock* ./

# Install dependencies
RUN poetry install --no-interaction --no-root

# Copy app
COPY . .

EXPOSE 8000
CMD ["bash","-c","poetry run bash ./prestart.sh && poetry run uvicorn app.main:app --host 0.0.0.0 --port 8000"]