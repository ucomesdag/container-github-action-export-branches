FROM python:3-alpine

ARG BUILD_DATE

LABEL summary="A container that is used for GitHub actions export-branches."
LABEL maintainer="Uco Mesdag <uco@mesd.ag>"
LABEL build-date=${BUILD_DATE}

RUN pip install requests

COPY main.py /main.py

RUN chmod +x main.py

CMD ["python", "/main.py"]
