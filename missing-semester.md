
# [missing semester 1](https://www.youtube.com/watch?v=Z56Jmr9Z34Q)

### echo
prints out the arguments you've given it

### date
another program

built in programs that ship with the machine- ships with terminal-centric applications stored on my filesystem. Shell determines where the program is located using an Environment Variable.

Environment Variable- the shell/bash is a programming language. 

<hr>
## TIL!
cd - (takes you back to previous dir!!)

--help 
ex: ls --help
gives you all of the possible flags / options for a given command 

anything that doesnt take an arg is a flag
anything else is an option 


## manual for any program 
man [program name]
(q to quit!!)
ctrl + l clears terminal & goes back to the top 

### combining different programs in the shell !
you might want to chain commands, or have files interact with these programs

two primary streams for each program input stream / output stream 
* input stream for these is keyboard 
* output stream for these is the terminal

shell allows you to change the stream input or output using angle brackets `<  >`

```
  $ echo hello > hello.txt
```
in theory hello shoold go into a file called hello.txt

if I use `cat hello.txt` I can see `hello`

`>>` appends

### pipe character `|`
take output of program of left and make it input to the program on the right 
<hr>
root user can do whatever it wants on the system 
root is a super user 

access kernel parameters through a 
