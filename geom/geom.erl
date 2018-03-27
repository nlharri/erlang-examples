%%% @doc Geometric functions
-module(geom).
-export([area/2]).

%% @doc Calculate area of rectangle.
-spec area(number(), number()) -> number().
area(A, B) ->
  A * B.
