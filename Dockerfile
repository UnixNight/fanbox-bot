FROM python

WORKDIR /app

COPY requirements.txt .
COPY main.py .

RUN pipinstall -r requirements.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
