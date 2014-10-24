# name: OML Linker
# about: Takes any Outwitters "outwitters://" link and transforms it into an oembeddable link
# version: 0.1
# authors: Alex Okafor

# uses server side to ensure markdown pipeline on the server knows about it
register_asset "javascripts/oml_linker.js", :server_side