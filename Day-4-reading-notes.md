## Reading notes day 4 
## Links
### From the Duckett HTML book:
#### Chapter 4: Ch.4 “Links” (pp.74-93)

**Links** are created using the <a> element.
The _<a>_ element uses the _href_ attribute to indicate the page you are linking to.
If you are linking to a page within your own site, it is best to use relative links rather than qualified _URLs_.
You can create links to open email programs with an email address in the “to” field.
You can use the _Id_ attribute to target elements within a page that can be linked to.
  
## Layout
### From the Duckett HTML book:
#### Chapter 15: (pp.358-404)

**div** elements are often used as containing elements to group together sections of a page.
Browsers display pages in a normal flow unless you specify _relative_, _absolute_ or _fixed_ positioning.
The **float** property moves content to the *left* or *right* of the page and can be used to create multiple column layouts. (Floated items require a *defined* width.
Pages can be a **fixed** width or have a more liquid or *strechy* layouts.
Designers keep pages within _960-1000_ pixels wide, and indicate what the site is about within the top _600_ pixels (to demonstrate its relevance without scrolling).
**Grids** help create *professional* and *flexible* designs.
**CSS Frameworks** provide *rules* for common tasks.
You can include *multiple* CSS files in one page.

## “Functions, Methods, and Objects” 
### From the Duckett JS book:
#### Chapter 3 (first part): (pp.86-99 ONLY) 
**Functions and Methods**:
**Functions** consist of a series of statements that have been grouped together because they perform a specific task.  
*Functions* let you group a series of statements together to perform a specific task. If *different* parts of the script repeat the same task , you can reuse the function (*rather than repeating the same set of statements*).
- **Declaring a function**: to create a function, you give it a name and then you write the statements needed to achieve its task inside curly braces{}.

- **Calling a function**: Having declared a function, you can then *execute* all the statements between it curly braces with just one line of code.

- Some functions need *specific* information to perform its task. In such cases, when you declare the function you give it *parameters*. Inside the function, the parameters act like variables. When you call a function that has parameters, you specify the values it should use in the parentheses that follow its name. The values are called _arugments_ and they can be provided as values or as variables.

- Functions can return more than one value using an **array**. 

**Methods** are the same as a function, except methods are created inside (and are part of ) an *object*.

**Objects** are made up of properties and methods. 

**Built-in Objects** The *web browser* comes with a set of objects that act as a toolkit for creating interactive webpages.

### Article: “6 Reasons for Pair Programming”

1. **Greater efficiency**
It is a common misconception that pair programming takes a lot longer and is less efficient. In reality, when two people focus on the same code base, it is easier to catch mistakes in the making. Research indicates that pair *programming* takes slightly longer, but produces higher-quality code that doesn’t require later effort in troubleshooting and debugging (let alone exposing users to a broken product). So, in the long-run, it’s often actually more efficient than two people working on separate features. When coming up with ideas and discussing solutions out loud, two programmers may come to a solution faster than one programmer on their own. Also, when the pair is _stuck_, both programmers can research the problem and reach a solution faster. *Researchers* also identified pairing enhances technical skills, team communication, and even enjoyability of coding in the workplace.
2. **Engaged collaboration**
When **two** programmers focus on the same code, the experience is more engaging and both programmers are more focused than if they were working alone. It is harder to procrastinate or get off track when someone else is relying on you to complete the work. Popping open your Facebook timeline is just that less enticing when someone else is looking at your screen.
Another important aspect of learning to program is knowing when to ask for help. We advise our students to spend no more than fifteen minutes stuck on a problem before asking a teaching assistant or instructor for help. When developers *pair program*s, they rely more on each other and can often find a solution together without needing to ask for additional help. Ultimately, this boosts overall confidence.
3. **Learning from fellow students**
Everyone has a different approach to problem solving; working with a teammate can expose developers to techniques they otherwise would not have thought of. If one developer has a unique approach to a specific problem, pair programming exposes the other developer to a new solution.
Often times, the developers in a pairing have different skill sets. If one programmer is more experienced in a certain skill, they can teach a student who is less familiar with that area. The less experienced developer benefits from the experienced developer’s knowledge and guidance, and the latter benefits from explaining the topic in their own words, further solidifying their own understanding.
4. **Social skills**
Pair programming is great for improving social skills. When working with someone who has a different coding style, communication is key. This can become more difficult when two programmers have different personalities. Pair programming not only improves programming skills, but can also help programmers develop their interpersonal skills. When just grabbing the keyboard and taking over isn’t an option, getting good at finding the right words is a skill unto itself.
This has long-term career impacts. As much as employers want strong programmers, they know it’s essential to hire people who can work well with others.
5. **Job interview readiness**
A common step in many interview processes involves pair programming between a current employee and an applicant, either in person or through a shared screen. They will carry out exercises together, such as code challenges, building a project or feature, or debugging an existing code base. By doing so, companies can get a better feel for how an applicant will fit into the team and their collaboration style.
For most roles, the ability to work with and learn from others and stellar communication skills are as (or more!) important to a company than specific technical skills. Pair programming strengthens all of those skills.
6. **Work environment readiness**
Many companies that utilize _pair programming_ expect to train fresh hires from CS-degree programs on how they operate to actually deliver a product. Code Fellows graduates who are already familiar with how pairing works can hit the ground running at a *new job*, with one *less hurdle* to overcome.
