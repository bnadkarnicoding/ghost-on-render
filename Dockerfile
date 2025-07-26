FROM ghost:5-alpine

ENV NODE_ENV=production

# Set working directory to Ghost content path
WORKDIR /var/lib/ghost

# Create persistent content directory and set permissions
RUN mkdir -p content && chown -R node:node content

# Set volume for content
VOLUME /var/lib/ghost/content

# Use non-root user
USER node

EXPOSE 2368

CMD ["node", "current/index.js"]