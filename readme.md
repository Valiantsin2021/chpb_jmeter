docker run  --mount type=bind,source="$(pwd)"/test,target=/test -it --rm justb4/jmeter -n -t /test/chpb.jmx -l /test/report.jtl -e -o /test/report -f

