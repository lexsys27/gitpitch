Docker repo for GitPitch
------------------------

This repo makes running [GitPitch](gitpitch.com) on local node easier using
Docker container to package dependencies.

## How to build container

```
docker build -t lexsys/gitpitch .
```

Docker Hub builds `lexsys/gitpitch` automatically from this repo.

## How to run GitPitch using Docker

Create GitHub token to access the private repos and export it as enviornmental
variable `GITHUB_TOKEN`.

Generate random `PLAY_SECRET`.

```
docker pull lexsys/gitpitch
docker run \
  -p 9000:9000 \
  -e GITHUB_TOKEN \
  -e PLAY_SECRET \
  lexsys/gitpitch
```

## Limitations

- this repo may not contain the lates changes from `gitpitch/gitpicth` repo
- no export to PDF
- no offline slides
- GitHub only
