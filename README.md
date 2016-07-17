# Beeston Girl Guiding

Static site for Beeston Girl Guiding Divisions.
To replace website currently at: [beestongirlguiding.org.uk](http://beestongirlguiding.org.uk), constructed with BT Community Web Kit.

## How?
New website to be made with Hugo Static Site Generator, and hosted on GitHub.
This allows for version control as well as a discussion platform for development, questions and changes.

## Publishing
Using static pages means that all content pages are written in [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet  "Markdown Cheatsheet") (including this one), and a simple readup of the Markdown syntax gets you ready to write and edit content. Most things are written in plaintext.
A user-friendly publishing system (that makes GitHub the backend, rather than having to go through commits and pull requests) for blog posts and the like is on its way.

## Developing
We are using [Hugo](http://gohugo.io) to generate a static website. To develop this on your own environment, you need to install the following:
- [Hugo](http://gohugo.io) (duh)
- [Ruby](https://www.ruby-lang.org/en/downloads/) (to get the next thing)
- [RubyGems](https://rubygems.org/pages/download) (to get the next thing, again)
Then open up your favourite command line interface and run:
```bash
gem install bundle
bundle install
compass compile
```
If all goes to plan, we can start.
### Starting
Open up two terminals and run:
```bash
compass watch
```
To keep all the stylish things up to date and,
```bash
hugo server -w -D
```
To make the website happen.
Hugo will then tell you where the website is, which by default is [http://localhost:1313](http://localhost:1313).