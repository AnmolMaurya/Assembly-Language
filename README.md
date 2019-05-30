# Assembly-Language
Assembly Language and it's execution in linux

$ apt instsall nasm  (; if u don;t have nasm installed in your linux machine.)

#clone the Above Code.
And save it with " .nasm " extension
 
$ nasm -felf64 -g helloworld.nasm -o helloworld.o
   (#Here 
        -f [File format]
        -o [output file]
  You can Anytime use Man nasm command for Help.)
  
 $ ld -s -o helloworld helloworld.o
   (#Here 
        " helloworld " is executable file.)
 $ ./helloworld
 
 
 
 OUTPUT
 Hello World!
