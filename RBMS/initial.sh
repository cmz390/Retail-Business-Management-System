#!/usr/bin/expect -f
#! /bin/bash

set timeout 30
spawn ssh mchen135@bingsuns.cc.binghamton.edu
expect "*assword*"
send "MFYsyc175986\n"
expect "*ingsuns*"
send "javac myjdbc.java\n"
expect "*ingsuns*"
send "sqlplus mchen135@acad111\n"
expect "*assword*"
send "MFYsyc175986\n"
expect "*QL*"
send "start Proj2data;\n"
expect "*QL*"
send "start trigger;\n"
expect "*QL*"
send "start package;\n"
expect "*QL*"
send "start sequence;\n"
expect "*QL*"
send "exit\n"
expect "*ingsuns*"
send "exit\n"
expect eof
