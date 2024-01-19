sed 's/-[^-]*//2g' ssh.txt > sh.txt
./stat
sed -e "s/ //g" < userpass.txt > usr.txt
rm -rf userpass.txt sh.txt
sort usr.txt | uniq -c > sorted.txt
sort -nr sorted.txt
rm -rf sorted.txt
