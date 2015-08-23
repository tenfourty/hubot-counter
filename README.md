# hubot-counter [![Build Status](https://travis-ci.org/tenfourty/hubot-counter.png)](https://travis-ci.org/tenfourty/hubot-counter)

This script allows hubot to count whenever you ++ or -- something, for example:
```
user1>> My coffee++ just woke me up!
hubot>> coffee: 1
user1>> meetings--
hubot>> meetings: -1
```

Commands:
  hubot get count <item> - get the current count of <item> you can increment with item++ and decrement with item--

```
user1>> hubot get count coffee
hubot>> coffee: 1!
```

See [`src/counter.coffee`](src/counter.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-counter --save`

Then add **hubot-counter** to your `external-scripts.json`:

```json
[
  "hubot-counter"
]
```

## Sample Interaction

```
user1>> My coffee++ just woke me up!
hubot>> coffee: 1
user1>> meetings--
hubot>> meetings: -1
user1>> hubot get count coffee
hubot>> coffee: 1!
```
