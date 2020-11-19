# author: Tiffany Timbers
# date: 2020-01-15

"This script prints out docopt args.
Usage: demo.R <arg1> --arg2=<arg2> [--arg3=<arg3>] [--arg4=<arg4>]

Options:
<arg>             Takes any value (this is a required positional argument)
--arg2=<arg2>     Takes any value (this is a required option)
[--arg3=<arg3>]   Takes any value (this is an optional option)
[--arg4=<arg4>]   Takes any value (this is an optional option)
" -> doc

library(docopt)

opt <- docopt(doc)

#' main function to output arguments
#'
#' @param opt argument object
#'
#' @return
#' @export
#'
#' main(opt)
main <- function(opt) {
    print(opt$arg4)
    print(opt)
    print(typeof(opt))
}

main(opt)
