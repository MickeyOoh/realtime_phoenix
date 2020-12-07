## Real-Time Phoenix
#### Build Highly Scalable Systems with Channels by Stephen Bussey

### Real-Time is Now
Users have higher demands than ever before. It's no longer good enough to have fast requests that complete in 100 ms or less. Today's software users expect the data on their screen to reflect now, even before they ask for it.

Elixir has emerged as a language that can more easily solve the challenges of building and running a real-time application. Advancements in web standards have enabled new communication layers for interacting with a system in real-time. This contributes to now being the perfect time for you to learn how to write real-time appliations.

### The Case for Real-Time Systems
Today's software users have high demands, and for good reason. There are often many different applications that do the same thing;the application that works the most like the user expects and that minimizes the amount of frustration experienced will be able to win the user's attentions. Real-time features are a way to ensure that what users know to be true is reflected in their view of an application, improving the usability and minimizing frustration. Historically, real-time systems have been difficult to achieve.

### The Layers of a Real-Time System
Real-time applications consist of clients, a real-time communication layer, and back-end servers working together to achieve business objectives.
The cooperation and proper function of each layer is important in developing a successful application. For example, a bug in the client could prevent proper connection to the server, which reduces the ability to operate instantly. A defect on the server could delay or prevent messages being sent to a connected client. Before we look at the layers of a real-time system, let's define "real-time."
There are different levels of guarantee in a real-time system. Hardware systems that have strict time guarantees are considered to be "hard" real-time. For example, an airplane's control system needs to always respond within strict time limits.
This book will look at "soft" real-time applications, also known as near real-time. Soft real-time applications can have several seconds of delay when updating the user's view, with a goal of minimizing the amount of time the update takes. A soft real-time application should update to the correct state without user intervention.


Connect a Simple WebSocket
----

Why WebSockets?
----
WebSockets's strengths
* WebSockets allow for efficient two-way data communication over a single TCP connection. This helps to minimize message bandwidth and avoids the overhead of crating frequent connections.
* WebSockets have strong support in Elixir with the cowboy web server They map very well to the Erlang process model which helps to create robust performance-focused applications
* WebSockets originate with an HTTP request, which means that many standard web technologies such as load balancers and proxies can be used with them.
* WebSockets are able to stay at the edge of our Elixir application. We can change out our communication layer in the future if a better technology becomes available.


Chap03: First Steps with Phoenix Channels
----


PubSub
----
Phoenix.PubSub powers topic subscription and message broadcasting in our real-time application. Channels use PubSub internally, so we will rarely interact with it directly. However, it's useful to understand PubSub because we'll need to to configure it properly for our application to ensure performance and communication availability.

PubSub is linked between a local node and all connected remote nodes. This allows PubSub to broadcast messages across the entire cluster.

Chapter 4: Restrict Socket and Channel Access
----

We'll start this chapter by examining how to restrict access to Channels and Sockets, to ensure that data is provided only to the right users. We'll use a `Phoenix.Token' to pass authentication information from the server to the view, and then will use that to add Channel access restriction to JavaScript client.

Why Restrict Access?
-----
There are two different types of access restriction that we'll focus on.
1. authentication prevent non-users from accessing your application.
2. authorization prevents users from accessing each other's data.



Chap06 Avoid Performance Pitfalls
-----
You now have the tools and knowledge to build a real-time application using Phoenix Channels. However, you will need to run this application for real users in order for it to be useful.
Your application needs to be able to operate efficiently so that requests do not time out, encounter errors, or otherwise not work correctly.

Three pitfalls
1. Unknown application health
   We're able to identify root cause by looking at all of our metrics. You'll see how to add measurements to our Elixir applications using StatsD.

2. Limited Channel throughput
   Channels use a single process on the server to process incoming and outgoing requests. 
   If we're not careful, we can constrain our application so that long running requests prevent the Channel from processing. We'll solve this problem with `built-in Phoenix functions`

3. Unintentional data pipeline
   We can build a pipeline that efficiently moves data from server to user.
   We should be intentional in our data pipeline design so that we know the capablities and limitations of our solution. We'll use `GenStage` to build a production-ready data pipeline.



Chap07 Build a Real-Time Sneaker Store
-----


   