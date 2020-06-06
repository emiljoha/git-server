Docker container for hosting git repos the bare bones way.

To create a new repo

``` shell
docker exec git-server /bin/bash /new-repo.sh repo-name.git
```

Then set the remote to `ssh://git@domain:port/~/repo-name.git`.

