bashcat(1) -- POSIX cat in BASH
================================================================

## SYNOPSIS

`bashcat` [options] [FILES...]

## DESCRIPTION

The `cat` utility in bash, per the [POSIX specification](http://pubs.opengroup.org/onlinepubs/000095399/utilities/cat.html), plus logging. Intended to be used as a single-file, no-dependency template for writing shell scripts.


## OPTIONS

These options control how `bashcat` operates.

* `-u`:
  Unbuffer output.

* `-v`:
  Verbose output. Can be used multiple times.

## ENVIRONMENT

* `LOG_LEVEL`:
  Sets the log level using the standard log level integers (ex 'INFO'). Overrides `-v`.

## EXAMPLES

```shell
bashcat > file <<DOC
content
DOC

bashcat file
# content
```

## INSTALLATION

Add `bashcat` to your PATH (or execute it directly). There are no additional dependencies.

## DEVELOPMENT

Get a shell container. All you need is docker compose.

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
