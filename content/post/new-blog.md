+++
date = "2016-12-29T20:07:17Z"
title = "Building a Personal Website with Hugo"
draft = true

+++

## New Blog!

Where better to start a new blog than a blog post about how I made this blog.

Over the last Christmas holidays I have started playing around with the Go programming languages. Wow! What a great
programming language! At work I mainly wrote Java code, and at University I mainly use C. Go seems to combine a lot of
the positive aspects of both. It also has a very interesting and neat model for writing parallel or concurrent programs.
I hope to write a blog about this soon as I have been working on porting some OpenMP code over to Go. 

To show all this off I thought I had better make a personal website. I already had already set up a github pages repo
and just needed some pages to fill it. I am not a big fan of (or very good at) doing web development or building GUIs of
any sort, so wanted some way of automating this process. I read about Hugo, which is a static web generator built in Go,
and it seemed to be a good fit for what I wanted.

The basic principle is that you write a bunch of markdown files for all your posts and hugo will render it into a
beautiful website. It works using the HTML templating library for Go. I haven't really looked into this yet, but it
looks quite similar, at least superficially, to Mustache, which I used at my old job with Java. 
### Installing Hugo

I have been playing with Go so I decided to install Hugo from sources, with a hope to maybe poking around in the source
code at some point.
With Go installed and a GOPATH environment variable set:

```
cd $GOPATH/src && go get -v github.com/spf13/hugo
```

will cd to your go src dir and download all of the hugo source code, as well as its dependendencies, then compile it
all. If you have $GOPATH/bin added to your $PATH then 

```
hugo help
```

will work as expected. Excellent!

Now, ours is the privelege of easily building a web site.

### My First (Hugo) Website

First use 

```
hugo new site blog
```

to create a new directory with the basic files in. Then content can be added with the command 

```
hugo new post/new-blog.md
```

This creates a new directory 'post', which will be mirrored in the site structure. Before generating a web page I had to
add a theme. I am using the [nix](https://github.com/LordMathis/hugo-theme-nix) theme, which I have a very high opinion
of. Many thanks indeed to Lord Mathis for making it and making it open source.

```
mkdir themes
cd themes
git clone https://github.com/LordMathis/hugo-theme-nix
```

Hugo has a localhost server built in for your web site. It will watch your markdown files for changes. Great!

```
hugo server --theme=hugo-theme-nix --buildDrafts
```

Without the 'server' argument, Hugo will just output the html files/css etc into a 'public' dir.

At present I manually copy this over into my github pages repo. I intend to automate this later. I will probably end up
using Travis CI or something similar to build and deploy whenever I push to a specific branch in my Hugo [raw files git
repo](https://github.com/jacobjwebber/hugo_blog).  
