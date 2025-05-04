FROM icr.io/appcafe/open-liberty:kernel-slim-java8-openj9-ubi

# Install necessary Liberty features
RUN features.sh --acceptLicense install jsp-2.3 servlet

# Deploy the WAR
COPY --chown=1001:0 target/hello-liberty.war /config/dropins/

EXPOSE 9080

CMD ["server", "run", "defaultServer"]

