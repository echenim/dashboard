%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 1999-2016. All Rights Reserved.
%% 
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%% 
%% %CopyrightEnd%
%%

%%
-module(eodbc_sup).

-behaviour(supervisor).

-export([init/1]).

init([Name]) ->
    RestartStrategy = simple_one_for_one,
    MaxR = 0,
    MaxT = 3600,
    StartFunc = {eodbc, start_link_sup, []},
    Restart = temporary, % E.g. should not be restarted
    Shutdown = 7000,
    Modules = [eodbc],
    Type = worker,
    ChildSpec = {Name, StartFunc, Restart, Shutdown, Type, Modules},
    {ok, {{RestartStrategy, MaxR, MaxT}, [ChildSpec]}}.






