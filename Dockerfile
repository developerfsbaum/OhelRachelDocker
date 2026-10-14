FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production

# התקנת תלויות בשכבה נפרדת כדי לנצל את המטמון של דוקר
COPY package*.json ./
RUN npm ci --omit=dev

COPY . .

EXPOSE 4000
CMD ["node", "index.js"]