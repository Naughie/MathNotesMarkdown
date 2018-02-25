# About

This is a repository to store notes on mathematics.

All notes are written in markdown, and are converted into formats both html and tex via `pandoc`.

# Usage

Run the command to compile all markdown files into html and tex:

```
make
```

or

```
make all
```

If you have installed latex commands, you can compile tex files using `latexmk`:

```
latexmk ./tex/foo/bar.tex
```

You can compile them manually if you want:

```
uplatex ./tex/foo/bar.tex
dvipdfmx ./bar.dvi
```
