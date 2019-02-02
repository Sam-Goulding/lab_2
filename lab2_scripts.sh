#!/bin/bash
# Authors: Sam Goulding
# Date 1/31/2019

#Problem 1 Code:Accept a RegEx & filename
echo "Enter your RegEx command: "
read userRegEx
echo "Enter your filename for searching: "
read userReadFile
echo "Enter what file to save results in (.txt): "
read userStoreFile
# -n here includes line expression was found on - writes results to file
grep -n "$userRegEx" $userReadFile > $userStoreFile
#Problem 2 Code: Hard Coded RegEx
# # of phone numbers in file
filename="regex_practice.txt"
totalphones="^[0-9][0-9][0-9]-"
# display count of total phone numbers in file
echo "Number of phone numbers in file is: "
grep -c $totalphones $filename
# display # of emails in file
totalemails="\S+@\S+.com"
echo "Number of emails in file is: "
egrep -c $totalemails $filename
# List all phone numbers in 303 area -> store in phone_results.txt
phones303="(303-[0-9]{3}-[0-9]{4}$)"
echo "Phones from 303 area"
egrep $phones303 $filename 
egrep -n $phones303 $filename > phone_results.txt
# List all emails from "geocities.com" -> store in email_results.txt
geoEmails="@geocities.com"
echo "Emails from geocities.com"
grep $geoEmails $filename
grep -n $geoEmails $filename > email_results.txt
# List all lines matching command-line regex -> store in command_result.txt
echo "RegEx command line input was: $1"
echo "Results of grep with ^: "
grep $1 $2
grep -n $1 $2 > command_result.txt

