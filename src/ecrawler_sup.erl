
-module(ecrawler_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

%% If the gen_server is part of a supervision tree and is ordered by its supervisor to terminate, this function will 
%% be called with Reason=shutdown if the following conditions apply: 
%% * the gen_server has been set to trap exit signals, and 
%% * the shutdown strategy as defined in the 
%% supervisor's child specification is an integer timeout value, not brutal_kill.
init([]) ->
	Database = ?CHILD(db, worker),
	Crawler = ?CHILD(crawler, worker),
    {ok, { {rest_for_one, 5, 10}, [Database, Crawler]} }.

