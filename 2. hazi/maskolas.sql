create user kincs without login;
grant select on rendeles to kincs
	execute as user = 'kincs';
    select * from rendeles;