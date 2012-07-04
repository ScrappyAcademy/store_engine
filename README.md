Overview
========

Welcome to the [Scrappy Academy](http://scrappyacademy.com/)'s group project tackling [Store Engine](http://tutorials.jumpstartlab.com/projects/store_engine.html) from [JumpstartLab](http://jumpstartlab.com/).

In this project the group will work as a team, using Ruby on Rails, to build an online commerce platform.

Goals
=====

* Learn to work as a team on a shared project
* Gain experience using a shared project workflow, using:
  * [GitHub](http://github.com) and esp. pull requests
  * [Pivotal Tracker](www.pivotaltracker.com) for task, story, feature, bug management
  * [Heroku](www.heroku.com) for site hosting
  * [Campfire](https://scrappyacademy.campfirenow.com) for collaborating
* Become familiar with the following technologies:
  * [RVM](http://rvm.io)
  * [Bundler](http://gembundler.com)
  * [Git](http://git-scm.com)
  * [Rails](http://rubyonrails.org)
  * [Rspec](http://rspec.info)
  * [Sass](http://sass-lang.com)
  * [Haml](http://haml.info)
* Use TDD to drive all layers of Rails development including unit, integration, and user acceptance tests
* Utilize [Travis-CI](http://travis-ci.org/) as a continuous integration service
* Practice mixing HTML, CSS, and Rails templates to create an inviting and usable User Interface
* Differentiate responsibilities between components of the Rails stack

Getting Setup
=============

GitHub
------

We're using [github](http://github.com) for all of our source code hosting. To get started and join the fun:

1. [Create a _free_ github account](https://github.com/signup/free)
2. [Contact us](#contact%20us) and request to join the group
3. Check our [Pivotal Tracker project](https://www.pivotaltracker.com/projects/589785/stories)
4. Do some work
5. Submit a [pull request](https://help.github.com/articles/using-pull-requests)

See our [Workflow](#workflow) section for more details.


Pivotal Tracker
---------------

This project is publicly tracked using [Pivotal Tracker](http://www.pivotaltracker.com). To participate:

1. [Signup for a _free_ Pivotal Tracker account](https://www.pivotaltracker.com/signup/new)
2. Check out the [project](https://www.pivotaltracker.com/projects/589785/stories) page
3. Join the project by clicking red the `JOIN PROJECT` button

We'll process your request from there.

Also be sure to check out the documentation on [SCM Post Commits](https://www.pivotaltracker.com/help/api#scm_post_commit) for linking your commit messages to story IDs.


Travis-CI (Optional)
--------------------

If you decided to maintain a personal fork, you'll probably want to use
Travis-CI for it, which is awesome! It's always good to have more continuous
testing. The project is already setup (TODO: ADD commit link here) to work on Travis. All you need to do is (per the [getting started doc](http://about.travis-ci.org/docs/user/getting-started/)):

1. Sign in to Travis-CI with your [GitHub account](http://travis-ci.org/users/auth/github).

  GitHub will ask you for granting read- and write access. Travis CI needs write access for setting up service hooks for your repositories when you request it, but it won't touch anything else.

2. Activate GitHub Service Hook

  Once you're signed in go to your profile page. You'll see a list of your repositories. Flip the on/off switch for each repository that you want to hook up on Travis CI. Then visit the GitHub service hooks page for that project and paste your GitHub username and Travis token into the settings for the Travis service if it is not already pre-filled.

  If your repository belongs to organization or flipping the switch did not set up the hook, please set it up manually on GitHub, it will take just a couple of minutes.

3. Push to your GitHub repo.

Now whenever you push to your personal fork, all of tests will be run on Travis and you will get an email telling you if they passed or failed. We suggest you still run your tests locally, and often (TODO: link to blog post on autotest), as you develop.


Heroku (Optional)
-----------------

TODO


Workflow
--------

Since the team is largely distributed and needs to work asynchronously
the [GitHub workflow](http://scottchacon.com/2011/08/31/github-flow.html) meets
these needs. The workflow boils down to:

* Everyone has full access
* Use the [campfire chatroom](https://scrappyacademy.campfirenow.com)
  * This provides a central location for communications
  * It serves as a living transcript of our process
* Anyone can pull any story to work on
* Pair programming is highly encouraged (thus multiple people can work on the
  same story)
* Master is **_always_** deployable
* Keep branches simple

  This is the base foundation for shipping working software:
  1. Decide to work on something by checking
  [Pivotal Tracker](http://scottchacon.com/2011/08/31/github-flow.html)
  or a new idea you think would be awesome (put it into the tracker)
  2. Branch off master

     ```bash
     $ git checkout -b myfeature master
     ```
  3. Work

     * Regularly commit and push to the server

       ```bash
       $ git push origin myfeature
       ```
     * If you're not sure about a small chunk of code, create a
       [gist](https://gist.github.com/) then post it in campfire / google group.
       Or just open a Pull Request.
  4. Open a Pull Request\*\*
  5. Merge with master after review and delete branch if it is done

     If working locally, merge with a no fast forward when possible:

     ```bash
     $ git checkout master
     Switched to branch 'master'
     $ git merge --no-ff myfeature
     Updating ea1b82a..05e9557
     (Summary of changes)
     $ git branch -d myfeature
     Deleted branch myfeature (was 05e9557).
     $ git push origin master
     ```
  6. Wait for Travis to report all tests pass
  7. Deploy immediately

>_\*\* "Pull requests are dicussions, that improve
>code quality" - Zach Holman [How Github Works](http://zachholman.com/posts/how-github-works/)_

>_While this frees up time from micromanaging, we are still learning,
  and want to learn together. So we will have code reviews (for now)
  before merging. The review process is simple:_

>  * _Once you want something to go back into master submit a pull
      request_
>  * _Email notifications will be sent, and messages added to campfire. As soon
      as a majority of people sign off on it (fun time to use
      [Emoji](https://gist.github.com/981817) you can merge_
>  * _If there is something more, group feedback will be provided to
      help guide you; or we can submit it for a group pair session the
      following week_



Tutorials
---------

If you need some help on various topics check out the tutorials below:

* [RVM](http://tutorials.jumpstartlab.com/topics/environment/rvm.html)
* [Bundler](http://tutorials.jumpstartlab.com/topics/environment/bundler.html)
* Git & Git Workflow
  * [Common Git Practices](http://tutorials.jumpstartlab.com/topics/environment/git_strategy.html)
  * [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
  * [How GitHub Works](http://zachholman.com/posts/how-github-works/)
  * [How GitHub Uses GitHub to Build GitHub](http://youtu.be/MQZoy3VU3io?hd=1)
  * [Product Design](http://warpspire.com/posts/product-design/)
  * [Pull Requests 2.0](https://github.com/blog/712-pull-requests-2-0)
* [Heroku](http://tutorials.jumpstartlab.com/topics/environment/heroku.html)
* Rspec
  * [RSpec and BDD](http://tutorials.jumpstartlab.com/topics/internal_testing/rspec_and_bdd.html)
  * [RSpec Practices](http://tutorials.jumpstartlab.com/topics/internal_testing/rspec_practices.html)


Contact Us
==========

* GitHub: https://github.com/ScrappyAcademy
* Twitter: [Sir Scrappy](https://twitter.com/scrappyacademy)
* Google Groups: https://groups.google.com/d/forum/scrappyacademy
