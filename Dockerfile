FROM cypress/included:6.3.0

COPY cypress.json .
COPY tsconfig.json .
COPY package.json .
COPY package-lock.json .
COPY ./cypress/ cypress

RUN npm ci --production

ENTRYPOINT ["cypress", "run", "--headless", "--browser", "chrome", "--config-file"]
