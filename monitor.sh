#Single run
if curl -s --head  --request GET http://helloairhorndevelopment.com | grep "200 OK" > /dev/null; then 
   echo "This site is UP" | sendmail -v jarredhunter6@gmail.com
else
   echo "This site is DOWN" | sendmail -v jarredhunter6@gmail.com
fi
