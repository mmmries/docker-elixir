FROM phusion/baseimage:0.9.15
MAINTAINER Michael Ries <michael@riesd.com>

WORKDIR /root
ENV LC_CTYPE en_US.UTF-8
RUN curl http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb -o /root/erlang-solution_1.0_all.deb && dpkg -i /root/erlang-solution_1.0_all.deb
RUN apt-get update && apt-get install -y erlang unzip && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*~
RUN curl -L https://github.com/elixir-lang/elixir/releases/download/v1.0.2/Precompiled.zip -o /root/elixir-1.0.2.zip
RUN unzip /root/elixir-1.0.2.zip -d /usr/local/elixir-1.0.2
RUN ln -s /usr/local/elixir-1.0.2/bin/elixir /usr/local/bin/ && ln -s /usr/local/elixir-1.0.2/bin/elixirc /usr/local/bin/ && ln -s /usr/local/elixir-1.0.2/bin/iex /usr/local/bin/ && ln -s /usr/local/elixir-1.0.2/bin/mix /usr/local/bin/
RUN rm -f /root/elixir-1.0.2.zip /root/erlang-solution_1.0_all.deb
