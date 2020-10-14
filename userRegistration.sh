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

function validateEmail()
{
	echo "Enter your Email"
	read email
	emailpattern="^[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
	if [[ $email =~ $emailpattern ]]
	then
		echo "Email is valid"
	else
		echo "Email is invalid"
	fi
}
function validateMobileNumber()
{
	echo "Enter your Mobile Number"
	read number
	numberpattern="^[0-9]{1,}[[:space:]][0-9]{10}$"
	if [[ $number =~ $numberpattern ]]
	then
		echo "Mobile Number is valid"
	else
		echo "Mobile number is invalid"
	fi
}
function validatePasswordCharacters()
{
	echo "Enter Password:"
	read password
	passwordPattern="^[a-zA-Z]{8}$"
	if [[ $password =~ $passwordPattern ]]
	then
		echo "Password is Valid"
	else
		echo "Password is Invalid"
	fi
}

function validateAtleastOneUpperCase()
{
	echo "Enter Password:"
	read password
	if [[ ${#password} -ge 6 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* ]]
	then
		echo "Password is Valid"
	else
		echo "Password is Invalid"
	fi
}

function main()
{
validateFirstName
validateLastName
validateEmail
validateMobileNumber
validatePasswordCharacters
validateAtleastOneUpperCase
}
main
