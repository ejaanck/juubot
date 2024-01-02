#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b juubot https://github.com/ejaanck/juubot /home/juubot/ \
    && chmod 777 /home/Kazuuserbot \
    && mkdir /home/Kazuuserbot/bin/

COPY ./sample_config.env ./config.env* /home/juubot/

WORKDIR /home/juubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
