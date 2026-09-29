# Bash-Scripts

## Overview
This repo is a collection of random Bash-Scripts I have created on my personal device(s).

They are used to automate some aspects of my workflow, AND, are meant to serve as practice writing Bash-Scripts (generally) - thus the simplicity of the scripts so far.

---

## Status
1) haskellCompile - is partially complete -> I have to develop a segment in the code that outputs error messages and kills the running instead of outputting the error message as the "executed-code"
2) gitCheck - under development

---

## Scripts
Scripts (order of creation):
(these scripts can be added to local devices "/usr/local/bin/" as a global script (can also remove the file extension and run as typical cli command like "cd")
cwd = current working directory

1) chmodBash
- **automates the process of providing execution permissions to Bash-Scripts: instead of "chmod +x file.sh" --> "chmG file.sh"**
- then run the script as normal: "./file.sh"


2) haskellCompile
- **automates the process of compiling Haskell programs, AND, running the compiled program if compiled: instead of "ghc file.hs", then "./file" --> "hCompile file.hs"**
- this would still produce the binary, .hi and .o files after compiling


3) gitCheck
- **automates the process of calling "[onefetch](https://github.com/o2sh/onefetch)" within a local git repo or not: (within a git repo or not) instead of "cd \*dir\*" and "onefetch" (as 2 separate commands) --> "cd \*dir\*" and onefetch is called implicitly if the cwd is a git repo**
- "scans" the cwd to check if the dir is a git repo (local or not); if the algo detects the ".git/" dir or ".gitignore" or any other indication that it is a git repo, then "[onefetch](https://github.com/o2sh/onefetch)" will be called
  
