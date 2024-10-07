# custom function to print images with inverse colours for revealjs slides
# but not other formats
print_image <- function(filepath){
  # if output is revealjs (i.e., html but not "html", since I use html or revealjs)
  if(knitr::is_html_output(excludes = "html")) {
    # print colours inverted
    # magick::image_negate(magick::image_read(filepath))
    magick::image_read(filepath)
  } else {
    # otherwise (html or pdf), print them normally
    magick::image_read(filepath)
  }
}