FROM python:3.8-slim AS base
ENV PYROOT /pyroot
ENV PYTHONUSERBASE $PYROOT

FROM base AS builder
RUN pip install pipenv
COPY Pipfile* ./
RUN PIP_USER=1 PIP_IGNORE_INSTALLED=1 pipenv install --system --deploy --ignore-pipfile

FROM base
WORKDIR /app
COPY --from=builder $PYROOT/lib/ $PYROOT/lib/
COPY gunicorn /usr/local/bin/
COPY pydock ./pydock
COPY manage.py .