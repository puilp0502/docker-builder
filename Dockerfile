FROM docker:stable
RUN apk add --no-cache build-base py2-pip python-dev libffi-dev openssl-dev \
	&& pip install docker-compose \
	&& apk del build-base python-dev libffi-dev openssl-dev 
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["sh"]
