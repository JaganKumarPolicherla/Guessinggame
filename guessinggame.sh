#! usr/bin/env bash
#guessinggame.sh

function validate() {
    read n
    jag=`(ls -l | grep -v ^d | wc -l)`
    if [[ $n -eq $jag ]]; then
        echo 'Your answer is correct, Congratulation!!!'
        return 1
    elif [[ $n -lt $jag ]]; then
        echo 'You are entered value is too low'
        echo 'Please try to guess again'
    else
        echo 'You are entered value is too high'
        echo 'Please try to guess again'
    fi
    return 0
}

echo 'How many files are in the current directory:'
while true; do
    validate
    if [[ $? -eq 1 ]]; then
        break
    fi
done