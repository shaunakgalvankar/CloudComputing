#! /bin/bash
docker run --rm --it --entrypoint /bin/sh ubuntu:20.04
apt update 
apt install sysbench 
docker commit dc465c4c0009 my_image_with_sysbench
#CPU tests
sysbench --test=cpu --cpu-max-prime=20000 run
sysbench --test=cpu --cpu-max-prime=40000 run
sysbench --test=cpu --cpu-max-prime=60000 run
sysbench --test=cpu --cpu-max-prime=20000 --max-time=20 run
sysbench --test=cpu --cpu-max-prime=20000 --max-time=30 run
sysbench --test=cpu --cpu-max-prime=20000 --max-time=40 run
sysbench --num-threads=16 --test=fileio --file-total-size=3G
#FILEIO tests
 sysbench --num-threads=16 --test=fileio --file-total-size=3G
--file-test-mode=rndrw prepare
 sysbench --num-threads=16 --test=fileio --file-total-size=3G
--file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=3G
--file-test-mode=rndrw cleanup
 sysbench --num-threads=16 --test=fileio --file-total-size=6G
--file-test-mode=rndrw prepare
 sysbench --num-threads=16 --test=fileio --file-total-size=6G
--file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=6G
--file-test-mode=rndrw cleanup
 sysbench --num-threads=16 --test=fileio --file-total-size=9G
--file-test-mode=rndrw prepare
 sysbench --num-threads=16 --test=fileio --file-total-size=9G
--file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=9G
--file-test-mode=rndrw cleanup
 sysbench --num-threads=8 --test=fileio --file-total-size=9G
--file-test-mode=rndrw prepare
 sysbench --num-threads=8 --test=fileio --file-total-size=9G
--file-test-mode=rndrw run
sysbench --num-threads=8 --test=fileio --file-total-size=9G
--file-test-mode=rndrw cleanup
 sysbench --num-threads=4 --test=fileio --file-total-size=9G
--file-test-mode=rndrw prepare
 sysbench --num-threads=4 --test=fileio --file-total-size=9G
--file-test-mode=rndrw run
sysbench --num-threads=4 --test=fileio --file-total-size=9G
--file-test-mode=rndrw cleanup
