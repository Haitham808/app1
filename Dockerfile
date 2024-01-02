# Use a base image with Java, as Maven requires Java to run
FROM openjdk:8-jdk-alpine

# Argument to specify the version of Maven at build time
ARG MVN_VERSION=3.6.3

# Environment variable to set a fixed location for Maven
ENV MAVEN_HOME /usr/share/maven

# Install Maven
RUN wget --no-verbose -O /tmp/apache-maven.tar.gz http://archive.apache.org/dist/maven/maven-3/${MVN_VERSION}/binaries/apache-maven-${MVN_VERSION}-bin.tar.gz \
    && tar xzf /tmp/apache-maven.tar.gz -C /usr/share \
    && mv /usr/share/apache-maven-${MVN_VERSION} /usr/share/maven \
    && rm -f /tmp/apache-maven.tar.gz \
    && ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn

# Define a volume for the Maven repository
VOLUME /root/.m2

# Default command
CMD ["mvn", "-version"]