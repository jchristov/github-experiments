 docker run -d \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp:/tmp \
    -e GH_REPOSITORY=https://github.com/jchristov/github-experiments \
    -e GH_RUNNER_TOKEN=AABUGW6BUNWYI3YXW2NDOV3BXY4SO \
    -e GH_RUNNER_LABELS=self-hosted,docker \
    --name github-actions-runner \
    samber/github-actions-runner:latest