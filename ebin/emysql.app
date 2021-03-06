{application,emysql,
             [{description,"Emysql - Erlang MySQL driver"},
              {vsn,"0.3.0"},
              {modules,[db,ecrawler_app,ecrawler_sup,emysql,emysql_app,
                        emysql_auth,emysql_conn,emysql_conn_mgr,
                        emysql_statements,emysql_sup,emysql_tcp,emysql_tracer,
                        emysql_util,emysql_worker,httpclient,ibrowse,
                        ibrowse_app,ibrowse_http_client,ibrowse_lb,
                        ibrowse_lib,ibrowse_sup]},
              {mod,{emysql_app,["%MAKETIME%"]}},
              {registered,[]},
              {applications,[crypto,kernel,stdlib]},
              {env,[{default_timeout,5000}]}]}.
