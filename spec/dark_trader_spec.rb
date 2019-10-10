require_relative '../lib/dark_trader'

describe "crypto_name method include names" do 
	it "should return cryptomoney names" do 
		expect($currency_result.include?("Bitcoin")).to eq(true)
	end 
	it "should return cryptomoney names" do 
		expect($currency_result.include?("Ethereum")).to eq(true)
	end 
	it "should return cryptomoney names" do 
		expect($currency_result.include?("XRP")).to eq(true)
	end 
end 
 describe "crypto_currency method have values" do
 	it "should return a value" do 
 		expect(($currency_result["Bitcoin"] != nil)  && ($currency_result["Bitcoin"] != 0)).to eq(true)
 	end
 	it "should return a value" do 
 		expect(($currency_result["Ethereum"] != nil)  && ($currency_result["Ethereum"] != 0)).to eq(true)
 	end 
 	it "should return a value" do 
 		expect(($currency_result["XRP"] != nil)  && ($currency_result["XRP"] != 0)).to eq(true)
 	end  
 end 

 