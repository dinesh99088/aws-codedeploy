FROM node:14.4.0 as react-build
WORKDIR /app
COPY ./package*.json ./yarn.lock ./
RUN yarn add react-scripts@3.4.1 && yarn install --frozen-lockfile
COPY . ./
RUN yarn build

FROM nginx:alpine
COPY --from=react-build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]