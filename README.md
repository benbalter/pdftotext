# Pdftotext

*A Ruby wrapper for the `pdftotext` command line library*

## Installation

1. You must first install [Poppler](http://poppler.freedesktop.org/). On OS X this can be done with `brew install poppler` if you have Homebrew installed
2. Add `gem pdftotext` to your project's Gemfile
3. `bundle install`

## Usage

```ruby
text = Pdftotext.text('path-to.pdf')
=> "The text of the PDF"

pages = Pdftotext.pages('path-to.pdf')
pages.first.number
=> 1
pages.first.text
=> "The text of the PDF"
```
