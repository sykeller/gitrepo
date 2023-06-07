exec > /home/sylvain/logs/lancement_logs.txt 2>&1
cd /home/sylvain/Desktop
# Sans le .service mais avec crontab  fonctionne en Suisse la plupart du temps avec 60sec
sleep 10 && sudo mount -a
python3 photo_libcamera.py
python3 logs.py 
python3 envoi_email.py
python3 DHT11_adafruit.py
