# Day 11 Authentication

## [What is OAuth](https://www.csoonline.com/article/3216404/what-is-oauth-how-the-open-authorization-framework-works.html)

### How the open authorization framework works?

**OAuth** allows websites and services to *share assets* among users, but it does have vulnerabilities. It is an **open-standard authorization protocol** or framework that describes how *unrelated servers and services* can safely allow *authenticated* access to their assets without actually sharing the *initial, related, single logon credential*. This is known as *secure, third-party, user-agent, delegated authorization*.

In all cases, *two or more services* are being used for *one transaction* by the **end-user**. For OAuth to work, the end-user’s client software (e.g., a browser), the services involved and authentication provider must support the right version of OAuth (1.0 versus 2.0).

**OAuth scenarios** *almost always* represent **two unrelated sites or services** trying to **accomplish a task for users** or their software. All three have to **work together** involving **multiple** approvals for the completed transaction to get **authorized**.

### How OAuth works

1. The first website connects to the second website on behalf of the user, using OAuth, providing the user’s verified identity.

2. The second site generates a one-time token and a one-time secret unique to the transaction and parties involved.

3. The first site gives this token and secret to the initiating user’s client software.

4. The client’s software presents the request token and secret to their authorization provider (which may or may not be the second site).

5. If not already authenticated to the authorization provider, the client may be asked to authenticate. After authentication, the client is asked to approve the authorization transaction to the second website.

6. The user approves (or their software silently approves) a particular transaction type at the first website.

7. The user is given an approved access token (notice it’s no longer a request token).

8.The user gives the approved access token to the first website.

9. The first website gives the access token to the second website as proof of authentication on behalf of the user.

10. The second website lets the first website access their site on behalf of the user.

11. The user sees a successfully completed transaction occurring.



## [Authorization and Authentication flows](https://auth0.com/docs/flows)

![Authorization Code Flow](https://images.ctfassets.net/cdy7uua7fh8z/2nbNztohyR7uMcZmnUt0VU/2c017d2a2a2cdd80f097554d33ff72dd/auth-sequence-auth-code.png)

![Authorization Code Flow with Proof Key for Code Exchange PKCE](https://images.ctfassets.net/cdy7uua7fh8z/3pstjSYx3YNSiJQnwKZvm5/33c941faf2e0c434a9ab1f0f3a06e13a/auth-sequence-auth-code-pkce.png)

![Implicit Flow with Form Post](https://images.ctfassets.net/cdy7uua7fh8z/6m0uE4E7Hpzbdhyh9dEuYK/e36c910ff47a7540bf27e23c02822624/auth-sequence-implicit-form-post.png)



## [Auth0 for single page apps](https://auth0.com/docs/libraries/auth0-react)

The **Auth0 React SDK** (auth0-react.js) is a **JavaScript** library for implementing *authentication and authorization* in React apps with Auth0.
                                
It provides a *custom React hook* and other *Higher Order Components* so you can secure React apps using best practices while writing less code.


**To install Auth0 React SDK** - npm install @auth0/auth0-react


1. First, you'll need to wrap your application in a single **Auth0Provider component**. This will provide the React Context to components that are placed inside your application.

2. **isLoading and error** - Wait for the SDK to initialize and handle any errors with the isLoading and error states.


3. **Login** - Use loginWithRedirect or loginWithPopup to log your users in.

4. **Logout** - Use logout to log your users out. Make sure returnTo is specified in "Allowed Logout URLs" in your Auth0 Dashboard.

5. **User** - Access user profile information with the user value.

6. **Use with a class component** - Use the withAuth0 Higher Order Component to add the auth0 property to class components instead of using the hook.

7. **Protect a route** - Protect a route component using the withAuthenticationRequired higher order component. Visits to this route when unauthenticated will redirect the user to the login page and back to this page after login.

8. **Call an API** - To call a protected API with an Access Token, be sure to specify the audience and scope of your access token, either in Auth0Provider or getAccessTokenSilently. Then use it to call a protected API by passing it in the Authorization header of your request.
