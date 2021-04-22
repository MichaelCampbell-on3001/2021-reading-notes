# Day 8 APIs [^1]


## [API Design Best Practices](https://docs.microsoft.com/en-us/azure/architecture/best-practices/api-design)
### Web API design
- **Platform independence**. Any **client** should be able to *call the API*, regardless of how the API is implemented internally. 
- **Service evolution**. The **web API** should be able to *evolve and add functionality* independently from client applications. 
- **REST APIs** are designed around *resources*, which are any kind of object, data, or service that can be accessed by the *client.*

- A **resource** has an identifier, which is a URI that uniquely identifies that resource. For example, the URI for a particular customer order might be:
**HTTP**
`https://adventure-works.com/orders/1`
Clients interact with a service by exchanging representations of resources. Many web APIs use JSON as the exchange format. For example, a GET request to the URI listed above might return this response body:
**JSON**
`{"orderId":1,"orderValue":99.90,"productId":1,"quantity":1}`
### Define operations in terms of HTTP methods
**The HTTP protocol defines a number of methods that assign semantic meaning to a request. The common HTTP methods used by most RESTful web APIs are:**
- **GET** retrieves a representation of the resource at the specified URI. The body of the response message contains the details of the requested resource.
- **POST** creates a *new resource* at the specified URI. The body of the request message provides the details of the new resource. *Note that POST can also be used to trigger operations that don't actually create resources.*
- **PUT** either creates or replaces the resource at the specified URI. The body of the request message specifies the resource to be created or updated.
- **PATCH** performs a partial update of a resource. The request body specifies the set of changes to apply to the resource.
- **DELETE** removes the resource at the specified URI.

## [Documentation for SuperAgent](https://visionmedia.github.io/superagent/)
## [RegExr - Pay particular attention to the cheatsheet](https://regexr.com/)
## [Regex Tutorial](https://medium.com/factory-mind/regex-tutorial-a-simple-cheatsheet-by-examples-649dc1c3f285)
## [Regex 101](https://regex101.com/)
[^1]: These notes were compiled by someone under the influence of the covid-19 vaccination.
