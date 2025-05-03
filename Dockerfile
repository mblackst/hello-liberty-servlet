FROM icr.io/appcafe/open-liberty:kernel-slim-java8-openj9-ubi

COPY --chown=1001:0 target/hello-liberty.war /config/dropins/

EXPOSE 9080

CMD ["server", "run", "defaultServer"]
