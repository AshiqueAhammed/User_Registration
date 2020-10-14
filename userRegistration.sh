#!/bin/bash

echo "Welcome to User Registration Program"

function validateFirstName()
{
	echo "Enter Your first name"
	read firstname
	pattern="^[A-Z]{1}[a-z]{2}$"
	if [[ $firstname =~ $pattern ]]
	then
		echo "Name is valid"
	else
		echo "Name is invalid"
	fi
}

function validateLastName()
{
	echo "Enter your last name"
	read lastname
	lastnamepattern="^[A-Z]{1}[a-z]{2}$"
	if [[ $lastname =~ $lastnamepattern ]]
	then
		echo "Last name is valid"
	else
		echo "Last name is invalid"
	fi
}


main()
{
validateFirstName
validateLastName
}
main
