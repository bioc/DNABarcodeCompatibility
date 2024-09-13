#' @title 
#' Calculate distance between two barcodes.
#'
#' @description 
#' Xalculates the distance between two barcodes. The user may choose one of several distance metrics (\code{"hamming"}, \code{"seqlev"},
#' \code{"levenshtein"}, \code{"phaseshift"}). Filters a list of barcode combinations for a given distance metric 
#' (hamming or seqlev) and threshold in order to produce a list of barcodes
#' satisfying the distance constraints.
#'
#' @usage 
#' distance(sequence1, sequence2, metric=c("hamming","seqlev","levenshtein", "phaseshift"), cost_sub=1, cost_indel=1)
#'
#' @param sequence1 The first sequence (a string).
#' @param sequence2 The second sequence (a string).
#' @param metric The distance metric which should be calculated.
#' @param cost_sub The cost weight given to a substitution.
#' @param cost_indel The cost weight given to insertions and deletions.
#'
#' @details 
#' The "hamming" distance is suitable for correcting substitution errors. 
#' The "seqlev" distance is suitable for correcting both 
#' substitution and insertion/deletion errors.
#'
#' @return 
#' The distance between the two sequences.
#'
#' @examples
#' distance("AGGT", "TTCC")
#' distance("AGGT", "TTCC", metric="seqlev")
#'
#' @seealso 
#' \code{\link{get_all_combinations}}, 
#' \code{\link{get_random_combinations}}
#' 
#' @references Buschmann, T. and Bystrykh, L. V. (2013) 
#' Levenshtein error-correcting barcodes for multiplexed DNA sequencing. 
#' BMC bioinformatics, 14(1), 272.  Available from \url{http://www.biomedcentral.com/1471-2105/14/272}.
#' @references Levenshtein, V. I. (1966).
#' Binary codes capable of correcting deletions, insertions and reversals.
#' In Soviet physics doklady (Vol. 10, p. 707).
#' @references Hamming, R. W. (1950). 
#' Error detecting and error correcting codes.
#'  Bell System technical journal, 29(2), 147-160.
#' @export
#' 
#' 

# TODO seealso section
distance = function(sequence1, sequence2, metric = c("hamming", "seqlev", "levenshtein", 
    "phaseshift"), cost_sub = 1, cost_indel = 1) {
    metric <- match.arg(metric)
    
    if ((metric == "hamming" || metric == "phaseshift") && (nchar(sequence1) != nchar(sequence2))) {
        msg <- sprintf("%s metric is not defined for strings of unequal length (|sequence1|==%i but |sequence2|==%i).", 
            metric, nchar(sequence1), nchar(sequence2))
        warning(msg)
    }
    
    return(.distance(sequence1, sequence2, metric, cost_sub, cost_indel))
}
 
