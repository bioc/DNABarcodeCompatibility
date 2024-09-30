// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// distance
unsigned long int distance(std::string sequence1, std::string sequence2, std::string metric, unsigned int cost_sub, unsigned int cost_indel);
RcppExport SEXP _DNABarcodeCompatibility_distance(SEXP sequence1SEXP, SEXP sequence2SEXP, SEXP metricSEXP, SEXP cost_subSEXP, SEXP cost_indelSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::string >::type sequence1(sequence1SEXP);
    Rcpp::traits::input_parameter< std::string >::type sequence2(sequence2SEXP);
    Rcpp::traits::input_parameter< std::string >::type metric(metricSEXP);
    Rcpp::traits::input_parameter< unsigned int >::type cost_sub(cost_subSEXP);
    Rcpp::traits::input_parameter< unsigned int >::type cost_indel(cost_indelSEXP);
    rcpp_result_gen = Rcpp::wrap(distance(sequence1, sequence2, metric, cost_sub, cost_indel));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_DNABarcodeCompatibility_distance", (DL_FUNC) &_DNABarcodeCompatibility_distance, 5},
    {NULL, NULL, 0}
};

RcppExport void R_init_DNABarcodeCompatibility(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}