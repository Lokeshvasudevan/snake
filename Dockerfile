FROM ubuntu:22.04
RUN apt-get update 
RUN apt-get install -y nginx zip curl
RUN echo "daemon off;" >>/etc/nginx/nginx.conf
RUN curl -o /var/www/html/master.zip -L https://codeload.github.com/janbodnar/JavaScript-Snake-Game/zip/master
RUN cd /var/www/html/ && unzip master.zip && mv JavaScript-Snake-Game-master/* . && rm -rf JavaScript-Snake-Game-master master.zip
EXPOSE 80
CMD [ "usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf" ]

# LinkedIn: https://www.linkedin.com/posts/lokeshvasudevan_sundaymotivation-aws-elasticbeanstalk-activity-7208112675896139776-2DP-?utm_source=share&utm_medium=member_desktop