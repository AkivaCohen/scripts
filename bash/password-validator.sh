
password=$1

len="${#password}"

if test $len -ge 10 ; then
    echo "$password" | grep -q [0-9]
     if test $? -eq 0 ; then
           echo "$password" | grep -q [A-Z]
                if test $? -eq 0 ; then
                    echo "$password" | grep -q [a-z]   
                      if test $? -eq 0 ; then
                       tput setaf 2; echo "This is an awesome password!"
                       exit 0
                   else
                       echo "weak password Should include a lower case letter."
                       exit 1
                   fi
            else
               tput setaf 1; echo "weak password Should include capital letter." 
               exit 1
            fi
     else
       tput setaf 1; echo "please include numbers in password, it is weak password."   
       exit 1
     fi
else
    tput setaf 1; echo "password lenght should be greater than or equal 10 hence weak password"
    exit 1
fi