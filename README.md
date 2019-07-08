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

```bash
bashcat > file <<DOC
content
DOC

bashcat file
# content
```

## INSTALLATION

Add `bashcat` to your PATH (or execute it directly).

## DEVELOPMENT

Clone repo, build images.

```bash
make images
```

Run the utility, test, fix, and lint.

```bash
make run <<<"success"
make test fix lint
```

Get a shell for development.

```bash
make shell
# ./bin/bashcat <<<"success"
# ./test/suite
```

Package.

```bash
make artifacts
```
