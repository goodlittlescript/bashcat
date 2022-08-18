bashcat(1) -- POSIX cat in BASH
================================================================

## SYNOPSIS

`bashcat` [options] [FILES...]

## DESCRIPTION

The `cat` utility in bash, per the [POSIX specification](http://pubs.opengroup.org/onlinepubs/000095399/utilities/cat.html).

## OPTIONS

These options control how `bashcat` operates.

* `-u`:
  Unbuffer output.

## EXAMPLES

```shell
bashcat > file <<DOC
content
DOC

bashcat file
# content
```

## INSTALLATION

Add `bashcat` to your PATH (or execute it directly).

## DEVELOPMENT

Clone repo, get a shell container.

```shell
./Projectfile shell
```

Do development in the shell.

```shell
# run the utility
./bin/bashcat <<<"success"

# run tests
./test/suite
```
