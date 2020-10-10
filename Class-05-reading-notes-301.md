# Read: 05 - Heroku Deployment

### 6 Uses of Markdown used in this document =
1. "##HEADERS"
1. "**bold**"
1. "+" unordered list
1. "1." numbered list
1. "[title](https://www.example.com)" links
1. *Italics*


## Getting Started on Heroku with Node.js
**Step one:** setup up an account at [Heroku](https://signup.heroku.com/account)
**Step Two:** Install the Heroku Command Line Interface (CLI). You use the CLI to manage and scale your applications, provision add-ons, view your application logs, and run your application locally.
**Step Three:** When installation completes, you can use the heroku command from your terminal. Use the *heroku login* command to log in to the Heroku CLI:
+ This command opens your web browser to the Heroku login page. 
+ If your browser is already logged in to Heroku, simply click the Log in button displayed on the page. 
+ This authentication is required for both the heroku and git commands to work correctly.
A great way to , check that you have the prerequisites installed properly is to run a series of tests.


**Versions**;


+ **node**  --version V14.5.0

+ **npm**  --version 6.14.8

+ **git**  --version git version 2.27.0

**Step Four Prepare the app**

In this step, you will prepare a sample application that’s ready to be deployed to Heroku.

To clone a local version of the sample application that you can then deploy to Heroku, execute the following commands in your local command shell or terminal:

```PYTHON
git clone https://github.com/heroku/node-js-getting-started.git
```
```PYTHON
cd node-js-getting-started
```
You now have a functioning Git repository that contains a simple application as well as a package.json file, which is used by Node’s dependency manager.

**Step Five Deploy the app**

Create an app on Heroku, which prepares Heroku to receive your source code.


When you create an app, a git remote (called heroku) is also created and associated with your local git repository.

Heroku generates a random name (in this case s ⬢ arcane-plateau-81306) for your app, or you can pass a parameter to specify your own app name.

**Step Six View Logs**

Heroku treats logs as streams of time-ordered events aggregated from the output streams of all your app and Heroku components, 

providing a single channel for all of the events.

View information about your running app using one of the logging commands, **heroku logs --tail** .



