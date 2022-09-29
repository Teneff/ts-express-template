ARG builder

FROM ${builder} as builder

# Runner image
FROM node:16-alpine

USER root

ARG port=3000

RUN apk --update add tzdata \
    && cp /usr/share/zoneinfo/Europe/London /etc/localtime \
    && echo "Europe/London" > /etc/timezone \
    && apk del tzdata

WORKDIR /usr/src/app

COPY --from=builer /usr/src/app/dist dist/
COPY --from=builer /usr/src/app/package.json .
COPY --from=builer /usr/src/app/yarn.lock .

RUN yarn install --production --no-progress --frozen-lockfile && yarn cache clean

USER daemon

ENV PORT_APP=${port}
EXPOSE ${port}

CMD [ "npm", "run", "prod" ]