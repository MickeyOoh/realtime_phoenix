## Real-Time Phoenix
#### Build Highly Scalable Systems with Channels
                            by Stephen Bussey

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



Chap03: First Steps with Phoenix Channels
----


PubSub
----
Phoenix.PubSub powers topic subscription and message broadcasting in our real-time application. Channels use PubSub internally, so we will rarely interact with it directly. However, it's useful to understand PubSub because we'll need to to configure it properly for our application to ensure performance and communication availability.

PubSub is linked between a local node and all connected remote nodes. This allows PubSub to broadcast messages across the entire cluster.


