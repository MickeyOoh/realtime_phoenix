8. Break Your Application with Acceptance Tests
-----
Real-time systems can be difficult to write correctly due to chanllenges caused by persistent connections and long-running applications. Many software engineers take pride in their work, and they may be optimistic about bugs not existing in their code.

* Cover why acceptance tests are useful for real-time applications.
* Break last chapter's application through manual acceptance tests.
* Use a different set of techniques to crash parts of the app that are hidden from the user, such as Elixir processes or the database.
* Look at using Hound to automate acceptance tests.

The Power of Acceptance Testing
----
Real-time systems use persistent connections to optimize the speed and efficiency of sending data to clients. Persistent connections are less forgiving than tranditional web requests and require additional code to cover scenarios that can happen to users.

Acceptance tests are tests that use the entire application stack, from browser to server. They can be mannual or automated, which we'll cover later in this chapter. We can recrate the following challenging scenarios with acceptance tests.

* Application may be open for long periods of time

* Persistent connections must be maintained across failures

* Servers must maintain open connections

> Acceptance tests allow us to verify that our application works as expected in many different scenarios, both common and uncommon.
> The biggest difference between this style of testing and unit or integartion testing is ** that the system is not simulated or mocked when we do these tests.

Break Your App Like a User
-----
We should try to keep as much of our system identical to waht our users use --
browsers, operating systems, and network stability can all affect how an application works.

Define the Correct Behaviour
-----


Page Related Actions
-----
Case1:
1. Define the test
2. Write steps for the test
3. Write expectations for the test

Case2:

case3:

Automate Acceptance Tests with Hound
-----

Hound
   for browser automation and writing integration tests in Elixir
   Features
   * Can run multiple browser sessions simultaneously
   * Supports Selenium, ChromeDirver and PlantomJs.
   * Supports Javascript-heavy apps. Retries a few times before reporting error.
   * Implements the WebDriver wire Protocol






Chp09: Build a Real-Time Shopping Cart
-----

