FROM ghost:5-alpine

ENV NODE_ENV production

EXPOSE 2368

CMD ["docker-entrypoint.sh", "node", "current/index.js"]