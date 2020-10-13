READ 06
## Read: 06 - Node, Express, and APIs
[Intro to Node.Js](https://www.sitepoint.com/an-introduction-to-node-js/)

### What Is Node.js?

+ Node.js® is a JavaScript runtime built on Chrome’s V8 JavaScript engine.

+ Node.js is an event-based, non-blocking, asynchronous I/O runtime that uses Google’s V8 JavaScript engine and libuv library.


The **V8 engine** is the open-source JavaScript engine that runs in *Google Chrome* and other *Chromium-based* web browsers, including Brave, Opera, and Vivaldi. It was designed with performance in mind and is responsible for compiling JavaScript directly to native machine code that your computer can execute.

### “Hello, World!” the Node.js Way

You can check that Node is installed on your system by opening a terminal and typing *node -v*. If all has gone well, you should see something like *v12.14.1* displayed. This is the current LTS version at the time of writing.

Next, create a new file hello.js and copy in the following code:

`console.log("Hello, World!");`

This uses **Node’s built-in console module** to display a message in a terminal window. To run the example, enter the following command:

`node hello.js`

### Introducing npm, the JavaScript Package Manager

To check which version you have installed on your system, type: 
`npm -v`

In addition to being the **package manager** for JavaScript, npm is also the world’s largest software registry. There are over *1,000,000* packages of JavaScript code available to download, with billions of downloads per week. 

### Installing a Package Globally

Open your **terminal** and type the following:

`npm install -g jshint`

This will install the **jshint package** globally on your system. We can use it to lint the *index.js* file from the previous example:

`jshint index.js`

You should now see a number of **ES6-related errors**. If you want to fix them up, add `/* jshint esversion: 6 */` to the top of the **index.js file**, re-run the command and linting should pass.

### What Is Node.js Used For?
+ Node.js Lets Us Run JavaScript on the Server
+ The Node.js Execution Model

Node.js is *single-threaded and event-driven*, which means that everything that happens in Node is in reaction to an event. 

**For example**, when a new request comes in (one kind of event) the server will start processing it. If it then encounters a blocking I/O operation, instead of waiting for this to complete, it will *register* a callback before continuing to process the next event.

Node’s *execution model* causes the server very little overhead, and consequently it’s capable of handling a **large number of simultaneous connections**.

![Node Execution Model](https://uploads.sitepoint.com/wp-content/uploads/2012/10/1516152673node_event_loop.png)

###What Kind of Apps Is Node.js Suited To?

Node is particularly suited to building applications that require some form of *real-time interaction or collaboration* — for example, **chat sites, or apps**. 
It’s also a good fit for:
+ building APIs where you’re handling lots of requests that are I/O driven (such as those needing to perform operations on a database), 
+ for sites involving data streaming, as Node makes it possible to process files while they’re still being uploaded.

###What Are the Advantages of Node.js?

Aside from *speed and scalability*, an often-touted advantage of using JavaScript on a web server — as well as in the browser — is that **your brain no longer needs to switch modes**. You can do everything in the **same language**, which, as a developer, makes you more productive (and hopefully, happier). For example, you can easily share code between the server and the client.

