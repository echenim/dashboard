-module(dashboard_ws_handler).
-behaviour(cowboy_websocket).

-export([init/2, websocket_init/1, websocket_handle/3, websocket_info/3, terminate/3]).

init(Req, Opts) ->
    {cowboy_websocket, Req, Opts}.

websocket_init(State) ->
    %% Initialization for WebSocket connection
    {ok, State}.

websocket_handle({text, Msg}, Req, State) ->
    %% Handle incoming WebSocket message (Msg)
    {reply, {text, <<"Echo: ", Msg/binary>>}, Req, State}.

websocket_info(_Info, Req, State) ->
    {ok, Req, State}.

terminate(_Reason, _Req, _State) ->
    ok.
