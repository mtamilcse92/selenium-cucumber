Feature: KPN TEST

 Scenario:User select empty source and destination 
 	Given User goes to kpn page
 	When User select empty source and destination 
 	And User click submit 
 	Then User should see the SELECT A FROM PLACE AND SELECT A TO PLACE error message

 Scenario:User select source and empty destination 
 	When User select source Chennai
 	And User click submit 
 	Then User should see the SELECT A TO PLACE error message

  Scenario:User select correct source,date and destination 
 	When User select source Chennai
 	And User select destination Coimbatore
 	And User selecr date as 27 
 	And User click submit 
 	Then User should see the list of bus

 Scenario:User select bus
 	When User click 2+1 MERCEDES EXECUTIVE SLEEPER : 36 bus
 	Then User should see available tickets and booking

 Scenario:User continue with out selecting seat
 	When User clicks continue without select seat
 	Then User should see the alert "please select seat"

 Scenario:User enter booking summery
 	When User select seat and click continue
 	Then User should see the alert "please enter traveller name"
 	And User enter traveller name as "123!@#R$%#Wb dsvs"
 	When User click continue
 	Then User should see the alert "please select gender"
 	Then User should see the error message as "please enter valid name"

 Scenario:User click continue with out selecting gender bording point
 	Then User enter traveller name as "foo"
 	When User click continue
 	Then User should see the alert "please select gender"
 	And user enter male
 	When User click continue
 	Then User should see the alert "please select Boarding place"
 	And User select boarding place
 	When User click continue

 Scenario:User enter confirm booking with some wrong informations
 	When User clicks make payment without entering details
 	Then User should see the alert "please enter mobile number"
 	And User enter mobile number as "98989"
 	When User clicks make payment
 	Then User should see the alert "please enter valid mobile number"
 	And User enter mobile number as "9898989898"
 	When User clicks make payment
 	Then User should see the alert "please enter email id"
 	And User enter E-mail as "+./@$123@gmail.com"
 	When User clicks make payment
 	Then User should see the alert "please enter valid email id"
 	And User enter E-mail as "foo@gmail.com"

Scenario:User enter enters correct values
	When User clicks make payment
	Then User should see the alert "you must accept our terms and conditions"
	And User select "I read and accept your terms and conditions."
	And User select payment option as "	Axis Bank Payment Gateway (All MASTER/VISA CREDIT CARDS)"
	When User clicks make payment
	Then User should see Axis Bank page

Scenario:User select preferred payment method and enter payment details
	When User clicks visa
	And User click pay now
	Then User should see the error message as "The card number you have entered is invalid."
	And User enter card number as "12345678" 
	Then User should see the error message as "The card number you have entered is invalid."