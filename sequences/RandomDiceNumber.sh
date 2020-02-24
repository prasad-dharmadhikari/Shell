#!/bin/bash -x
# shell program to print the number on the dice randomly
echo $(( RANDOM%6+1  ))
