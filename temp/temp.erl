%%% @doc Convert between Celsius and Fahrenheit.
-module(temp).
-export([f2c/1, c2f/1]).

%% @doc Convert Fahrenheit to Celsius.
-spec f2c(number()) -> number().
f2c(F) ->
  (F-32)/1.8.

%% @doc Convert Celsius to Fahrenheit.
-spec c2f(number()) -> number().
c2f(C) ->
  C*1.8+32.
