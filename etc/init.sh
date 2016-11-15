sudo ln -s /home/box/etc/nginx.conf /etc/nginx/sites-enabled/lesson.conf
sudo ln -s /home/box/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/nginx restart
gunicorn -c /etc/gunicorn.d/hello.py hello:application