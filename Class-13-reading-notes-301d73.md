# Day 13 [CRUD](https://www.moesif.com/blog/technical/api-design/Which-HTTP-Status-Code-To-Use-For-Every-CRUD-App/)


In your own words, describe what each group of status code represents:
- 100’s = **Informational status codes** that usually tell the client, the header part of the request has been received and the server will respond to the demand of the client. 

- 200’s = **Success codes** tell the client that its request was accepted. This doesn’t mean the request was successfully processed only that it met all validation requirements at the time of sending.

- 300’s = **Redirection codes** tell the client that the resource they are requesting isn’t available. The client has to issue a request to the new location.


- 400’s = **Client error codes** are all about invalid requests a client sent to a server. Causes include; timeouts, wrong URI, missing authentication, and more. 

- 500’s = **Server error codes** often indicate problems with overwhelmed servers or unreachable servers behind proxies. These errors can be temporary or permanent. Usually it’s best for the client to retry the same request.


-  What is a status code 202? = Accepted - This code tells the client that the request was valid, but its processing will finish sometime in the future.

- What is a status code 308? = Permanent Redirect 

- What code would you use if an update didn’t return data to a client? 404

-  What code would you use if a resource used to exist but no longer does? 308

- What is the ‘Forbidden’ status code? 403 *code indicates that the server understood the request but refuses to authorize it*.


