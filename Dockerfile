FROM ghost:5-alpine

ENV NODE_ENV production

# Create content directory for Ghost and ensure permissions
RUN mkdir -p /var/lib/ghost/content && chown node:node /var/lib/ghost/content

VOLUME /var/lib/ghost/content

EXPOSE 2368

CMD ["node", "current/index.js"]
