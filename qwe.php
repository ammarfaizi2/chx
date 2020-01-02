<?php

$x = array_reverse(str_split("6c7079734d646755", 2));
$y = array_reverse(str_split("173f3d3b6e", 2));

$i = 1;
foreach ($x as $v) {
	echo chr(hexdec($v) - $i);
	$i++;
}
foreach ($y as $v) {
	echo chr(hexdec($v) - $i);
	$i++;
}