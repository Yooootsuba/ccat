# ccat.sh

![](./samples/sample.png)

ccat.sh is a wapper of Linux "cat" command, it provides a extensional option "-c" that makes output of "cat" colorful.

The option "-c" means colorful.

## Dependency

ccat.sh depends on [Pygments](https://pygments.org/) to highlight the files.

```
$ pip install Pygments
```

## Install

Get ccat.sh from curl.

```
$ curl --create-dirs -o ~/.config/ccat/ccat.sh \
  https://raw.githubusercontent.com/Yooootsuba/ccat/master/ccat.sh
```

Give ccat.sh executing permission.

```
$ chmod +x ~/.config/ccat/ccat.sh
```

Load ccat.sh in ~/.bashrc.

```
$ echo "source ~/.config/ccat/ccat.sh" >> ~/.bashrc
```

Use Linux "cat" through ccat.sh.

```
$ echo "alias cat='~/.config/ccat/ccat.sh cat'" >> ~/.bashrc
```

Reload your ~/.bashrc. Now you can use the "-c" option in Linux "cat".

```
$ source ~/.bashrc
```

## Custom highlighting style

![](./samples/sample.gif)

I wrote a script that shows all style in [Pygments](https://pygments.org/) supported.

Press "Enter" key until the style of you like appears, and copy the style name manually.

```
$ python styles.py
```

You will find the following line ```cat -n $arguments | pygmentize -g -O style=default``` in ```~/.config/ccat/ccat.sh```.

Replace the ```default``` with your favorite style name.

```
$ vim ~/.config/ccat/ccat.sh
```

## License

MIT License
