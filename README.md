A very simple Sinatra app that I've used to explore some of the current SASS debugging options available.

Tested with Chrome 30.0.1599.69 and Firefox 24.0.

## Running locally

    $ bundle
    $ ruby app.rb
    # Visit http://localhost:4567 in the browser

### Standard SASS compilation

    $ rm -f public/assets/* && \
    sass \
    assets/stylesheets/application.scss:public/assets/application.css

* Chrome references the generated CSS file
* Firefox references the generated CSS file

### Compilation with debug-info

    $ rm -f public/assets/* && \
      sass --debug-info \
      assets/stylesheets/application.scss:public/assets/application.css

* Chrome references the generated CSS file.
* Firefox references the original SCSS file.

### Compilation with sourcemap (requires SASS 3.3.0)

    $ rm -f public/assets/* && \
      sass --sourcemap \
      assets/stylesheets/application.scss:public/assets/application.css

* Chrome references the original SCSS file
  * *NOTE* You need to tick 'Enable CSS source maps' in Chrome's Developer Tools settings
  * *NOTE* Chrome expects to be able to be able to use a relative path from the generated CSS to the SCSS files
* Firefox references the generated CSS file
