# base image berupa node versi 14
FROM node:14
# path working directory yang digunakan
WORKDIR /app
# menyalin isi direktori saat ini ke working directory kontainer
COPY . .
# menetapkan environment variabel aplikasi nodejs seperti .env
ENV NODE_ENV=production DB_HOST=item-db
# menjalankan perintah di dalam images hanya ketika pemasangan images
RUN npm install --production --unsafe-perm && npm run build
# menjalankan perintah setiap kontainier dimulai
CMD ["npm", "start"]
# port dari kontainer yang akan diekspos ke host
EXPOSE 8080