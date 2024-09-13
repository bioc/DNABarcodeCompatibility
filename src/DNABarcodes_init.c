// #include <R.h>
// #include <Rinternals.h>
// 
// #include <R_ext/Rdynload.h>


// SEXP DNABarcodes_distance(SEXP sequence1SEXP, SEXP sequence2SEXP, SEXP metricSEXP, SEXP cost_subSEXP, SEXP cost_indelSEXP);
// 
// R_CallMethodDef callMethods[]  = {
//   {"DNABarcodes_distance", (DL_FUNC) &DNABarcodes_distance, 5},
//   {NULL, NULL, 0}
// };
// 
// void R_init_DNABarcodes(DllInfo *info) {
//   R_registerRoutines(info, NULL, callMethods, NULL, NULL);
//   R_useDynamicSymbols(info, FALSE);
// }
// 
