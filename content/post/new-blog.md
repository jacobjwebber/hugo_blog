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

### Installing Hugo

I have been playing with Go so I decided to install Hugo from sources, with a hope to maybe poking around in the source
code at some point.
With Go installed and a GOPATH environment variable set:

> cd $GOPATH/src && go get -v github.com/spf13/hugo

will cd to your go src dir and download all of the hugo source code, as well as its dependendencies, then compile it
all. If you have $GOPATH/bin added to your $PATH then 

> hugo help

will work as expected.


