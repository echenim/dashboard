{application,fast_scram,
             [{description,"A fast Salted Challenge Response Authentication Mechanism"},
              {vsn,"0.5.0"},
              {registered,[]},
              {applications,[kernel,stdlib,crypto,fast_pbkdf2]},
              {env,[]},
              {modules,[fast_scram,fast_scram_attributes,
                        fast_scram_configuration,fast_scram_definitions,
                        fast_scram_parse_rules]},
              {licenses,["Apache 2.0"]},
              {links,[{"GitHub","https://github.com/esl/fast_scram/"}]}]}.