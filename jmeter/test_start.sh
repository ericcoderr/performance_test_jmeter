#/bin/bash
echo -e "Starting test..."
echo -e "jmx path: $1 \n"
echo -e "base path: $2 \n"

#mkdir Directory

html_path=$2"report/html"
csv_path=$2"report/csv"
mkdir -p $csv_path
mkdir -p $html_path
report_name=$csv_path"/jmx.csv"

source /etc/profile
/usr/local/src/jmeter/apache-jmeter-4.0/bin/jmeter.sh -n -t $1 -l $report_name -Dserver.rmi.ssl.disable=true -R 192.168.19.213:8000,192.168.19.215:8000 
/usr/local/src/jmeter/apache-jmeter-4.0/bin/jmeter.sh -g  $report_name -e -o $html_path
