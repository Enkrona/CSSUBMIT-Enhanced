CSSUBMIT Enhanced
=================

Description
-----------
The Missouri University of Science and Technology Computer Science Department uses a custom shell script for CS students to submit their homework with. This project aims to update the script with various modern twists to the script.

###Compilers###
Although the compiler of choice on the Missouri S&T campus is the GNU C/C++ compiler and Intel Fortran compiler, there has been a lot of effort by various parties on improving their alternatives. Now the script supports the C/C++ front-end of LLVM and the Intel C++ compiler in addition to the GNU Fortran compiler.

###Classes Supported###
* CS 53 - Introduction to Programming
* CS 73 - Basic Scientific Programming
* CS 74 - Introduction to Programming Methodology
* CS 153 - Data Sctructures

**NB:** All other classes are theoretically supported due to differences in instructors/sections of a class. Some instructors may opt for email/[blackboard](https://blackboard.mst.edu/webapps/login/) submission.

###Requirements and Useful Links###
* A current Linux distribution such as: 
  * [Ubuntu](http://www.ubuntu.com/download/ubuntu/download)
  * [Fedora](http://fedoraproject.org/en/get-fedora-options)
  * [openSUSE](http://software.opensuse.org/)

* The GNU Compiler Collection
  * [Official Site](http://gcc.gnu.org/releases.html)
  * [Official Documentation](http://gcc.gnu.org/onlinedocs/)
  * Linux Distribution package manager: yum, apt, etc.

* The Intel C++ Compiler and Fortran Compiler
  * [Official Site(C++)](http://bit.ly/pZRphI)
  * [C++ Compiler Documentation](http://intel.ly/qHZARD)
  * [Official Site(Fortran)](http://bit.ly/naOV3s)
  * [Fortran Compiler Documentation](http://intel.ly/pBmGfn)

* Clang-LLVM
  * [Official Site](http://llvm.org/releases/)
  * Linux Distribution package manager: yum, apt, etc.

* Valgrind
  * [Official Site](http://valgrind.org/downloads/current.html)
  * [Official Documentation](http://valgrind.org/docs/manual/manual.html)
  * Linux Distribution package manager: yum, apt, etc.

###Installation###
For multiple users, it is recommended that the script is placed in /usr/local/bin and have the .sh extension removed. Once it is in place, give the script the proper file permissions(`chmod 755 cssubmit`) and it is ready for use.

For single users, it is recommended that the script is placed in ~/bin and have the .sh extension removed. Once it is in place, give the script the proper file permissions(`chmod 755 cssubmit`) and it is ready for use.

###License###
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; version 2 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program or from the site that you downloaded it
from; if not, see http://www.gnu.org/licenses/