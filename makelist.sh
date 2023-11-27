cat ssh.txt |sort |uniq > 0.txt
cat 0.txt |grep inux |grep -v OpenWrt |grep -v compute-node |grep -v nicecloud |grep -v devbox |grep -v bpo9 |grep -v modulo-telemetria |grep -v LEDE |grep -v colibri-imx7 |grep -v PREEMPT_DYNAMIC> 1.txt
sed 's/->.*$//' 1.txt > 22.txt
shuf 22.txt > listt.txt
rm -rf 1.txt 22.txt
sed 's/-[^-]*//2g' ssh.txt > sh.txt
sed 's/-> oldpass//g' sh.txt > sh1.txt
rm -rf sh.txt
sed 's/ //g' sh1.txt > sh.txt
rm -rf sh1.txt
./list
sed -e "s/ //g" < userpass.txt > usr.txt
cat usr.txt |sort |uniq >> listt.txt
cat listt.txt |sort |uniq > lst.txt
shuf lst.txt > list.txt
rm -rf sh.txt listt.txt lst.txt userpass.txt usr.txt 0.txt
