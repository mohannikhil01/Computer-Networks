for i in {01..01}
do
for j in {00..99}
do
for k in {00..99}
do
wget -r https://www.pch.net/resources/Raw_Routing_Data/route-collector.ams.pch.net/2015/09/01/route-collector.ams.pch.net-mrt-bgp-updates-2015-09-$i-$j-$k.gz
#echo -e "route-collector.akl.pch.net-mrt-bgp-updates-2015-09-$i-$j-$k.gz \n" >> test.txt 
done
done
done
