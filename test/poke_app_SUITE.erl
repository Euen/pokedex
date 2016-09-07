-module(poke_app_SUITE).
-author('elbrujohalcon@inaka.net').

-export([all/0]).
-export([run/1]).

-spec all() -> [atom()].
all() -> [run].

-spec run(proplists:proplist()) -> {comment, []}.
run(_Config) ->
  {ok, Apps} = poke:start(),
  [pokenaka|_] = lists:reverse(Apps),
  ok = poke:stop(),
  {comment, ""}.
