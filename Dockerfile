FROM icr.io/appcafe/open-liberty:kernel-slim-java21-openj9-ubi-minimal
COPY --chown=1001:0 server.xml /config/
RUN features.sh
EXPOSE 9080
EXPOSE 9443
RUN configure.sh
