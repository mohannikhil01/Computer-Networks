filename="$1"
while read -r line
do
    name=$line
    echo "Name read from file - $name"

for i in {01..12}
do
for j in {01..31}
do
wget -r https://www.pch.net/resources/Routing_Data/2015/$line/$line.2015.$i.$j.gz

#echo -e "route-collector.akl.pch.net-mrt-bgp-updates-2015-09-$i-$j-$k.gz \n" >> test.txt 
done
done
done < "$filename"
