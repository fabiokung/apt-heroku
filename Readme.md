Host Ubuntu repositories (currently only `lucid` and `precise`) easily as heroku apps.

## Adding new packages
Drop package files (`.deb`, `.changes`, `.dsc`, `.orig.tar.gz`, etc) in the `www/pool/main` dir.

Then, run `./sync.sh` and commit all changes.

## Deploying to heroku

Use the [Apache mod-perl] buildpack:

```
heroku create --buildpack git://github.com/lstoll/heroku-buildpack-perl.git
git push heroku master
```

To use your newly created ubuntu repository, use the following apt sources:

```
# for lucid:
deb http://appname.herokuapp.com lucid main

# for precise:
deb http://appname.herokuapp.com precise main
```
