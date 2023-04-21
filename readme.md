docker build -t jmetercust:latest -f Dockerfile .


docker run  --mount type=bind,source="$(pwd)"/test,target=/test -it --rm jmetercust -n -t /test/chpb.jmx -l /test/report.jtl -e -o /test/report -f

docker run  --mount type=bind,source="$(pwd)"/test,target=/test -it --rm jmetercust -n -t /test/chpb.jmx -l /test/report/chpb.csv -j /test/report/chpb.log -JEnvironment=Accep -JRPS=1 -f

3basic graf
