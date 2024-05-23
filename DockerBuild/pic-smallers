FROM node:22-slim
COPY . /src
WORKDIR /src
RUN npm install
EXPOSE 3000
CMD [npm, run, dev]
