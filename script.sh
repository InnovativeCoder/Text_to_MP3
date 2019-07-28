mkdir Aiff 
mkdir mp3

cd Aiff

for i in $(seq 1 5); do     say -f "../$i.txt" -o "$i.aiff" ; done

cd ../mp3

for i in $(seq 1 5); do     lame -m m "../Aiff/$i.aiff" "$i.mp3" ; done

ls

cd ../..

ls

