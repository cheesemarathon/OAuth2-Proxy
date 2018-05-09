FROM debian:stable-slim
MAINTAINER Ben Bridegs <07bridesb@gmail.com>

# When this Dockerfile was last refreshed (year/month/day)
ENV REFRESHED_AT 2018-03-01
ENV OAUTH2_PROXY_VERSION 1

# Checkout bitly's latest google-auth-proxy code from Github
ADD https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz /tmp
RUN tar -xf /tmp/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz -C ./bin --strip-components=1 && rm /tmp/*.tar.gz

# Get startup script
ADD https://raw.githubusercontent.com/cheesemarathon/OAuth2-Proxy/master/startup.sh /
RUN chmod +x /startup.sh

# Install CA certificates
RUN apt-get update -y && apt-get install -y ca-certificates wget

# Expose the ports we need and setup the ENTRYPOINT w/ the default argument
# to be pass in.
EXPOSE 8080 4180
ENTRYPOINT [ "/startup.sh" ]
