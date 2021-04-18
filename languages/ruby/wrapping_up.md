# Wrapping Up Ruby

## Core Strengths

- pure OO: uniform and consistent
- duck typing: truer polymorphic designs
- modules and open classes: lets attach behaviour 

Ideal as:
 - a scripting language
 - web development tools

Productive but
 - hard to compile
 - performance suffer

## Scripting

- spider to scrape web pages
- local build environments
- automated tests

Wide variety of libraries included.
Thousands of gems or prepackaged plug-ins.

## Web Development

Rails:

- well-understood MVC paradigm
- few lines of configuration
- structure alwats consistent and well-understood
- well-documented conventions
- different plug-ins available

## Time to Market

- productivity
- beautiful syntax
- community of programmers, tools and plug-ins
- great language for getting a viable product to market quickly

Scalability is limited in some ways:
- distributed transactions
- fail-safe messaging
- internationalization

Adequate considering time-to-market pressures.

## Weaknesses

- performance: open classes, duck typing, method_missing defeat the very tools that enable compilation and associated performance gains
- concurrency and oop: wrapping behaviour around state that can be changed leads to serious problems with concurrency
- type safety: although duck typing enables concise, readable code, static typing makes it easier to provide IDEs