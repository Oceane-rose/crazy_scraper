require'nokogiri'
require'open-uri'
require'pry'

page = Nokogiri::HTML(open('https://www.annuaire-des-mairies.com/95/avernes.html'))

townhall = []
townhall_email = []

city = page.xpath('//h1') #HTML Xpath
  city.each do |city|
  townhall << city.text 
  print townhall
end

 email_address = page.xpath("//tr[@td='Adresse Email']")
    email.each do |email|
    townhall_email << email.text
    print townhall_email
 end