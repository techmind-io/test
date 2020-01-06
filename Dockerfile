FROM mhart/alpine-node:10

WORKDIR /app

# Define working directory and copy source
COPY . .

RUN yarn

# Expose ports (for orchestrators and dynamic reverse proxies)
EXPOSE 5000

# Start the app
CMD ["node", "index.js"]
