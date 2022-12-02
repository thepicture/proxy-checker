for proxy in $(cat $1); do
    response=$(curl -IL --silent -x $proxy $3 | grep -m 1 "HTTP")
    http_code=$(echo "$response" | awk "{print$ 2}")
    date=$(date)
    if [[ -z $http_code ]]; then
        http_code=ERR
        response="CONNECT failed"
    fi
    echo [$date] [$http_code] [$proxy] $response | tee -a $2
done
cat $2 | column -t -s "]" -l 4 --output-separator="]" | tee $2 >/dev/null
