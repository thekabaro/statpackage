#' @title My Read Function (Lab 2)
#'
#' @param csv document to read
#'
#' @return Read into table
#' @export
#'
#' @examples
#' \dontrun{myread("ORCHARD.csv")}
myread=function(csv){
  fl=paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}
