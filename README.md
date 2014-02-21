# Ajax Tabs Challenge

##Learning Competencies
- Indentify performance issues.
- Use ajax to your advantage to fetch data on demand.
- Understand and use window.location object and onhashchange event.

##Summary
This is a challenge from the real world. The [challenge page](https://socrates.devbootcamp.com/challenge) on socrates used to take several minutes to load. There are a lot of challenges and the views took too long to render. The user will never look at all the challenges at once, can we fake it? can we one view at a time without the user noticing much difference? Yes, we can and we did. The challenges page on socrates went down from few minutes to fraction of a second to load...nice job team!
This app has a series of challenges that are categorized by cohort, similar to socrates. The index page currently takes several minutes to render. Your job is to make it load in a fraction of a second.

### Setting Up the Application

Get the application running as follows:

```text
$ cd source
$ bundle install
$ rake db:setup
```

The `rake db:setup` command could take a few minutes.  Once it's done run `rails server` and visit [http://localhost:3000](http://localhost:3000).

We use a gem called activerecord-import to mass import data into the database. Here is an issue to be aware of:  [this issue](https://github.com/zdennis/activerecord-import/wiki/Callbacks)
It should take a few seconds to load.  If you look at the last line of your server logs, you'll see it telling you how much time was spent rendering the views versus how much time was executing `ActiveRecord` methods.  Where's the bottleneck?

### Make it fast!

Your goal is to get the index page to load in under **200ms**.  Yes, that's milliseconds. You are NOT allowed to use any caching techniques.

##Releases
###Release 0
- Identify why the app is so slow. Find the offending code(s) responsible for the
performance hit.
- Use ajax to fetch the data from each tab dynamically instead of front loading everything.

###Release 1
Make each tab linkable using hastags, similar to [socrates](https://socrates.devbootcamp.com/challenges#week-3-2-wargames).
