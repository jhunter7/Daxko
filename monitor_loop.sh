until $(curl --output /dev/null --silent --head --fail http://aaaaaaam); do
    echo "This site is DOWN" | sendmail -v jarredhunter6@gmail.com
    sleep 5
done
