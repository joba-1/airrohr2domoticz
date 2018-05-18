# Gateway for airrohr api values to domoticz device indexes


## Example call

Given you have

* airrohr firmware configured to post "An eigene Api senden" to port 7110 on the server running this script (Path not relevant)
* domoticz running on localhost and listening at port 8888
* you defined two custom virtual sensor devices in domoticz. They got indexes 19 for PM10 and 18 for PM2.5

Then call the script like this

> ./airrohr2domoticz.py 7110 localhost:8888 SDS_P1=19 SDS_P2=18


## Customization

You can use other value_types from the airrohr api json on the command line if you like.
Just open url http://<yourAirrohrIp>/data.json to see which values are available on your device.


## Documentation on Airrohr firmware and Domoticz

[Airrohr firmware for luftdaten.info](https://github.com/opendata-stuttgart/sensors-software/tree/master/airrohr-firmware)
[Airrohr api](https://github.com/opendata-stuttgart/meta/wiki/APIs)
[Domoticz json api](https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's#Custom_Sensor)
[Domoticz dummy hardware setup for custom sensors](https://www.domoticz.com/wiki/Hardware_Setup#Dummy_Hardware)

