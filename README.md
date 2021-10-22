# Learning ReScript 

* Please make pull requests to add more examples to this repo if you wish. If you're a beginner then add your
  example to the beginning of the .res file concerned, and if it's an advanced example, add it to the bottom. 
  Would be super cool to create an open-source heap of examples for everyone to play with. 

Acknowledgement: much of the foundation of this content is taken from codingLawyer's really in-depth tutorial 
on ReasonML for freecodecamp. I just wrote it out, and changed things to adhere with ReScript, and took some 
things further to explore. I also used the rescript docs. But I intend to add to it over time as I discover more. 

Find his 6-hour tutorial here: https://www.youtube.com/watch?v=sjWsAYJF8BA&t=10908s

Learning ReScript from scratch knowing only Javascript is kinda really an uphill battle. Most others who learn 
ReScript know TypeScript or something before they learn ReScript. This kinda thing can be really intimidating 
if you've never seen variant types before: `option<array<LoadTopContributors.LoadTopContributors_inner.t_patrons>>`

This repo is basically a crap ton of examples
of how rescript works, for dummies rather than pros. 

If you're struggling with ReScript because you don't have loads of XP in other typed languages then you're 
in the right place here. 

We won't be doing things quickly and moving on, we'll explore details and rehash examples in an inefficient way. 
Messing around with the code and running it is basically what I was doing and what I encourage you to do.  

So basically, this is the docs and examples from tutorials, written out so that you can run them, hover over things 
and see their types and mess with them. Plus, if any rescript updates in future break them, we'll be able to run the 
compiler, see where they're broken and update them.. much better than an ageing video tutorial you can't interact with. 

Also there's no way to learn coding better than uploading code that others will scrutinize - a good motivator.  

## So why is ReScript so Great? 
  - it's bleedin' fast
  - the compiler is fantastic 
  - it's 100% interoperable with javascript, meaning you can convert your project from JS one file at a time.  
  - it forces you to write much safier code 
  - it forces you to write much more performant code

## Tips

Split your terminal and have your dollar sign in the folder `learning-rescript` and the ReScript compiler running 
in the RHS window. 

Practice 'spaced learning' which means tackling and messing around with the examples covering say 3 topics a day so 
that it can sink in rather than you spending 6 hours a day on cramming. All the ideas will merge in your head and you 
won't remember them distinctly. 

## Installation

```sh
npm install
```

## Build

- Build: `npm run build`
- Clean: `npm run clean`
- Build & watch: `npm run start`  // do this is the RHS of your split terminal 

## Run

```sh
node src/TheFileYoureWorkingWith.bs.js   
```

## Build in ReScript formatter 

```sh
rescript format -all
```