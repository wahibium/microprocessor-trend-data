

set terminal postscript eps color enhanced #font 'CourierBold,14'
set output "48-years-processor-trend.eps"

set rmargin at screen 0.64

set style line 1 lt 1 ps 1 pt 13 lc rgb "#000000"
set style line 2 lt 1 ps 1 pt 5  lc rgb "#008800"
set style line 3 lt 1 ps 1 pt 7  lc rgb "#0000BB"
set style line 4 lt 1 ps 1 pt 9  lc rgb "#CC6600"
set style line 5 lt 1 ps 1 pt 11 lc rgb "#BB0000"
set style line 6 lt 1 ps 1 pt 13 lc rgb "#800080"


set size 0.8
set size ratio 0.63

set border lw 1.5

set xlabel "Year"

set grid
unset key
set logscale y
set format y "10^{%T}"
set logscale y2
set y2tics  tc ls 6 offset -1
set format y2 "10^{%T}" 
set ytics nomirror



set xrange [1970:2020]
set yrange [0.2:5e7]
set y2range [20:0.003] 
unset mytics
unset my2tics


set label "Number of"     at 2023,2e1 tc ls 1
set label "Cores" at 2023,6.6e0 tc ls 1

set label "Frequency"    at 2023,3e3 tc ls 2
set label "(MHz)"    at 2023,9e2 tc ls 2

set label "Single-Thread"      at 2023,1.5e5 tc ls 3
set label "Performance"        at 2023,5e4 tc ls 3
set label "(SpecINT x 10^{3})" at 2023,1.9e4 tc ls 3 font ",12"

set label "Transistors"   at 2023,6e7 tc ls 4
set label "(thousands)"   at 2023,2e7 tc ls 4

set label "Typical Power" at 2023,3e2 tc ls 5
set label "(Watts)"       at 2023,1e2 tc ls 5

set label "Process" at 2023,3e6 tc ls 6
set label "(nm)"       at 2023,1e6 tc ls 6






set title "Microprocessor Trend Data"

set label "Original data up to the year 2010 collected and plotted by M. Horowitz, F. Labonte, O. Shacham, K. Olukotun, L. Hammond, and C. Batten" at 1970,6.5e-3 tc ls 1 font ",8"
set label "New plot and data collected for 2010-2019 by K. Rupp" at 1970,3.3e-3 tc ls 1 font ",8" 
set label "Plot and data extended and expanded in this paper to include physical cores and process technology up to 2020" at 1970,1.8e-3 tc ls 1 font ",8"

plot \
 "cores-physical.dat"        using 1:2 ls 1 with points, \
 "frequency.dat"    		 using 1:2 ls 2 with points, \
 "specint.dat"      		 using 1:2 ls 3 with points, \
 "transistors.dat"  		 using 1:2 ls 4 with points, \
 "watts.dat"        		 using 1:2 ls 5 with points, \
 "feature.dat"  			 using 1:2 ls 6 with points axis x1y2

