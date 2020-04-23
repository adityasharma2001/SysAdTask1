let var
read var
if [ $var -eq 1 ]
then
cat attendance-record-Army | grep date --date="last monday"
else if [ $var -eq 2]
then
cat attendance-record-Army | grep date --date="last tuesday"
else if [ $var -eq 3]
then
cat attendance-record-Army | grep date --date="last wednesday"
else if [ $var -eq 4]
then
cat attendance-record-Army | grep date --date="last thusday"
else if [ $var -eq 5]
then
cat attendance-record-Army | grep date --date="last friday"
else if [ $var -eq 6]
then
cat attendance-record-Army | grep date --date="last saturday"
else if [ $var -eq 7]
then
cat attendance-record-Army | grep date --date="last sunday"
fi