docker build -t jmetercust:latest -f Dockerfile .
docker build -t jmeterincl:latest -f Dockerfile_incl .

## commands for jmetercust image with providing the volumes
docker run -it --rm --name my-volume-test -v ${pwd}/test:/test jmetercust -n -t /test/chpb.jmx -l /test/report.csv -j /test/report.log -e -o /test/report -f

docker run  --mount type=bind,source=${pwd}/test,target=/test -it --rm jmetercust -n -t /test/chpb.jmx -l /test/report.csv -j /test/report.log -e -o /test/report -f

docker run  --mount type=bind,source="$(pwd)"/test,target=/test -it --rm jmetercust -n -t /test/PostalCode.jmx -l /test/report/PostalCode_30RPS.csv -j /test/report/PostalCode_30RPS.log -JEnvironment=Accep -JRPS=1

## commands for jmeterincl image with all tests already in the image

docker run -it --name my-volume-test jmeterincl -n -t /test/chpb.jmx -l /test/report.csv -j /test/report.log -e -o /test/report -f && docker cp my-volume-test:test ./  