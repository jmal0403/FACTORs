# Function Declarations
#' loadGeneList function
#'
#' Load tab delimited file of functional associations of gene a gene set .
#' @param file.IN tab delimited file with three columns -  1) gene identifiers, 2) t-statistic of functional association 1, and 3) t-statistic for gene functional association 2.
#' @return 
#' @export data.frame 
#' @examples
#' loadGeneList()
loadGeneList <- function(file.IN=test.file.01){
read.csv(file.IN, header = TRUE, sep="\t")
}

