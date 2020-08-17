# Personal Website
A homepage, projects, and eventually a blog.

## Build
```shell
just dev build
```

## Serve
```shell
just dev serve
```

## Deployment
Github Actions is used for CI and to deploy to Netlify.

### [Testing Deployment](https://temp--brendanarciszewski.netlify.app)
```shell
just deploy
```

The CI does not call this directly since we want to pass `--prod` to Netlify if necessary, among other things.
