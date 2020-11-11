# HelloSockets

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

Chapter 4: Restrict Socket and Channel Access
----

We'll start this chapter by examining how to restrict access to Channels and Sockets, to ensure that data is provided only to the right users. We'll use a `Phoenix.Token' to pass authentication information from the server to the view, and then will use that to add Channel access restriction to JavaScript client.

Why Restrict Access?
-----
There are two different types of access restriction that we'll focus on.
1. authentication prevent non-users from accessing your application.
2. authorization prevents users from accessing each other's data.
