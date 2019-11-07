# output as png image
set terminal png

# save file to "benchmark.png"
set output "/tngbench_share/benchmark.png"

# aspect ratio for image size
set size 1,0.7

# y-axis 
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "out.data" using column 9 with smooth sbezier lines
plot "/tngbench_share/op.data" using 9 smooth sbezier with lines