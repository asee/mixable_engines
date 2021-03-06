mixable_engines
===============

In the old Engines plugin (used before the built-in engines arrived in rails 2.3), controller and helper classes were mixed together.  That is, if an engine had a FooController, and your application also had a FooController, you could use the actions in both controllers.  In the built-in Engines functionality in Rails 3+, this does not occur.  Your application's FooController replaces the engine controller entirely. This gem reverts to the old behavior.

Usage
-----

In your engine's engine.rb file, include the following line:

```ruby
config.mixable_engines.paths << File.expand_path("#{config.root}")
```

That's it!

Contributing to mixable_engines
-------------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2011-2014 ASEE and Andrius. See LICENSE.txt for further details.

