#' GAF Reader Function
#'
#' @description Reads a GAF format file and returns a data table.
#' @param gaf Path to a GAF (or compressed gaf) file
#'
#' @return A data frame containing the information parsed from the GAF file.
#' @export
#'
#' @examples
#' pig.gaf <- read.gaf("goa_pig_gaf.gz")
#' head(pig.gaf)
read.gaf <- function(gaf_file){
  gaf_colnames <- c("DB", "DB_Object_ID", "DB_Object_Symbol", "Qualifier", "GO_ID", "DB:Reference", "Evidence Code",
                    "With (or) From", "Aspect", "DB_Object_Name", "DB_Object_Synonym", "DB_Object_Type",
                    "Taxon and Interacting taxon", "Date", "Assigned_By", "Annotation_Extension", "Gene_Product_Form_ID")
  return(read.delim(gaf_file, col.names = gaf_colnames, sep = "\t",
                    comment.char = "!", header = FALSE, stringsAsFactors = FALSE))
}

#' GPA Reader Function
#'
#' @description Reads a GPA format file and returns a data table.
#' @param gaf Path to a GPA (or compressed GPA) file
#'
#' @return A data frame containing the information parsed from the GPA file.
#' @export
#'
#' @examples
#' pig.gpa <- read.gpa("goa_pig_gpa.gz")
#' head(pig.gpa)
read.gpa <- function(gpa_file){
  gpa_colnames <- c("DB", "DB_Object_ID", "Qualifier", "GO_ID", "DB:Reference", "Evidence Code", "With (or) From",
                    "Interacting_Taxon_ID", "Date", "Assigned_By", "Annotation_Extension", "Annotation_Properties")

  return(read.delim(gpa_file, col.names = gpa_colnames, sep = "\t",
                  comment.char = "!", header = FALSE, stringsAsFactors = FALSE))
}

#' GPI Reader Function
#'
#' @description Reads a GPI format file and returns a data table.
#' @param gaf Path to a GPI (or compressed GPI) file
#'
#' @return A data frame containing the information parsed from the GPI file.
#' @export
#'
#' @examples
#' pig.gpi <- read.gpi("goa_pig_gpi.gz")
#' head(pig.gpi)
read.gpi <- function(gpi_file){
  gpi_colnames <- c("DB", "DB_Object_ID", "DB_Object_Symbol", "DB_Object_Name", "DB_Object_Synonym",
                    "DB_Object_Type", "Taxon", "Parent_Object_ID", "DB_Xref(s)", "Gene_Product_Properties")

  return(read.delim(gpi_file, col.names = gpi_colnames, sep = "\t",
                    comment.char = "!", header = FALSE, stringsAsFactors = FALSE))
}
