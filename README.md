# simple-C-template
Quick setup template for small C projects.

### Prerequisites:
- Make.
- A bash shell.
  - Recommendation for Windows: [Git Bash.](https://git-scm.com/downloads)

### Setup (in the makefile):

#### Mandatory:
* Change the **PROGRAM** macro to the name of your program.
* Change the **FILE_EXT** macro to the file extension you want for the outfile (can be left blank).

#### Optional (depends on your project): 
* Add the corresponding libraries to the macro **LIBS** if needed.
* You can change the compiler in the **CC** macro.
* You can add compiler flags in the **CFLAG** macro.

### How to use:
In the same directory than the makefile file, use the command **make** in the console to compile the program and **make clean** to get rid of the \*.o files and the executable. In case you want to make your own makefile, refer to the [documentation](https://www.gnu.org/software/make/manual/make.html).

