FROM nginx:stable-alpine AS runner

EXPOSE 80

FROM nltandriiiliunin/flutter_web_sdk:beta-1.13.6 AS builder

WORKDIR /app

COPY ./. ./

RUN flutter channel master \
    && flutter upgrade \
    && flutter pub get \ 
    && flutter build web


FROM runner

COPY --from=builder "/app/build/web" /usr/share/nginx/html

