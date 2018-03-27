%%% @doc Convert time
-module(time).
-export([hms_to_seconds/3, seconds_to_h/1, seconds_to_m/1, seconds_to_s/1, seconds_to_hms/1]).

%% @doc Convert hours:minutes:seconds to seconds.
-spec hms_to_seconds(number(), number(), number()) -> number().
hms_to_seconds(H,M,S) -> H * 60 * 60 + M * 60 + S.

%% @doc Convert seconds to hours.
-spec seconds_to_h(number()) -> number().
seconds_to_h(S) -> S div 3600.

%% @doc Convert seconds to minutes.
-spec seconds_to_m(number()) -> number().
seconds_to_m(S) -> ( S rem 3600 ) div 60.

%% @doc Convert seconds to seconds.
-spec seconds_to_s(number()) -> number().
seconds_to_s(S) -> S rem 60.

%% @doc Convert seconds to H:M:S format
-spec seconds_to_hms(number()) -> {number(), number(), number()}.
seconds_to_hms(S) ->
  { seconds_to_h(S), seconds_to_m(S), seconds_to_s(S) }.
