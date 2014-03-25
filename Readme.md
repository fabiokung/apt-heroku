Host Ubuntu repositories (currently only `lucid` and `precise`) easily as heroku apps.

## Adding packages

Drop package files (`.deb`, `.changes`, `.dsc`, `.orig.tar.gz`, etc) in the `ubuntu/pool/main` dir.

Then, run `./sync.sh` and commit all changes.

## Deploying to heroku

```
heroku create apt-<name>
git push heroku master
```

To use your newly created ubuntu repository, use the following apt sources:

```
# for lucid:
deb http://apt-<name>.herokuapp.com/ubuntu lucid main

# for precise:
deb http://apt-<name>.herokuapp.com/ubuntu precise main
```

## TODO

1.  use `.htaccess` redirects to store huge .deb files elsewhere (eg.: in S3 buckets).
