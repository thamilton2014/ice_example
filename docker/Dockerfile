FROM selenium/standalone-chrome:2.53.0

USER root

#=================
# Main Ingredients
#=================
RUN apt-get update -qqy \
    && apt-get -qqy --no-install-recommends install \
        ca-certificates \
        openjdk-8-jre-headless \
        sudo \
        unzip \
        wget \
        curl \
        build-essential

#==================
# Ruby dependencies
#==================
RUN apt-get update \
    && apt-get install -qqy \
        gcc \
        ruby \
        ruby-dev \
        vim \
        git \
        libxml2 \
        libxml2-dev \
        libxslt1-dev \
        make

#=================
# Gem dependencies
#=================
RUN gem install bundle
RUN gem install \
    bundle \
    rspec \
    page-object \
    require_all \
    fig_newton \
    simplecov \
    data_magic \
    selenium-webdriver \
    watir-webdriver \
    cucumber \
    --force

COPY xvfb /etc/init.d/xvfb
RUN chmod 777 /etc/init.d/xvfb
RUN mkdir /opt/workspace

WORKDIR /opt/workspace
CMD /etc/init.d/xvfb start && cucumber -p production
