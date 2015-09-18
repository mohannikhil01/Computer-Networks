# This script uses the following sequence of arguemnts : month (start), day (start), month (end), day (end) , starting number, ending number, for loop step increment number, year
for i in $(eval echo {$1$2..$3$4})
do
for j in $(eval echo {$5..$6..$7})
do
wget -r http://archive.routeviews.org/bgpdata/$8.$1/RIBS/rib.$8$i.$j.bz2
done
done
