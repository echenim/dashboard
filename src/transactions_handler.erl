-module(transactions_handler).
-behaviour(cowboy_handler).

-export([init/2]).

init(Req, State) ->
    {Method, Req1} = cowboy_req:method(Req),
    case Method of
        <<"POST">> -> handle_post(Req1, State);
        _ -> cowboy_req:reply(405, Req1)
    end,
    {ok, Req1, State}.

handle_post(Req, State) ->
    {ok, Body, Req1} = cowboy_req:read_body(Req),
    % Process Body to perform transaction activities.
    % Here is where you might interact with MongooseIM or another service.
    cowboy_req:reply(200, #{<<"content-type">> => <<"application/json">>}, Body, Req1),
    {ok, Req1, State}.
