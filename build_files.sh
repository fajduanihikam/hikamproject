if [ -f /etc/alpine-release ]; then
  apk add --no-cache libpq
else
  yum install -y libpq-dev
fi
pip3 install -r requirements.txt
python3.9 manage.py collectstatic --noinput