% Demo of pattern matching
Eshell V6.1  (abort with ^G)
1> Num = 1.
1
2> Num = 1.
1
3> Num = 2.
** exception error: no match of right hand side value 2
4> Num == 2.
false
5> Num == 1.
true
>

% Running real hello world
Eshell V6.1  (abort with ^G)
1> c(hello).
{ok,hello}
2> Pid = hello:start().
<0.39.0> %Process identifyer
3> Pid ! hello.
Hello World
hello
4> Pid ! goodbye.
goodbye
5> Pid ! hello.
hello
6>

% TODO: CTRL+G and q to stop REPL
% Elixir demo
Interactive Elixir (0.15.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> c("hello.ex")
hello.ex:1: warning: redefining module Hello
[Hello]
iex(2)> Hello.hello
Hello world
:ok
iex(3)>

{person, 22, "Per"}

Interactive Elixir (0.15.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> c("hello.ex")
hello.ex:1: warning: redefining module HelloModule
[HelloModule]
iex(2)> pid = HelloModule.start
#PID<0.62.0>
iex(3)> send pid, :hello
Hello world
:hello
iex(4)> send pid, :goodbye
:goodbye
iex(5)> send pid, :hello
:hello
iex(6)>

% BIF head hd and tail tl
29> List = [1,2,3,4,5].
[1,2,3,4,5]
30> hd(List).
1
31> tl(List).
[2,3,4,5]
32>

% List all rebar templates
rebar l-t

rebar create template=simplesrv name=demo description="Dr Software demo porject"
