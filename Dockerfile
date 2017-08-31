FROM elixir:latest

WORKDIR /app
ADD . /app

CMD ["elixir", "simple.exs"]