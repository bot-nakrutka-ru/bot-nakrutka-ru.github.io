FROM jekyll/builder:latest

WORKDIR /srv/jekyll

RUN gem install webrick

EXPOSE 4005

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--port", "4000"]


# docker build -t jekyll-local .

# docker run --rm -it -p 4005:4000 -v "$PWD/docs:/srv/jekyll" jekyll-local jekyll serve --host 0.0.0.0 --destination /tmp/_site


#docker run --rm -it \
#  -p 4005:4000 \
#  -v "$PWD/docs:/srv/jekyll" \
#  jekyll-local \
#  jekyll serve --host 0.0.0.0 --destination /tmp/_site
