require "selenium-webdriver"

url = 'http://www.mikecrm.com/f.php?t=YyD7Dc'
if ARGV.size < 1
  raise "Over..."
end
name = ARGV[0]

puts "Welcome #{name}"

meat_rand_no = rand(11)
vegatables_rand_no = rand(6)

driver = Selenium::WebDriver.for :chrome, :switches => %w[--disable-popup-blocking --disable-translate]
driver.navigate.to url

name_el = driver.find_element(:name, 'com1').find_element(:tag_name, 'input')
name_el.send_keys name

meat_el = driver.find_elements(:css, '[name="radio-com2"]')[meat_rand_no]
meat_el.click

vegatables_el = driver.find_elements(:css, '[name="checkbox-com3"]')[vegatables_rand_no]
vegatables_el.click

driver.find_elements(:css, 'input[name="radio-com4"]')[0].click

meat = driver.find_element(:name, 'com2').find_elements(:tag_name, 'label')[meat_rand_no].text
vegatable = driver.find_element(:name, 'com3').find_elements(:tag_name, 'label')[vegatables_rand_no].text
main = driver.find_element(:name, 'com4').find_elements(:tag_name, 'label')[0].text

# driver.find_element(:css, 'a.f_submitBtn').click

puts "----#{name}"
puts meat
puts vegatable
puts main
puts '-----------'

driver.quit
