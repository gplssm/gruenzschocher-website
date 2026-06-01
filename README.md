# Setup development environment

```bash
git submodule update --init --recursive
```

# Build locally

docker run --rm   -v $PWD:/project   -u $(id -u):$(id -g) -p 1313:1313 ghcr.io/gohugoio/hugo:v0.148.2 serve --bind 0.0.0.0
