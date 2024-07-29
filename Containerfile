FROM python:3-alpine

ARG BUILD_DATE

LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build_date=${BUILD_DATE}

RUN pip install requests

COPY main.py /main.py

RUN chmod +x main.py

CMD ["python", "/main.py"]
