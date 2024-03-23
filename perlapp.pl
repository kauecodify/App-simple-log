#Perl, Html, Mysqlite, dancer2

cpan Dancer2 DBD::SQLite
use Dancer2:
use Dancer2::Plugin::Database;

set serializer => 'JSON';

#Database config SQLite
database 'SQLite' => database = > 'database.db';

#Route to users
get '/' => sub {
my $users = database->quick_select('users', {});
template 'index', { users => $users };
};

#Route adicional users
post '/adicional' => sub {
my $name = params->{name};
my $email = params->{email};
database->quick_insert('users', {name => $name})

redirect '/';

};

start;

#Views
<title> Database integration </title>
users

    [% FOREACH user IN users %]
    [% users.name%] - [% users.email %]
    [% END %] 

adicional users
name:
send

perl app.pl

#http://localhost:3000