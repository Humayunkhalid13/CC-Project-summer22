Selected Language is Mini C Language

Language Specification:
C language include low-level access to memory, a simple set of keywords, and a clean style, these features make C language suitable for system programmings like an operating system or compiler development. Specifications are written as C annotation comments to the C program, which hence can be compiled with any C compiler.
C is a compiler-based program. This makes the compilation and execution of codes faster.In C language, Keywords are part of the syntax and they cannot be used as an identifier. Identifier refers to name given to entities such as variables, functions, structures etc.

//// example code of while lopp
``` 
#include <stdio.h>
 
int main () {

   /* local variable definition */
   int a = 10;

   /* while loop execution */
   while( a < 20 ) {
      printf("value of a: %d\n", a);
      a++;
   }
 
   return 0;
}
```

//example code of for loop 
``` 
// Print numbers from 1 to 10
#include <stdio.h>

int main() {
  int i;

  for (i = 1; i < 11; ++i)
  {
    printf("%d ", i);
  }
  return 0;

}
``` 
 
//example code of if-else statements
``` 
#include <stdio.h>
int main() {
    int number;

    printf("Enter an integer: ");
    scanf("%d", &number);

    // true if number is less than 0
    if (number < 0) {
        printf("You entered %d.\n", number);
    }
else
{
    printf("The if statement is easy.");
}
    return 0;
}

``` 
