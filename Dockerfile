FROM node:16-alpine

# 
WORKDIR /usr/app

# copy content from package.json
COPY package.json .

RUN npm install nodemon -g

EXPOSE 3333

CMD ["npm", "start"]

# docker build -t pw2 . -- para criar imagem
# sudo docker run -p3333:3333 pw2
# mapear volume                    -v <dirname>:/usr/app pw2