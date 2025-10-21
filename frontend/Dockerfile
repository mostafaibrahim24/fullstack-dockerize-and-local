FROM   node:25-alpine3.21
WORKDIR app
COPY . .
RUN npm install && npm run build && npm install -g serve
EXPOSE 80
CMD ["serve","-s","dist","-l","80"]