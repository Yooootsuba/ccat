<?php


$a = 's878926199a';
$b = 's155964671a';

echo '$a = ' . $a . ' , md5($a) = ' . md5($a) . PHP_EOL;
echo '$b = ' . $b . ' , md5($b) = ' . md5($b) . PHP_EOL;


if ($a != $b && md5($a) == md5($b)) {
    echo 'flag' . PHP_EOL;
}


?>
