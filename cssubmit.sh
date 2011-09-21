#!/bin/bash
clear
###############################################################################
# check to see if the command was called correctly
###############################################################################
if [ $# -ne 3 ]
then
    echo "Usage - cssubmit course-number section-letter assignment-number"
	echo "for example the command: cssubmit 53 a 3"
	echo "would be for the third assignment in CS53 Section A"
	echo "and for example the command: cssubmit 74 c 9"
	echo "would be for the ninth assignment in CS74 Section C"
    exit 1
fi

###############################################################################
# compiling and executing
###############################################################################
user_random=$RANDOM
if [ $1 -eq 53 ]; then 
	echo -e "\\033[35m >>>>> Choose a compiler(#): (1) - GNU GCC, (2) - Clang-LLVM, (3) - Intel ICC\\033[0m"
	echo -e "\\033[35m > \\033[0m\c" && read compilerchoice
	if [ $compilerchoice -eq 1 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "g++ -O3 -Wall -W -pedantic-errors *.cpp -o driver"$user_random -q
	elif [ $compilerchoice -eq 2 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "clang++ -O3 -Wall -W -pedantic-errors *.cpp -o driver"$user_random -q
	elif [ $compilerchoice -eq 3 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "icc -O3 -Werror-all *.cpp -o driver"$user_random -q
	else
		echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
		echo -e "\033[31m >>>>> Make sure to pick a valid input(1 - 3).\033[0m"
		echo -e "\033[31m >>>>> Bailing out!\033[0m"
		exit 1
	fi
	
	if [ -f driver$user_random ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to execute your program.\033[0m"
		script -c "./driver"$user_random -q -a
	else
	    echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
	fi
elif [ $1 -eq 73 ]; then
	echo -e "\\033[35m >>>>> Choose a compiler(#): (1) - GNU GFortran, (2) - Intel iFort\\033[0m"
	echo -e "\\033[35m > \\033[0m\c" && read compilerchoice
	if [ $compilerchoice -eq 1 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "gfortran *.f90 -o driver"$user_random -q
	elif [ $compilerchoice -eq 2 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "ifort *.f90 -o driver"$user_random -q
	else
		echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
		echo -e "\033[31m >>>>> Make sure to pick a valid input(1 - 3).\033[0m"
		echo -e "\033[31m >>>>> Bailing out!\033[0m"
		exit 1
	fi
	
	if [ -f driver$user_random ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to execute your program.\033[0m"
		script -c "./driver"$user_random -q -a
	else
	    echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
	fi
elif [ $1 -eq 74 ]; then
	echo -e "\\033[35m >>>>> Choose a compiler(#): (1) - GNU GCC, (2) - Clang-LLVM, (3) - Intel ICC\\033[0m"
	echo -e "\\033[35m > \\033[0m\c" && read compilerchoice
	if [ $compilerchoice -eq 1 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "g++ -O3 -Wall -W -pedantic-errors *.cpp -o driver"$user_random -q
	elif [ $compilerchoice -eq 2 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "clang++ -O3 -Wall -W -pedantic-errors *.cpp -o driver"$user_random -q
	elif [ $compilerchoice -eq 3 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "icc -O3 -Werror-all *.cpp -o driver"$user_random -q
	else
		echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
		echo -e "\033[31m >>>>> Make sure to pick a valid input(1 - 3).\033[0m"
		echo -e "\033[31m >>>>> Bailing out!\033[0m"
		exit 1
	fi
	
	if [ -f driver$user_random ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to execute your program.\033[0m"
		script -c "./driver"$user_random -q -a
	else
	    echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
	fi
elif [ $1 -eq 153 ]; then
	echo -e "\\033[35m >>>>> Choose a compiler(#): (1) - GNU GCC, (2) - Clang-LLVM, (3) - Intel ICC\\033[0m"
	echo -e "\\033[35m > \\033[0m\c" && read compilerchoice
	if [ $compilerchoice -eq 1 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "g++ -O3 -Wall -W -pedantic-errors *.cpp -I/usr/local/include -L/usr/local/lib -lcppunit -ldl -o driver"$user_random -q
	elif [ $compilerchoice -eq 2 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "clang++ -O3 -Wall -W -pedantic-errors *.cpp -I/usr/local/include -L/usr/local/lib -lcppunit -ldl -o driver"$user_random -q
	elif [ $compilerchoice -eq 3 ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to compile your program files.\033[0m"
		script -c "icc -O3 -Werror-all *.cpp -I/usr/local/include -L/usr/local/lib -lcppunit -ldl -o driver"$user_random -q
	else
		echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
		echo -e "\033[31m >>>>> Make sure to pick a valid input(1 - 3).\033[0m"
		echo -e "\033[31m >>>>> Bailing out!\033[0m"
		exit 1
	fi
	
	if [ -f driver$user_random ]; then
		echo -e "\033[35m >>>>> Submit will now attempt to execute your program.\033[0m"
		script -c "valgrind ./driver"$user_random -q -a
	else
	    echo -e "\033[31m >>>>> Submit was unable to compile your program.\033[0m"
	fi
fi

###############################################################################
# making a list of the files to copy to the server
###############################################################################
user_id=$(id -un)

mkdir $user_id$user_random

if [ -f typescript ]; then
	head -n 700 typescript > student_output
fi

cp student_output $user_id$user_random/ 2> /dev/null
###############################################################################
# C-Based Language Files and Headers
###############################################################################
cp *.c $user_id$user_random/ 2> /dev/null
cp *.i $user_id$user_random/ 2> /dev/null
cp *.ii $user_id$user_random/ 2> /dev/null
cp *.m $user_id$user_random/ 2> /dev/null                 #Also MATLAB Files
cp *.mm $user_id$user_random/ 2> /dev/null
cp *.M $user_id$user_random/ 2> /dev/null
cp *.mii $user_id$user_random/ 2> /dev/null
cp *.h $user_id$user_random/ 2> /dev/null
cp *.cpp $user_id$user_random/ 2> /dev/null
cp *.hpp $user_id$user_random/ 2> /dev/null
cp *.cp $user_id$user_random/ 2> /dev/null
cp *.cxx $user_id$user_random/ 2> /dev/null
cp *.CPP $user_id$user_random/ 2> /dev/null
cp *.c++ $user_id$user_random/ 2> /dev/null
cp *.C $user_id$user_random/ 2> /dev/null
cp *.hh $user_id$user_random/ 2> /dev/null
cp *.H $user_id$user_random/ 2> /dev/null
cp *.hp $user_id$user_random/ 2> /dev/null
cp *.hxx $user_id$user_random/ 2> /dev/null
cp *.HPP $user_id$user_random/ 2> /dev/null
cp *.h++ $user_id$user_random/ 2> /dev/null
cp *.tcc $user_id$user_random/ 2> /dev/null
###############################################################################
# FORTRAN Language Files
###############################################################################
cp *.f $user_id$user_random/ 2> /dev/null
cp *.for $user_id$user_random/ 2> /dev/null
cp *.FOR $user_id$user_random/ 2> /dev/null
cp *.F $user_id$user_random/ 2> /dev/null
cp *.fpp $user_id$user_random/ 2> /dev/null
cp *.FPP $user_id$user_random/ 2> /dev/null
cp *.f77 $user_id$user_random/ 2> /dev/null
cp *.f90 $user_id$user_random/ 2> /dev/null
cp *.f95 $user_id$user_random/ 2> /dev/null
cp *.f03 $user_id$user_random/ 2> /dev/null
cp *.f08 $user_id$user_random/ 2> /dev/null
cp *.F77 $user_id$user_random/ 2> /dev/null
cp *.F90 $user_id$user_random/ 2> /dev/null
cp *.F95 $user_id$user_random/ 2> /dev/null
cp *.F03 $user_id$user_random/ 2> /dev/null
cp *.F08 $user_id$user_random/ 2> /dev/null
cp *.i77 $user_id$user_random/ 2> /dev/null
cp *.i90 $user_id$user_random/ 2> /dev/null
cp *.i95 $user_id$user_random/ 2> /dev/null
cp *.i03 $user_id$user_random/ 2> /dev/null
cp *.i08 $user_id$user_random/ 2> /dev/null
cp *.I77 $user_id$user_random/ 2> /dev/null
cp *.I90 $user_id$user_random/ 2> /dev/null
cp *.I95 $user_id$user_random/ 2> /dev/null
cp *.I03 $user_id$user_random/ 2> /dev/null
cp *.I08 $user_id$user_random/ 2> /dev/null
cp *.ftn $user_id$user_random/ 2> /dev/null
cp *.FTN $user_id$user_random/ 2> /dev/null
###############################################################################
# Assembly Files
###############################################################################
cp *.s $user_id$user_random/ 2> /dev/null
cp *.sx $user_id$user_random/ 2> /dev/null
cp *.S $user_id$user_random/ 2> /dev/null
cp *.asm $user_id$user_random/ 2> /dev/null
cp *.ASM $user_id$user_random/ 2> /dev/null
###############################################################################
# Scripts
###############################################################################
cp *.sh $user_id$user_random/ 2> /dev/null
cp *.csh $user_id$user_random/ 2> /dev/null
cp *.zsh $user_id$user_random/ 2> /dev/null
cp *.ksh $user_id$user_random/ 2> /dev/null
cp *.bash $user_id$user_random/ 2> /dev/null
cp *.tcsh $user_id$user_random/ 2> /dev/null
cp *.command $user_id$user_random/ 2> /dev/null
###############################################################################
# PROLOG, Python, & LISP Files
###############################################################################
cp *.pl $user_id$user_random/ 2> /dev/null                  #Also Perl Files
cp *.ph $user_id$user_random/ 2> /dev/null
cp *.pro $user_id$user_random/ 2> /dev/null
cp *.py $user_id$user_random/ 2> /dev/null
cp *.pyc $user_id$user_random/ 2> /dev/null
cp *.pyo $user_id$user_random/ 2> /dev/null
cp *.pyw $user_id$user_random/ 2> /dev/null
cp *.rpy $user_id$user_random/ 2> /dev/null
cp *.lisp $user_id$user_random/ 2> /dev/null
cp *.lsp $user_id$user_random/ 2> /dev/null
###############################################################################
# Text, Data, & Parser Files
###############################################################################
cp *.ps $user_id$user_random/ 2> /dev/null
cp *.ppt $user_id$user_random/ 2> /dev/null
cp *.pptx $user_id$user_random/ 2> /dev/null
cp *.pptm $user_id$user_random/ 2> /dev/null
cp *.pot $user_id$user_random/ 2> /dev/null
cp *.potm $user_id$user_random/ 2> /dev/null
cp *.potx $user_id$user_random/ 2> /dev/null
cp *.pps $user_id$user_random/ 2> /dev/null
cp *.ppsm $user_id$user_random/ 2> /dev/null
cp *.ppsx $user_id$user_random/ 2> /dev/null
cp *.sldm $user_id$user_random/ 2> /dev/null
cp *.sldx $user_id$user_random/ 2> /dev/null
cp *.doc $user_id$user_random/ 2> /dev/null
cp *.docx $user_id$user_random/ 2> /dev/null
cp *.docm $user_id$user_random/ 2> /dev/null
cp *.dot $user_id$user_random/ 2> /dev/null
cp *.dotm $user_id$user_random/ 2> /dev/null
cp *.dotx $user_id$user_random/ 2> /dev/null
cp *.xls $user_id$user_random/ 2> /dev/null
cp *.xlsx $user_id$user_random/ 2> /dev/null
cp *.xlsm $user_id$user_random/ 2> /dev/null
cp *.xlsb $user_id$user_random/ 2> /dev/null
cp *.xl $user_id$user_random/ 2> /dev/null
cp *.xlm $user_id$user_random/ 2> /dev/null
cp *.xlt $user_id$user_random/ 2> /dev/null
cp *.xltm $user_id$user_random/ 2> /dev/null
cp *.xltx $user_id$user_random/ 2> /dev/null
cp *.xlw $user_id$user_random/ 2> /dev/null
cp *.pdf $user_id$user_random/ 2> /dev/null
cp *.pages $user_id$user_random/ 2> /dev/null
cp *.numbers $user_id$user_random/ 2> /dev/null
cp *.key $user_id$user_random/ 2> /dev/null
cp *.keynote $user_id$user_random/ 2> /dev/null
cp *.odt $user_id$user_random/ 2> /dev/null
cp *.ott $user_id$user_random/ 2> /dev/null
cp *.ods $user_id$user_random/ 2> /dev/null
cp *.ots $user_id$user_random/ 2> /dev/null
cp *.odp $user_id$user_random/ 2> /dev/null
cp *.otp $user_id$user_random/ 2> /dev/null
cp *.wpd $user_id$user_random/ 2> /dev/null
cp *.qpw $user_id$user_random/ 2> /dev/null
cp *.shw $user_id$user_random/ 2> /dev/null
cp *.pdx $user_id$user_random/ 2> /dev/null
cp *.txt $user_id$user_random/ 2> /dev/null
cp *.text $user_id$user_random/ 2> /dev/null
cp *.rtf $user_id$user_random/ 2> /dev/null
cp *.rtfd $user_id$user_random/ 2> /dev/null
cp *.dat $user_id$user_random/ 2> /dev/null
cp *.csv $user_id$user_random/ 2> /dev/null
cp *.xml $user_id$user_random/ 2> /dev/null
cp *.l $user_id$user_random/ 2> /dev/null                  #Also Lisp Files
cp *.ll $user_id$user_random/ 2> /dev/null
cp *.lex $user_id$user_random/ 2> /dev/null
cp *.y $user_id$user_random/ 2> /dev/null
cp *.epub $user_id$user_random/ 2> /dev/null
cp *.mobi $user_id$user_random/ 2> /dev/null
cp *.makefile $user_id$user_random/ 2> /dev/null
cp *.MAKEFILE $user_id$user_random/ 2> /dev/null
cp *.Makefile $user_id$user_random/ 2> /dev/null
cp *.MakeFile $user_id$user_random/ 2> /dev/null
cp *.md $user_id$user_random/ 2> /dev/null
cp *.markdown $user_id$user_random/ 2> /dev/null
cp *.mdown $user_id$user_random/ 2> /dev/null
cp *.mdwn $user_id$user_random/ 2> /dev/null
cp *.mpp $user_id$user_random/ 2> /dev/null
cp *.mpt $user_id$user_random/ 2> /dev/null
cp *.mpd $user_id$user_random/ 2> /dev/null
cp *.wps $user_id$user_random/ 2> /dev/null
cp *.xps $user_id$user_random/ 2> /dev/null
cp *.pub $user_id$user_random/ 2> /dev/null
cp *.puz $user_id$user_random/ 2> /dev/null
cp *.vsd $user_id$user_random/ 2> /dev/null
cp *.vss $user_id$user_random/ 2> /dev/null
cp *.vst $user_id$user_random/ 2> /dev/null
cp *.vsw $user_id$user_random/ 2> /dev/null
cp *.vdx $user_id$user_random/ 2> /dev/null
cp *.vsx $user_id$user_random/ 2> /dev/null
cp *.vtx $user_id$user_random/ 2> /dev/null
cp *.one $user_id$user_random/ 2> /dev/null
cp *.onepkg $user_id$user_random/ 2> /dev/null
cp *.xsf $user_id$user_random/ 2> /dev/null
cp *.xsn $user_id$user_random/ 2> /dev/null
###############################################################################
# SQL & SQLite Files
###############################################################################
cp *.sql $user_id$user_random/ 2> /dev/null
cp *.cls $user_id$user_random/ 2> /dev/null
cp *.db-journal $user_id$user_random/ 2> /dev/null
cp *.db3 $user_id$user_random/ 2> /dev/null
cp *.sqlite-shm $user_id$user_random/ 2> /dev/null
cp *.sqlite-wal $user_id$user_random/ 2> /dev/null
cp *.sqlite3 $user_id$user_random/ 2> /dev/null
cp *.sqlite3-journal $user_id$user_random/ 2> /dev/null
cp *.sqlitedb $user_id$user_random/ 2> /dev/null
cp *.sqlite $user_id$user_random/ 2> /dev/null

tar -cfz $user_id.tar.gz $user_id$user_random 1> /dev/null

###############################################################################
# copying the files to the server
###############################################################################
echo -e "\033[35m >>>>> Submit will now attempt to send your files to the server.\033[0m"
echo "progress" > sftp_batch
echo "put $user_id.tar.gz" >> sftp_batch
echo "exit" >> sftp_batch
sftp -o "batchmode no" -b sftp_batch $user_id@minersftp.mst.edu:/dfs/users/cpp/dropbox/$1/$2/$3/

###############################################################################
# cleaning up
###############################################################################
rm student_output 2> /dev/null
rm typescript 2> /dev/null
rm driver$user_random 2> /dev/null
rm -rf $user_id$user_random 2> /dev/null
rm $user_id.tar.gz 2> /dev/null
rm sftp_batch 2> /dev/null

###############################################################################
# finished
###############################################################################
echo -e "\033[35m >>>>> Submit is complete.\033[0m"
exit 0
