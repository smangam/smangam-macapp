FROM alpine
LABEL maintainer="Sunny Mangam <smangam@yahoo.com>"
LABEL description="This Dockerfile installs ruby and runs an API consumer program to show MAC Address details."
RUN mkdir /opt/webapp && apk add ruby
ENV API_KEY at_1K85WPpNP6r0nQ9Za7tS60ZnoO4rd
WORKDIR /opt/webapp
COPY files/mac.rb /opt/webapp
ENTRYPOINT ["/opt/webapp/mac.rb"]
