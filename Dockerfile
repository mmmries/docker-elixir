FROM phusion/baseimage:0.9.17
MAINTAINER Michael Ries <michael@riesd.com>

WORKDIR /root
ENV LC_CTYPE en_US.UTF-8
RUN curl http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o /root/erlang-solution_1.0_all.deb && dpkg -i /root/erlang-solution_1.0_all.deb && apt-get update && apt-get install -y elixir && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/erlang-solutions_1.0_all.deb
