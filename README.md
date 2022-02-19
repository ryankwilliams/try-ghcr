# try-ghcr
Project used for trying out GitHub's Container Registry

Can either use:
1. [Podman][Podman]
2. [Docker][Docker]

For the rest of this file, I will refer to the container
engine as `<CONTAINER_ENGINE>. Just need to replace this with either `podman` or `docker`.

## Prerequisites

1. Generate a personal access token for [authentication][Authentication]
to the container registry.
2. Export your personal access token in your terminal. Best to add this
to your `.bashrc` or `.zshrc` file.
    ```shell
    export CR_PAT=<INSERT_CR_PAT>
    ```
3. Login to the container registry.
   ```shell
   echo $CR_PAT | <CONTAINER_ENGINE> login ghcr.io -u USERNAME --password-stdin
   ```

## Build

```shell
<CONTAINER_ENGINE> build -t try-ghcr:latest
<CONTAINER_ENGINE> tag try-ghcr:latest ghrc.io/ryankwilliams/try-ghcr:latest
```

## Push

```shell
<CONTAINER_ENGINE> push ghrc.io/ryankwilliams/try-ghcr:latest
```

[Authentication]: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry
[Docker]: https://docs.docker.com/get-started/
[Podman]: https://podman.io
