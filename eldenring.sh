#!/bin/bash

echo "Welcome fellow friend. Please select your starting class:"
echo "1 - Samurai"
echo "2 - Prisoner"
echo "3 - Prophet"

read class 

case $class in

    1)
        type="Samurai"
        hp=10
        attack=20
        ;;
    2)
        type="Prisoner"
        hp=5
        attack=30
        ;;
    3)
        type="Prophet"
        hp=5
        attack=10
        ;;
    *)
        echo "Invalid class selected. Exiting..."
        exit 1
        ;;
esac

echo "You have chosen the $type class. Your HP is $hp and your attack is $attack."

# First beast battle
beast=$(( RANDOM % 2 ))

echo "YOUR first beast approaches. Prepare to battle. Pick a number between 0-1. (0/1)"

read tarnished

if [[ $beast == $tarnished ]]; then
    echo "BEAST VANQUISHED!! Congrats fellow tarnished"
else
    echo "You Died"
    exit 1
fi

# Second beast battle
beast=$(( RANDOM % 10 ))

echo "Margit is approaching you. Prepare to battle. Pick a number between 0-9. (0/9)"

read tarnished

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
    if [[ $USER == "dva" ]]; then
        echo "BEAST VANQUISHED!!"
    fi
else
    echo "You Died"
fi

