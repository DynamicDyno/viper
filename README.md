# Viper

## Committing
Just run this command to do everything needed for a good commit:

`rake commit['my comment here']`

## Linting

### SCSS
[SCSS style guide](https://github.com/causes/scss-lint/blob/master/lib/scss_lint/linter/README.md)

`rake lint_scss`

### Ruby
[Ruby style guide](https://github.com/bbatsov/ruby-style-guide)

`rake lint_ruby`

## Optimizing Images

If you add any images to this repo, they should be compressed as far as possible. We're using three programs to compress images, and you can find the [installation instructions here](https://github.com/JamieMason/ImageOptim-CLI).

To compress all images, run:

`rake optimize_images`

To optimize images but not run JPEGmini (the only compressor without a command line tool), run:

`rake optimize_images_no_jpegmini`
