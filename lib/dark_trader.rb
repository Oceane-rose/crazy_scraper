require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

#Create two empty arrays 
crypto_name = []
crypto_currency = []

#Crypto name
  name = page.xpath("//a[@class='currency-name-container link-secondary']") #HTML Xpath
   name.each do |name| #name is the value of the name of each currency corresponding to the HTML class 'currency-name-container link-secondary'
    crypto_name << name.text #Insere les noms dans l'array crypto_name
    #print crypto_name
  end

#Crypto currency
  currency = page.xpath("//a[@class='price']")
    currency.each do |currency|
      crypto_currency << currency.text
      #print crypto_currency
end

#Convert an array of keys and an array of values into a Hash 
currency_result = Hash[crypto_name.zip(crypto_currency)]