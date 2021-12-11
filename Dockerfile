FROM maven:3-jdk-9 AS compiler
RUN git clone https://github.com/openliberty/guide-getting-started.git
RUN mvn package -f guide-getting-started/start/pom.xml
FROM ibmcom/websphere-liberty:21.0.0.2-kernel-java8-openj9-ubi
COPY --from=compiler --chown=1001:0 /guide-getting-started/start/src/main/liberty/config/ /config/
COPY --from=compiler --chown=1001:0 /guide-getting-started/start/target/*.war /config/apps/
