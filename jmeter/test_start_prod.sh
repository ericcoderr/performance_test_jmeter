echo -e "Starting test...\r\n"

echo -e "jmx path : $1 \r\n"
echo -e "base_path : $2  \r\n"

mkdir -p "$2""/report/html/"
mkdir -p "$2""/report/csv"
#mkdir -p "$2""log/"

report_name="$2""/report/csv/jmx.csv"
#log_path="$2""log/a.log"

jmeter.sh -n -t $1 -l $report_name   -e -o "$2""/report/html/"
#/usr/local/src/jmeter/apache-jmeter-4.0/bin/jmeter.sh -n  -t /usr/local/src/jmeter/apache-jmeter-4.0/bin/examples/JettyServer.jmx -l  /usr/local/src/jmeter/html/jettyserver.jtl -e -o /usr/local/src/jmeter/html/html_report  -R 192.168.21.26:8000,192.168.21.117:8000
