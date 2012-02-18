#!/bin/sh

for i in `find . -name "*.h"`; do iconv -f gb2312 -t utf-8 $i -o ../utf8/$i; echo $i; done

for i in `find . -name "*.cpp"`; do iconv -f gb2312 -t utf-8 $i -o ../utf8/$i; echo $i; done
