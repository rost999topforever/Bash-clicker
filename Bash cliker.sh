#!/bin/sh
#!/bin/sh
c=0
k=1 
kk=15
kkk=1
kkkk=1
mk=100
mkk=2
mkkk=5
l=1000
ll=1
cr=0

while true; do
echo "кликов:$c нажми entr и получи +$k кликов -1 купить клик:($kk) уровень:($ll) нужно кликов:($l) -2 чтобы купит мега клик($mk)"
read c1 
clear
if [[ $c1 == "" ]]; then
c=$(( $c + $k ))
echo "+$k" 
l=$(( $l - $k ))
elif [[ $c1 == "1" ]]; then
if [[ $c -ge $kk ]]; then 
echo "клик куплен " 
c=$(( $c - $kk ))
k=$(( $k + $kkkk ))
kk=$(( $kk + $kkk )) 
kkk=$(( $kkk + $kkk ))
fi
fi
if [[ $c1 == "2" ]]; then
if [[ $c -ge $mk ]]; then 
echo " мега клик куплен " 
c=$(( $c - $mk ))
k=$(( $k + $mkkk ))
mk=$(( $mk + $mkk )) 
mkk=$(( $mkk + $mkk ))
fi
fi
if [[ $l -le 1 ]]; then
c=0
k=1 
kk=15
kkk=1
ll=$(( $ll + 1 ))
kkkk=$(( $kkkk + 1 ))
l=$(( 1000 * $ll * 2 ))
cr=$(( $cr + 1 ))
echo "новый уровень"
if [[ $cr == 10 ]]; then
echo "реальность сломана"
kkkk=$(( $kkkk * 2 ))
cr=0
fi
fi 
done
