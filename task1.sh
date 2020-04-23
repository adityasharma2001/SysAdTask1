sudo groupadd own
sudo useradd -M ChiefCommander
sudo useradd -M ArmyGeneral
sudo useradd -M NavyMarshal
sudo useradd -M AirForceChief
sudo useradd -a -G own ChiefCommander
sudo useradd -a -G own aditya

i=1
while [$i -le 50 ]
do 
sudo useradd -M Army$i
sudo useradd -M Navy$i
sudo useradd -M AirForce$i
sudo groupadd AirForce$i
sudo groupadd Navy$i
sudo groupadd Army$i
sudo usermod -a -G AirForceL$i ChiefCommander
sudo usermod -a -G AirForceL$i AirForceChief
sudo usermod -a -G AirForceL$i aditya
sudo usermod -a -G NavyL$i ChiefCommander
sudo usermod -a -G NavyL$i NavyMarshal
sudo usermod -a -G NavyL$i aditya
sudo usermod -a -G ArmyL$i ChiefCommander
sudo usermod -a -G ArmyL$i ArmyGeneral
sudo usermod -a -G ArmyL$i aditya
i=$(($i+1))
done
sudo chgrp own /home/ArmyGeneral
sudo chgrp own /home/NavyMarshal
sudo chgrp own /home/AirForceChief
sudo chmod 770 /home/ArmyGeneral
sudo chmod 770 /home/NavyMarshal
sudo chmod 770 /home/AirForceChief
touch attendance-record-Army.txt /home/ArmyGeneral
touch attendance-record-Army.txt /home/NavyMarshal
touch attendance-record-Army.txt /home/AirForceChief
j=1
while [$j -le 50 ]
do
sudo chgrp ArmyL$j /home/Army$j
sudo chgrp NavyL$j /home/Navy$j
sudo chgrp AirForceL$j /home/AirForce$j
sudo chmod 770 /home/Army$j
sudo chmod 770 /home/Navy$j
sudo chmod 770 /home/AirForce$j
touch post-alloted.txt /home/Army$j
touch post-alloted.txt /home/Navy$j
touch post-alloted.txt /home/AirForce$j
j=$(($j+1))
done