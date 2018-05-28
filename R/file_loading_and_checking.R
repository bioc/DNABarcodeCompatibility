#' @title 
#' Loading and formatting DNA barcodes.
#'
#' @description 
#' Load the file containing DNA barcodes and analyze barcode content.
#'
#' @usage 
#' file_loading_and_formatting(file)
#'
#' @param file The input data file that contains 2 columns separted by a space or a tabulation, namely the sequence identifiers and corresponding DNA sequence.
#'
#' @details 
#' This function loads the DNA barcodes from the input file and checks barcodes for unicity (identifier and sequence), DNA content, and equal size. It also calculates the GC content and detects the presence of homopolymers of length > 3.
#'
#' @return 
#' Returns a dataframe containing sequence identifiers, nucleotide sequence, GC content, presence of homopolymers.
#'
#' @examples
#' write.table(DNABarcodeCompatibility::illumina, file <- tempfile(), row.names = FALSE, col.names = FALSE, quote=FALSE)
#' file_loading_and_checking(file)
#' 
#' @export
#' 

file_loading_and_formatting = function(file){
  index = read_index(file) 
  if (!is.null(index) && index_check(index)){#  if no issue
    index_number <<- nrow(index)
    index  = index %>% mutate (GC_content = get_index_GC_content(index), 
                               homopolymer = get_index_homopolymer(index))
    index_distances <<- index_distance(index)
    return (index)
  }else{
    return(NULL)
  }
}
