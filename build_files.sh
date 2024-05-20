apt-get update && apt-get install -y libpq-dev

# Pastikan menggunakan pip3
pip3 install -r requirements.txt

# Jalankan perintah collectstatic
python3.9 manage.py collectstatic --noinput