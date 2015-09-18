for i in {0226..0228}
do
for j in {0000..2200..200}
do
wget -r http://archive.routeviews.org/route-views.saopaulo/bgpdata/2013.02/RIBS/rib.2013$i.$j.bz2
done
done
