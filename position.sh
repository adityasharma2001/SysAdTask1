k=1
while [ $k -le 50 ]
do
cat position.log | grep date | grep Army$k >> /home/Army$k/position-alloted.txt
cat position.log | grep date | grep Navy$k >> /home/Navy$k/position-alloted.txt
cat position.log | grep date | grep AirForce$k >> /home/AirForce$k/position-alloted.txt
k=$(($k+1))
done