FROM hmtreasury/ruby:2.1.5
MAINTAINER HM Treasury Guidance Guarantee Programme <pensions-guidance-members@digital.cabinet-office.gov.uk>

ENV NODE_BUILD_DEPENDENCIES build-essential curl python
ENV NODE_VERSION 0.10.33
ENV RAILS_ENV production

WORKDIR /srv

RUN apt-get update -q && \
    apt-get install -qy $NODE_BUILD_DEPENDENCIES --no-install-recommends && \

    curl -o /node-$NODE_VERSION/src.tar.gz --create-dirs http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz && \
    cd /node-$NODE_VERSION && tar -zxvf src.tar.gz --strip-components=1 && \
    ./configure --prefix=/usr && \
    make && make install && cd / && \
    rm -fr /node-$NODE_VERSION && \

    apt-get remove -y $NODE_BUILD_DEPENDENCIES && \
    cd /var/lib/apt/lists && rm -fr *Release* *Sources* *Packages* && \
    truncate -s 0 /var/log/*log

RUN apt-get update -q && \
    apt-get install -qy build-essential ca-certificates git libxml2-dev libxslt-dev libsqlite3-dev rsync \
                    --no-install-recommends && \

    apt-get clean && \
    cd /var/lib/apt/lists && rm -fr *Release* *Sources* *Packages* && \
    truncate -s 0 /var/log/*log

RUN npm install -g bower && \

    truncate -s 0 /var/log/*log

RUN echo 'gem: --no-document' > /etc/gemrc && \
    gem update --system && \
    gem install bundler -q

ADD Gemfile /srv/Gemfile
ADD Gemfile.lock /srv/Gemfile.lock

RUN bundle install \
      --binstubs \
      --deployment

ADD .bowerrc /srv/.bowerrc
ADD bower.json /srv/bower.json

RUN bower install \
      --allow-root \
      --config.interactive=false \
      --production

ADD . /srv

RUN ./bin/rake assets:precompile

VOLUME /srv/public

EXPOSE 5000

CMD ["start"]
ENTRYPOINT ["./bin/foreman"]
