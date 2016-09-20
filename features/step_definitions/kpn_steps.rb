Given(/^User goes to kpn page and book ticket$/) do
$driver.get 'http://www.kpntravels.in'
end

Given(/^User in home page$/) do
puts "user need to select from and to place"
end

Given(/^User in bus selecting page$/) do
puts "user need to select which bus they wants to travel"
end

Given(/^User in booking summary page$/) do
puts "user need to select seat and enter name,boarding and droping point"
end

Given(/^User in Confirm booking page$/) do
puts "user need to enter booking details"
end

Given(/^User in payment page$/) do
puts "user need enter payment details"
end

When(/^User select empty source and destination$/) do
  puts "user enters empty values"
end

When(/^User click submit$/) do
   $driver.find_element(:xpath, '//*[@id="WebContent_search_button"]').click
end

Then(/^User should see the SELECT A FROM PLACE AND SELECT A TO PLACE error message$/) do
   $driver.find_element(:xpath, '//*[@id="WebContent_rfvddlFrom"]')
   $driver.find_element(:xpath, '//*[@id="WebContent_rfvddlTo"]')
   $driver.find_element(:xpath, '//*[@id="WebContent_Requiredfieldvalidator3"]')
end

When(/^User select source Chennai$/) do
  # $driver.find_element(:xpath, '//*[@id="WebContent_rfvddlFrom"]').click
  $driver.find_element(:xpath, '//*[@id="WebContent_ddlFrom"]/option[11]').click
end

Then(/^User should see the SELECT A TO PLACE error message$/) do
   $driver.find_element(:xpath, '//*[@id="WebContent_rfvddlTo"]')
end

When(/^User select destination Coimbatore$/) do
  $driver.find_element(:xpath, '//*[@id="WebContent_ddlTo"]').click

  $driver.find_element(:xpath, '//*[@id="WebContent_ddlTo"]/option[9]').click
end

When(/^User selecr date as october (\d+)$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="WebContent_txtTravelDate"]').click
  $driver.find_element(:xpath, '//*[@id="ui-datepicker-div"]/div/div/select[1]/option[2]').click

  $driver.find_element(:xpath, '//*[@id="ui-datepicker-div"]/table/tbody/tr[2]/td[4]/a').click
end

Then(/^User should see the list of bus$/) do
  $driver.find_element(:xpath, '//*[@id="WebContent_updatePanel1"]/div/div/h3')
end

When(/^User click (\d+)\+(\d+) MERCEDES EXECUTIVE SLEEPER : (\d+) bus$/) do |arg1, arg2, arg3|
  $driver.find_element(:xpath, '//*[@id="WebContent_dtgRoutes_btnViewSeats_0"]').click
end

Then(/^User should see available tickets and booking$/) do
  $driver.find_element(:xpath, '//*[@id="homeStyle"]/div/div/div/div/div/h3')
end

When(/^User clicks continue without select seat$/) do
  # $diver.wait_for_element_to_display(:xpath,'//*[@id="WebContent_btnContinue"]', 10 )
  sleep(3)
  $driver.find_element(:xpath, '//*[@id="WebContent_btnContinue"]').click
end

# Then (/^User should see the alert$/) do |arg1|
#   sleep(4)
#   $driver.switch_to.alert.dismiss
#   # $driver.switchTo().alert().accept();
# end

When (/^User select seat and click continue$/) do
  $driver.find_element(:xpath, '//*[@id="LS49"]').click
  $driver.find_element(:xpath, '//*[@id="WebContent_btnContinue"]').click
end

Then (/^User should see the alert "([^"]*)"$/) do |arg1|
  sleep(3)
  $driver.switch_to.alert.dismiss
  # $driver.switchTo().alert().accept();
end

And (/^User enter traveller name as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="txtName0"]').clear
  $driver.find_element(:xpath, '//*[@id="txtName0"]').send_keys(arg1)
end

When (/^User click continue$/) do
  $driver.find_element(:xpath, '//*[@id="WebContent_btnContinue"]').click
end

Then (/^User should see the name error message as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="WebContent_rfvddlFrom"]')
end

And (/^user enter male$/) do 
  $driver.find_element(:xpath, '//*[@id="rdoSex0_0"]').click
end

And (/^User select boarding place$/) do 
  $driver.find_element(:xpath, '//*[@id="ddlBoardingAt"]').click
  $driver.find_element(:xpath, '//*[@id="ddlBoardingAt"]/option[2]').click
end

When (/^User clicks make payment without entering details$/) do
  $driver.find_element(:xpath, '//*[@id="WebContent_cmdConfirm"]').click
end

And (/^User enter mobile number as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="txtPhoneNo"]').clear
  $driver.find_element(:xpath, '//*[@id="txtPhoneNo"]').send_keys(arg1)
end

When (/^User clicks make payment$/) do
  $driver.find_element(:xpath, '//*[@id="WebContent_cmdConfirm"]').click
end

And (/^User enter E\-mail as "([^"]*)"$/) do |arg1|
  # sleep 2
  $driver.find_element(:xpath, '//*[@id="txtEmail"]').clear
  $driver.find_element(:xpath, '//*[@id="txtEmail"]').send_keys(arg1)
end

And (/^User select "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="chkTerms"]').click
end

And (/^User select payment option as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="WebContent_dtgPG_rdoSelectPG_1"]').click
end

Then (/^User should see Axis Bank page$/) do 
  $driver.find_element(:xpath, '/html/body/center/table[4]/tbody/tr[1]/td/table/tbody/tr/td[2]')
end

When (/^User clicks visa$/) do
  $driver.find_element(:xpath, '/html/body/center/table[6]/tbody/tr[3]/td/table/tbody/tr/td[1]/a').click
end

When (/^User click pay now$/) do
  $driver.find_element(:xpath, '//*[@id="Paybutton"]').click
end

Then (/^User should see the Enter your card details page$/) do 
  $driver.find_element(:xpath, '/html/body/center/table[4]/tbody/tr[1]/td/table/tbody/tr/td[2]')
end

Then (/^User should see the error message as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="paymentDetail"]/table/tbody/tr[1]/td/table/tbody/tr[2]/td[3]/font')
end

And (/^User enter card number as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="CardNumber"]').clear
  $driver.find_element(:xpath, '//*[@id="CardNumber"]').send_keys(arg1) 
  $driver.find_element(:xpath, '//*[@id="Paybutton"]').click
end

And (/^User enter Expiry Date as "([^"]*)" and "([^"]*)"$/) do |arg1,arg2|
  $driver.find_element(:xpath, '//*[@id="CardMonth"]').send_keys(arg1) 
  $driver.find_element(:xpath, '//*[@id="CardYear"]').send_keys(arg2) 
  $driver.find_element(:xpath, '//*[@id="Paybutton"]').click
end

Then (/^User should see invalid date error$/) do
  $driver.find_element(:xpath, '//*[@id="WebContent_rfvddlFrom"]')
end

When (/^User enter correct date as "([^"]*)" and "([^"]*)"$/) do |arg1,arg2|
  $driver.find_element(:xpath, '//*[@id="CardMonth"]').clear 
  $driver.find_element(:xpath, '//*[@id="CardYear"]').clear 
  $driver.find_element(:xpath, '//*[@id="CardMonth"]').send_keys(arg1) 
  $driver.find_element(:xpath, '//*[@id="CardYear"]').send_keys(arg2) 
end

Then (/^User enter wrong security code as "([^"]*)"$/) do |arg1|
  $driver.find_element(:xpath, '//*[@id="Securecode"]').send_keys(arg1)
end