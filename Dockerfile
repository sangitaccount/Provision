FROM jboss/wildfly:latest
MAINTAINER SantoshChituprolu

ARG APP_FILE=war-example-1.0.war

ADD ${APP_FILE} /opt/jboss/wildfly/standalone/deployments/${APP_FILE}

RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

EXPOSE 8080
EXPOSE 9990
