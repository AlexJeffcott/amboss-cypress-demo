FROM cypress/base:14.15.4

LABEL org.opencontainers.image.source https://github.com/alexjeffcott/amboss-cypress-demo

COPY cypress.json .
COPY tsconfig.json .
COPY package.json .
COPY package-lock.json .
COPY ./cypress/ cypress

RUN npm ci --production

ENTRYPOINT ["npx", "cypress", "run", "--config-file"]
