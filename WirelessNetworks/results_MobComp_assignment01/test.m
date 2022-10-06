tbl = readtable("total_thrp.csv");
t = tbl.time_ms_;
plot(t,tbl.x_packetsLastInterval,t,tbl.overallAvrg_Packetsize_byte_,t,tbl.thrpLastInterval_Mb_s_)
legend