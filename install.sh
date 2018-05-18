#!/bin/sh -e
cp airrohr2domoticz.service /etc/systemd/system/
cp airrohr2domoticz.env /etc/default/
cp airrohr2domoticz.py /usr/local/bin
chmod +x /usr/local/bin/airrohr2domoticz.py
systemctl daemon-reload 
systemctl stop airrohr2domoticz.service 
systemctl start airrohr2domoticz.service 
systemctl status airrohr2domoticz.service 
echo "check daemon parameters in /etc/default/airrohr2domoticz.env"
echo "check daemon output with journalctl -f -u airrohr2domoticz"
echo "airrohr2domoticz installation done"
