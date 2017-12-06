#script to draw snr skyplot from qcplot.py output
#usage example:
#python qcplot bute1690 snr1 | sort -k3 -r > data2.txt
#gnuplot recplot.plt 
set terminal png small size 480,360
set output 'recplot.png'
set xrange [0:24]
set yrange [0:360]
set grid
set xlabel "Time (hours)"
set ylabel "Azimuth"
set xtics 3
set ytics 30
set palette defined (-25 "red", 0 "yellow", 25 "dark-green")
set cbrange [-25:25]
set title 'Station ssss - Date ddd/mmm/yyyy - File session' offset 0,1
set label 1 'CNRS/ENS 2017' at graph 0.9,-0.1 front
set label 2 'Residual (mm)' at graph 0.95,1.05 front
plot 'rr.txt' using 1:2:3 notitle palette pt 7 ps 0.5

