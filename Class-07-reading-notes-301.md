## Reading 07
### What Google Learned From Its Quest to Build the Perfect Team:
Many of today’s most **valuable firms** have come to realize that analyzing and improving *individual workers* ­— a practice known as *‘‘employee performance optimization’’* — isn’t enough. 

As commerce becomes increasingly *global and complex*, the bulk of modern work is more and more team-based. In **Silicon Valley**, software engineers are encouraged to work together, in part because studies show that groups tend to innovate *faster*, see mistakes more *quickly* and find *better* solutions to problems.

Studies also show that people working in teams tend to achieve better results and report higher job satisfaction. In a 2015 study, executives said that profitability *increases* when workers are persuaded to *collaborate* more. Within companies and conglomerates, as well as in government agencies and schools, teams are now the fundamental unit of organization. If a company wants to outstrip its competitors, it needs to *influence* not only how people work but also how they work together.

Five years ago, **Google** — one of the most public proselytizers of how studying workers can transform productivity — became focused on building the *perfect team*. In the last decade, the tech giant has spent untold millions of dollars measuring nearly every aspect of its employees’ lives. 

Google’s People Operations department has scrutinized everything from how frequently particular people eat together (the most productive employees tend to build larger networks by rotating dining companions) to which traits the best managers share (unsurprisingly, good communication and avoiding micromanaging is critical; more shocking, this was news to many Google managers).

The article: [How I explained REST to my brother](https://gist.github.com/brookr/5977550)
Bookmark/Skim

### Documentation for SuperAgent
**SuperAgent** is light-weight progressive **ajax API** crafted for flexibility, readability, and a low learning curve after being frustrated with many of the existing request APIs. It also works with Node.js!

   `request

   .post('/api/pet')
   
   .send({ name: 'Manny', species: 'cat' })
   
   .set('X-API-Key', 'foobar')
   
   .set('Accept', 'application/json')
   
   .then(res => {
   
      alert('yay got ' + JSON.stringify(res.body));
      
   });`

**Browser and node versions**
**SuperAgent** has two implementations: one for web browsers (using XHR) and one for Node.JS (using core http module). By default Browserify and WebPack will pick the browser version.
