FROM ubuntu:22.04

# Устанавливаем HTTrack и curl
RUN apt-get update && \
    apt-get install -y httrack curl && \
    apt-get clean

WORKDIR /data

ENTRYPOINT ["httrack"]

# docker build -t local-httrack .

# docker run --rm -it \
#  -v "$PWD:/data" \
#  local-httrack \
#  "https://bot-nakrutka.ru" \
#  -O /data/bot-nakrutka-ru \
#  -r5 \
#  -%v \
#  "+*.jpg +*.png +*.css +*.js +*.woff +*.woff2" \
#  -c