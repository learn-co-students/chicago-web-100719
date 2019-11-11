# Sessions and Cookies

What is a "session"? (In this context...)
- Stateful communication over a stateless protocol, e.g. a server being able to "remember" who it's talking to over the course of many requests/responses

What is a "cookie"? (*stomach grumbles* In THIS context...)
- Key/value information (think of a hash) that is sent by a client (browser) with every request, and updated by the server.

Why do sessions and cookies matter when working with auth?
- Imagine having to log back in every time you want to see a new message on Gmail! By holding onto a cookie, your machine can tell the server you are "you" with each request you make.

What is authentication?
- "Are you who you say you are?" Confirming the identity of a user.

What is authorization?
- "Are you supposed to be here today, Dante?" Given that a user is identified, where are they allowed to go and what can they do? What can non-users see and do?

Why would we check a session cookie from a user?


Why would we send a session cookie to a user?
- The user has just created their account, or logged into it. Then we might set `session[:user_id] = user.id`...
- OR the user has logged out, and we're updating the cookie info in the opposite way. `session[:user_id] = nil`

# Rails Quest
We have a pre-built trivia app which presents the user with questions in succession, and allows them to answer.
We can check in our controller whether the user answered correctly or not, but how can we get the server to 'remember' how many questions a user has answered correctly for as long as they are on the site?

## Deliverables
* Add a feature which displays the number of questions a user has answered correctly
* Add a message which tells the user whether or not they got the last answer correct

## External Resources:

- [Rails Docs on Sessions](https://guides.rubyonrails.org/security.html#sessions)
- [Wiki Page on HTTP Headers](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields)
