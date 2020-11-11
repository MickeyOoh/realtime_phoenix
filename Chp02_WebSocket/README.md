Connect a Simple WebSocket
----

Why WebSockets?
----
WebSockets's strengths
* WebSockets allow for efficient two-way data communication over a single TCP connection. This helps to minimize message bandwidth and avoids the overhead of crating frequent connections.
* WebSockets have strong support in Elixir with the cowboy web server They map very well to the Erlang process model which helps to create robust performance-focused applications
* WebSockets originate with an HTTP request, which means that many standard web technologies such as load balancers and proxies can be used with them.
* WebSockets are able to stay at the edge of our Elixir application. We can change out our communication layer in the future if a better technology becomes available.

