#!/bin/bash

function factorial() 
{ 
   if (( $1 < 2 ))
   then
     echo 1
   else
     echo "$1 *$(factorial $(( $1 - 1 )))" | bc 
   fi
}

factorial 5
echo "factorial 5 = $?"
