# ngrok

[**ngrok**](http://ngrok.com/) packaged as a Ruby gem! This is partly to allow easy installation (although hopefully ngrok should be installable [with homebrew soon](https://github.com/Homebrew/homebrew/pull/23732)), and partly as a fun proof-of-concept.

This doesn't currently work on Windows.

## Installation

Add this line to your application's Gemfile:

    gem 'ngrok'

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install ngrok

## Usage

Start your ngrok tunnel like normal:

    $ ngrok 8000

For full usage examples see <https://ngrok.com/usage>.

## Why?

Why not just install the ngrok binary normally? E.g.:

```bash
curl -O https://dl.ngrok.com/darwin_amd64/ngrok.zip && unzip ngrok.zip -d /usr/local/bin
```

### Pros
* One line to install & uninstall (with `gem uninstall`)
* Manage multiple versions of ngrok on your system
* Automatically selects the right binary for your OS
* Works with [Bundler](http://bundler.io/)

### Cons
* Gem contains multiple binaries (so it's a bigger download)
* No Windows support (yet)
* The gem installs ngrok in a bit of a crazy way (see below)

## How?

The binaries for the various OSes are kept in the `/vendor` directory. When the gem is installed, we detect the current OS with `Rbconfig` (adapted from [Selenium](https://github.com/SeleniumHQ/selenium/blob/master/rake-tasks/checks.rb)) and select the right binary.

Then we set up a daemon that watches the file system (with [listen](https://github.com/guard/listen)), to wait for the placeholder (Ruby) binary to be installed, and replace it with the appropriate ngrok binary. 

If there's a more elegant way to make this work, please let me know :smile:! Just open an [issue](https://github.com/alexpeattie/ngrok-gem/issues) or [pull request](https://github.com/alexpeattie/ngrok-gem/pulls).