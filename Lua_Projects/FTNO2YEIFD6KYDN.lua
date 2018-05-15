humi="XX"
temp="XX"
PIN = 4 --  data pin, GPIO2
--load DHT22 module and read sensor
function ReadDHT22()
	dht22 = require("dht22")
	dht22.read(PIN)
	t = dht22.getTemperature()
	h = dht22.getHumidity()
	humi=(h/10).."."..(h%10)
	temp=(t/10)..","..(t%10)
	print("Humidity:    "..humi.." %")
	print("Temperature: "..temp.." deg C")

	-- release module
	dht22 = nil
	package.loaded["dht22"]=nil
end