FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y postgresql-client

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt -y install nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt list --upgradable
RUN apt install -y yarn

RUN mkdir /gamou
WORKDIR /gamou
COPY Gemfile /gamou/Gemfile
COPY Gemfile.lock /gamou/Gemfile.lock
RUN yarn install
RUN bundle install

COPY . /gamou

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
EXPOSE 3035
EXPOSE 5432


