FROM php:7.0.5-apache
MAINTAINER https://github.com/sthysel/docker-blogless

ENV REFRESHED_AT 2016-04-11

ENV VERSION master

USER root

WORKDIR /var/www/
RUN curl -sL https://github.com/datenbrei/blogless/archive/${VERSION}.tar.gz | tar xz 

# TODO, fix permissions and persistence
RUN rm -fr html && mv blogless-${VERSION} html && chmod -R a+rw html

RUN mkdir /blogs
VOLUME /blogs
WORKDIR /blogs
