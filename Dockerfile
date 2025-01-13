FROM python:3.12-slim AS Builder

ARG PY_SCRIPT_FILE

WORKDIR /app

COPY python-repo/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD "python", "$PY_SCRIPT_FILE.py"
