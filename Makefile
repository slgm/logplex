all: 
	(cd deps/erlang_syslog;$(MAKE) all)
	(cd deps/redis_pool;$(MAKE) all)
	(cd deps/mochiweb;$(MAKE) all)
	@erl -make
	@escript release/build_rel.escript boot logplex `pwd`/ebin

clean:
	rm -f ebin/*.beam erl_crash.dump

clean_all clean:
	(cd deps/erlang_syslog;$(MAKE) clean)
	(cd deps/redis_pool;$(MAKE) clean)
	(cd deps/mochiweb;$(MAKE) clean)