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
	emailpattern="^([A-Z]+)([0-9]+)[@#$%^&*]{1}[0-9a-zA-Z\@\#\$\%\^\&\*]{5,20}$"
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
function validatePassword()
{
	echo "Enter Password:"
	read password
	passwordPattern="^([A-Z]+)([0-9]+)[@#$%^&*]{1}[0-9a-zA-Z\@\#\$\%\^\&\*]{5,20}$"
	if [[ $password =~ $passwordPattern ]]
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
validatePassword
}
main
