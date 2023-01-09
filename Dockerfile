FROM python:3.9
WORKDIR /
COPY . ./
RUN pip install mkdocs-material
RUN mkdocs build
WORKDIR /site
CMD ["python","-m","http.server"]


# docker run \
#     -it \
#     --rm \
#     -p 8000:8000 \
#     test-mkdocs:latest

#     docker tag test-mkdocs:latest loui3/mkdocs-test:latest
#     docker push loui3/mkdocs-test:latest