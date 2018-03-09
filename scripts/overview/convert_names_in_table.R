# Pull the supplemental tables from the DropBox and rename clusters. 
converter = inventory_get("overview_old_labels") %>% read.table(header = T, stringsAsFactors = F)
converter = setNames(converter$old_ident, converter$ident)
converter %<>% c("C1_5" = "BLD", "C6_8" = "TEC")
SupplTable1a_C1_C10 = read_delim("~/Dropbox/2017Oct_scRNA_draft/tables/overview clusters relabeled/SupplTable1a C1-C10.txt", 
                                 "\t", escape_double = FALSE, comment = "#", 
                                 trim_ws = TRUE)
SupplTable1b_C1_C10 = read.delim("~/Dropbox/2017Oct_scRNA_draft/tables/overview clusters relabeled/SupplTable1b C1-C10.txt", 
                                 sep = "\t", comment = "#", stringsAsFactors = F)
SupplTable1a_BLD1_etc = SupplTable1a_C1_C10
SupplTable1b_BLD1_etc = SupplTable1b_C1_C10
SupplTable1a_BLD1_etc$cluster %<>% extract(converter, .)
SupplTable1b_BLD1_etc$cluster %<>% extract(converter, .)
table(SupplTable1a_BLD1_etc$cluster)
table(SupplTable1b_BLD1_etc$cluster)
assertthat::assert_that(!any(is.na(SupplTable1a_BLD1_etc$cluster)))
assertthat::assert_that(!any(is.na(SupplTable1b_BLD1_etc$cluster)))
SupplTable1a_BLD1_etc = SupplTable1a_BLD1_etc[order(SupplTable1a_BLD1_etc$cluster), ]
SupplTable1b_BLD1_etc = SupplTable1b_BLD1_etc[order(SupplTable1b_BLD1_etc$cluster, SupplTable1b_BLD1_etc$avg_diff), ]
write.table(SupplTable1a_BLD1_etc, "~/Dropbox/2017Oct_scRNA_draft/tables/overview clusters relabeled/SupplTable1a BLD1 etc.txt", 
            quote = F, sep = "\t", row.names = F, col.names = T)
write.table(SupplTable1b_BLD1_etc, "~/Dropbox/2017Oct_scRNA_draft/tables/overview clusters relabeled/SupplTable1b BLD1 etc.txt", 
            quote = F, sep = "\t", row.names = F, col.names = T)
