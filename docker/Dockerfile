FROM busybox:1.37.0

RUN mkdir /conf
RUN echo config > /conf/application.conf

EXPOSE 8080

CMD ["sh", "-c", "cat /conf/app.conf 2>/dev/null && nc -l -p 8080"]