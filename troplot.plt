#script to draw snr skyplot from qcplot.py output
#usage example:
#python qcplot bute1690 snr1 | sort -k3 -r > data2.txt
#gnuplot recplot.plt 
set terminal png small size 480,360
set output 'troplot.png'
set xrange [0:24]
set yrange [-50:250]
set grid
set xlabel "Time (hours)"
set ylabel "Delay adjustement (mm)"
set xtics 3
set ytics 25
set palette defined (0 "red", 2 "yellow", 4 "dark-green")
set cbrange [0:4]
set title 'Station ssss - Date ddd/mmm/yyyy - File session' offset 0,1
set label 1 'CNRS/ENS 2017' at graph 0.9,-0.1 front
set label 2 'Sigma (mm)' at graph 0.95,1.05 front
plot 'tp.txt' using 1:2:3 notitle palette pt 7 ps 0.5

