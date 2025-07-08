FROM quay.io/suhailtechinfo/suhail-v2
RUN git clone https://github.com/sarKarji1/Suhail-Md-3 /root/smdd
RUN rm -rf /root/smdd/.git
WORKDIR /root/smdd
RUN npm install || yarn install
EXPOSE 8000
CMD ["npm","start" ] 




