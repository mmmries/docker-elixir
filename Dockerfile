FROM phusion/baseimage:0.9.12
MAINTAINER Michael Ries <michael@riesd.com>

WORKDIR /root
RUN curl http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o /root/erlang-solution_1.0_all.deb
RUN dpkg -i /root/erlang-solution_1.0_all.deb
RUN apt-get update
RUN apt-get install -y erlang unzip
RUN curl -L https://github.com/elixir-lang/elixir/releases/download/v0.15.1/Precompiled.zip -o /root/elixir-0.15.1.zip
RUN unzip /root/elixir-0.15.1.zip -d /usr/local/elixir-0.15.1
RUN ln -s /usr/local/elixir-0.15.1/bin/elixir /usr/local/bin/
RUN ln -s /usr/local/elixir-0.15.1/bin/elixirc /usr/local/bin/
RUN ln -s /usr/local/elixir-0.15.1/bin/iex /usr/local/bin/
RUN ln -s /usr/local/elixir-0.15.1/bin/mix /usr/local/bin/
RUN rm -f /root/elixir-0.15.1.zip /root/erlang-solution_1.0_all.deb
