# fixpr-test base image. Every service builds FROM this and inherits requirements.lock.
FROM python:3.13-slim
RUN pip install --no-cache-dir uv
COPY requirements.lock /tmp/base-requirements.lock
RUN uv pip install --system --no-cache -r /tmp/base-requirements.lock && rm /tmp/base-requirements.lock
