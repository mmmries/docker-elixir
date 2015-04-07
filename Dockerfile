FROM phusion/baseimage:0.9.16
MAINTAINER Michael Ries <michael@riesd.com>

WORKDIR /root
ENV LC_CTYPE en_US.UTF-8
RUN curl http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o /root/erlang-solution_1.0_all.deb && dpkg -i /root/erlang-solution_1.0_all.deb && apt-get update && apt-get install -y unzip erlang-base-hipe erlang-inets erlang-ssl && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/erlang-solutions_1.0_all.deb
RUN curl -L https://github.com/elixir-lang/elixir/releases/download/v1.0.4/Precompiled.zip -o /root/elixir.zip && unzip /root/elixir.zip -d /usr/local/elixir && rm -f /root/elixir.zip
RUN ln -s /usr/local/elixir/bin/elixir /usr/local/bin/ && ln -s /usr/local/elixir/bin/elixirc /usr/local/bin/ && ln -s /usr/local/elixir/bin/iex /usr/local/bin/ && ln -s /usr/local/elixir/bin/mix /usr/local/bin/
