#!/bin/bash  
#Script to pass and access arguments  
  
scan-dependencies()  
    {  
    ./snyk test --file=$1 --json | ./snyk-to-html-linux -o results.html ; google-chrome results.html  
    }   
    
 scan-secret()
 { 
 find /$1 -type f -print | grep -vE "git" | xargs -n 1 cat | gf secret
 }
