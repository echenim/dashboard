{application,rebar3_elixir,
             [{description,"A rebar plugin to generate mix.exs and Elixir bindings"},
              {vsn,"0.2.4"},
              {registered,[]},
              {applications,[kernel,stdlib]},
              {env,[]},
              {modules,[rebar3_elixir,rebar3_elixir_generate_lib,
                        rebar3_elixir_generate_mix,
                        rebar3_elixir_generate_record,rebar3_elixir_utils]},
              {licenses,["BSD-3"]},
              {files,["src/*","include/*","README.md","rebar.config",
                      "rebar.lock"]},
              {build_tools,["rebar3"]},
              {links,[{"Github","https://github.com/G-Corp/rebar3_elixir"}]}]}.