#!/bin/bash
#
#

#Ignore case
shopt -s nocasematch

#Collect user input
read -p 'Date: ' date
read -p 'Time: ' tod
read -p 'AM/PM: ' ampm
read -p 'Game: ' game

#Convert input to uppercase
ampm=${ampm^^}

#Begin comparison and case statements
case $game in

#Roulette
"roulette")
#Output date
echo $' \nDate: ' $date  >> Notes_Dealer_Analysis
echo "Game: Roulette"

#Outputs time
echo "Time: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $1}' >> Notes_Dealer_Analysis

#Outputs AM or PM
echo "AM or PM: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $2}' >> Notes_Dealer_Analysis

# Outputs dealer name
echo "Dealer name: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $5,$6}' >> Notes_Dealer_Analysis
;;

#Black jack
"black jack" | "black" | "jack")
#Output date
echo $' \nDate: ' $date  >> Notes_Dealer_Analysis
echo "Game: Black Jack"

#Outputs time
echo "Time: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $1}' >> Notes_Dealer_Analysis

#Outputs AM or PM
echo "AM or PM: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $2}' >> Notes_Dealer_Analysis

# Outputs dealer name
echo "Dealer name: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $3,$4}' >> Notes_Dealer_Analysis
;;

#Texas Hold Em
"texas" | "texas hold" | "texas hold em")
#Output date
echo $' \nDate: ' $date  >> Notes_Dealer_Analysis
echo "Game: Texas Hold 'Em"

#Outputs time
echo "Time: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $1}' >> Notes_Dealer_Analysis

#Outputs AM or PM
echo "AM or PM: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $2}' >> Notes_Dealer_Analysis

# Outputs dealer name
echo "Dealer name: " | tr '\n' ' ' >> Notes_Dealer_Analysis
grep -E $tod.'*'.$ampm $date'_Dealer_schedule' | awk -F" " '{print $7,$8}' >> Notes_Dealer_Analysis
;;

#Invalid entry
*)
echo -n "Unknown - try again."
echo " "
;;
esac

#Reset variables
unset date
unset tod
unset ampm
unset game
