#script to draw snr skyplot from qcplot.py output
#usage example:
#python qcplot bute1690 snr1 | sort -k3 -r > data2.txt
#gnuplot skyplot.plt 
unset border
set terminal png small size 480,480
set rmargin 10
set lmargin 5
set tmargin 4
set bmargin 2
set output 'skyplot.png'
set palette defined (-25 "red", 0 "yellow", 25 "dark-green")
set cbrange [-25:25]
set colorbox vertical user origin .9, .2 size .04,.5
set title 'Station ssss - Date ddd/mmm/yyyy - File session' offset 0,1
set label 1 'CNRS/ENS 2017' at graph 0.85,-0.05 front
set label 2 'Residuals (mm)' at graph 0.95,.8 front
set polar
set angles degrees
set grid polar 30
set rrange [0:90]
set rtics 15 
set tics front
unset xtics
unset ytics
set_label(x, text) = sprintf("set label '%s' at (95*cos(%f)), (95*sin(%f))     center", text, x, x)
eval set_label(0, "90")
eval set_label(-30, "120")
eval set_label(-60, "150")
eval set_label(-90, "180")
eval set_label(-120, "210")
eval set_label(-150, "240")
eval set_label(-180, "270")
eval set_label(-210, "330")
eval set_label(-240, "300")
eval set_label(-270, "0")
eval set_label(-300, "30")
eval set_label(-330, "60")
plot 'azelre.txt' using (90-$1):(90-$2):3 notitle palette pt 7 ps 0.5

