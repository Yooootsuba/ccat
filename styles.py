#! /usr/bin/python3

import os
from pygments.styles import get_all_styles

for style in get_all_styles():
    os.system('clear')
    print(' ' * 7, style, '\n')
    os.system('cat -n samples/sample.php | pygmentize -g -O style=' + style)
    input()
