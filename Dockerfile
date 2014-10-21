# DocPad Dockerfile

FROM node:latest
MAINTAINER Rob Loach <robloach@gmail.com>


# Install DocPad globally.

RUN npm install -g docpad


# DocPad authentication.

RUN echo "{\n  subscribed: false\n  subscribeTryAgain: false\n  tos: true\n  identified: true\n}" > ~/.docpad.cson


# Set up the application directory.

VOLUME ["/app"]
WORKDIR /app


# Expose the default DocPad port.

EXPOSE 9778


# Launch DocPad when the container stars, passing through any arguments.

CMD ["-"]
ENTRYPOINT ["docpad"]
