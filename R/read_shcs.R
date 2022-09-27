#' Read datasets from the Swiss HIV Cohort Study
#'
#' @param shcs_dir chr. Path of the directory containing the SHCS data.
#' @param dir chr. Path to other directory.
#' @param lazy lgl. Argument pass to read_delim. Default is FALSE.
#' @param ... other Argument pass to read_delim.
#' @name read_shcs
NULL



#' @export
#' @rdname read_shcs
#' @importFrom readr read_delim
read_shcs_admin <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "REGDATE", "BORN", "SEX", "CENTER1", "LAST_CENTER", "LAST_FUP_DATE",
       "LAST_LAB_DATE", "LAST_INFO_DATE", "LAST_FUP_PHYSICIAN", "LAST_FUP_STUDYNURSE",
       "LAST_FUP_SOURCE", "FIRST_C_DATE", "FOPH_REPORT", "FOPH_DATE",
       "STOP", "STOPDATE", "LIVEDATE", "EXITDATE", "EXIT_WHY", "AUTOPSY",
       "REGION", "ICD10_MC", "W_CONSENT", "GENET_CONSENT_DT", "GENET_REFUSED_DT",
       "ALU", "COMMENTS")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"admin.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)

}

#' @export
#' @rdname read_shcs
read_shcs_center <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("CENTER", "CENTER_NAME")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"center.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_clinical <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "CLIN_ID", "CLIN_DATE", "RELIABILITY", "COMMENTS", "PHYSICIAN",
       "STUDY_NURSE", "CENTER", "SOURCE", "CHECK_CHART", "SEND_DATE",
       "CHECK_DATE", "PAID_DATE")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"clinical.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_cvrisk <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "CARDIODATE", "SMOKE", "WEIGHT", "WAIST", "HIP", "SYSTOLIC",
       "DIASTOLIC", "FAT_LOSS", "FAT_ACCU", "COMMENTS", "PHYSICIAN",
       "STUDY_NURSE", "CENTER", "SOURCE", "SMOKE_NB", "CURRENT_HEIGHT")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"cvrisk.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_dborn <- function(dir,lazy = F,...){
  cn <- c("ID", "D_BORN")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(dir,"SHCSDBORN.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_dis <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "NEWDATE", "DISEASE", "COMMENTS", "DIAGNOSIS", "PHYSICIAN",
       "STUDY_NURSE", "CENTER", "SOURCE", "PAID_DATE", "CHECK_CHART",
       "RELAPSE", "CANCER")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"dis.csv"),delim = ",",
                    col_types = col_types ,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_med_drug <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "SUBSTANCE_ID", "INDICATION", "DRUG", "STARTDATE", "STARTS",
       "STOPDATE", "STOPS", "STOP_WHY")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"med_drug.csv"),delim = ",",
                    col_types = col_types ,lazy = lazy,...)

}

#' @export
#' @rdname read_shcs
read_shcs_med_drug_code <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("DRUG_CODE", "DESCRIPTION", "CATEGORY_ID")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"med_drug_code.csv"),delim = ",",
                    col_types = col_types ,lazy = lazy,...)

}

#' @export
#' @rdname read_shcs
read_shcs_fup <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "FUPDATE", "EARNPRO", "EARNINS", "EARNREL", "EARNSAV",
       "EARNOTH", "EARNOTH_DET", "EARN_PERC", "EARN_NOI", "EARNUNE",
       "ND_HOSP", "ND_CEN", "ND_CEN_NOI", "ND_OTHER", "ND_OTHER_NOI",
       "ND_Wfile.path", "ABILITY", "ABILITY_NOI", "WORKED", "WORKED_NOI",
       "TAGS", "PHYSICIAN", "STUDY_NURSE", "CENTER", "SETTING", "SOURCE",
       "CLINIC", "CONSENT2_DATE", "CONSENT2_SIGN", "FUP_A", "ND_DRUG",
       "ND_CVD", "S_ALONE", "S_SPOUSE", "S_WOMAN", "S_MAN", "S_FAMILY",
       "S_CHILD", "S_FRIENDS", "S_INSTITUTION", "P_STABLE", "P_STABLE_SEX",
       "P_STABLE_CUSE", "P_STABLE_POS", "P_OCCAS", "P_OCCAS_SEX", "P_OCCAS_CUSE",
       "ALCOHOL", "ALCOHOL_CONS", "FATfile.pathD", "PSYCHIATRIC", "PRISON",
       "DRUG_PROG", "TROPICS", "HERO_IV", "HERO_IV_F", "COCA_IV", "COCA_IV_F",
       "OTHER_IV", "OTHER_IV_DRUG", "OTHER_IV_F", "HERO_NI", "HERO_NI_F",
       "COCA_NI", "COCA_NI_F", "CANA_NI", "CANA_NI_F", "OTHER_NI", "OTHER_NI_DRUG",
       "OTHER_NI_F", "DEPRESSION", "ANTIDEPRESS", "DIAG_PSY", "DIAG_OTHER_PHYS",
       "RECEPTIONDATE", "LIBIDO", "ERECTION", "ACTIVITY_W", "ACTIVITY_H",
       "ACTIVITY_L", "YF_VACCIN", "ACTIVITY_HH", "ALC_FREQ", "ALC_QUANT",
       "ALC_BINGE", "COG_FREQ", "COG_CONC", "COG_SLOW", "ANAL_CANCER_METH",
       "ANAL_CANCER_DATE", "ANAL_CANCER", "DEPR_FIRSTEVENT", "DEPR_DIAGTOOL",
       "DIAG_SHCS_PHYS", "COV_TEST", "COV_CONTACT", "COV_VACCINE", "P_OCCAS_OSEX",
       "P_STABLE_OSEX", "P_OCCAS_NUMBER", "ND_STD_SCREENING", "COV_INFECTION",
       "COV_INFECTION_DATE")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"fup.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_hcv <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "HCV_DATE", "SCCS_PART", "SCCS_ID", "AGREES")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"hcv.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_hiv_subtype <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "SUBTYPE")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"hiv_subtype.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_hospital <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "IN_DATE", "OUT_DATE", "REASON", "CENTER", "COMMENTS")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"hospital.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_iris <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "DISEASE", "IRISDATE", "COMMENTS")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"iris.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_lab <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "LABDATE", "CD4DATE", "LEU", "HEM", "PLA", "LYM", "LYMP",
       "CD3", "CD3P", "CD4", "CD4P", "CD8", "CD8P", "AGP24_Q", "AGP24",
       "ICDP24_Q", "ICDP24", "RNA", "WEIGHT", "CELLS_TAKEN", "SERUM_TAKEN",
       "PLASMA_TAKEN", "DNA_TAKEN", "SAMPLE_DAY", "SAMPLE_TIME", "TBC",
       "TBC_TSR", "TBC_TESTDATE", "SYPH_Q", "VDRL_Q", "VDRL", "SYPH_DATE",
       "CMV", "CMV_DATE", "TOXO", "TOXO_DATE", "PHYSICIAN", "STUDY_NURSE",
       "CENTER", "SOURCE", "STATUS_REC", "FUP_LAB", "COMMENTS", "LAB_A",
       "RNA_LIMIT", "RNA_METHOD", "AGHBS", "ANTIHBS", "ANTIHBC", "HEB_DATE",
       "ANTIHCV", "HEC_DATE", "HCV_GEN", "HCV_GEN_DATE", "HCV_RNA",
       "HCV_RNA_LIMIT", "HCV_RNA_UNIT", "HCV_RNA_DATE", "HCV_RNA_METH",
       "SYPH", "HCV_RNA_QUAL", "AGHBE", "AGHBE_DATE", "ANTIHBE", "ANTIHBE_DATE",
       "ANTIHDV", "ANTIHDV_DATE", "HBVDNA", "HBVDNA_QUAL", "HBVDNA_DATE",
       "HBVDNA_METH", "HBVDNA_LIMIT", "HBVDNA_UNIT", "IMPORT", "TBI",
       "TBI_METHOD", "TBI_TESTDATE", "SYPH_METHOD", "VDRL_METHOD")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"lab.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)

}

#' @export
#' @rdname read_shcs
read_shcs_lab2 <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "LABDATE", "ITEM", "FASTING", "VALUE", "NORM_SUP", "NORM_INF",
       "PHYSICIAN", "STUDY_NURSE", "CENTER", "SOURCE", "COMMENTS")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"lab2.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_modif_art <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "MODDATE", "ENDDATE", "TREATMENT", "NUM_ART", "NUM_NRTI",
          "NUM_NNRTI", "NUM_PI", "NUM_NTRTI", "NUM_FI", "NUM_INTI", "NUM_OTHERS",
          "HAART")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"modif_art.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_mborn <- function(dir, lazy = F,...){
  cn <- c("ID", "M_BORN")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(dir,"SHCS_MBORN.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_obstet_event <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "OBSTET_EVENT", "O_EVENT_DATE", "PHYSICIAN", "CENTER",
       "COMMENTS")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"obstet_event.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_pat <- function(shcs_dir = get_shcs_dir(), lazy = F,...){

  cn <- c("ID", "BORN", "SEX", "HEIGHT", "REGDATE", "CONSENT_DATE", "CONSENT_SIGN",
       "GEN_INFORM", "ETHNICITY", "HIV_EARLIER", "HIV_POSDATE", "HIV_POSDOCDATE",
       "HIV_NEG", "HIV_NEGDATE", "HIV_NEGDOC", "IVD", "X_PREF", "RISK",
       "EDUCATION", "PROFESSION", "PHYSICIAN", "STUDY_NURSE", "FIRST_CENTER",
       "FIRST_SOURCE", "CENTER", "SOURCE", "VIRUS_TYPE", "SUPDATE",
       "CV_POS_FAMILY", "CV_DIAB_FAM", "CV_HYPER", "CV_HYPERDATE", "CV_HYPER_TT",
       "CV_SMOKED", "CV_SMOKED_PY", "PRETREAT", "INFECT_SOURCE", "SEX_REGULAR",
       "SEX_OCCAS", "SEX_ANONYM", "IV_REGULAR", "IV_OTHER", "INFECT_TIME",
       "SEX1_STARTDATE", "SEX1_STOPDATE", "IV1_STARTDATE", "IV1_STOPDATE",
       "SEX2_STARTDATE", "SEX2_STOPDATE", "IV2_STARTDATE", "IV2_STOPDATE",
       "OTHER_STARTDATE", "OTHER_STOPDATE", "INFECT_PLACE", "ALU", "ALC",
       "GENETIC_SEX", "COMMENTS", "INPUTDATE")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"pat.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,... )

}

#' @export
#' @rdname read_shcs
read_shcs_stop <- function(shcs_dir = get_shcs_dir(), lazy = F,...){

  cn<- c("ID", "STOPDATE", "STOP", "STOP_OTH", "EXITDATE", "EXIT_WHY",
    "EXIT_WHY_OTH", "EXIT_PLACE", "EXIT_PLACE_OTH", "AUTOPSY", "COMMENTS",
    "PHYSICIAN", "STUDY_NURSE", "CENTER", "SOURCE", "LIVEDATE", "ICD10_MC",
    "ICD10_SC1", "ICD10_SC2", "ICD10_SC3", "LIFE_INFO", "CHECK_DATE",
    "PAID_DATE", "CODEFORM")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"stop.csv"),delim = ",",
                    col_types = col_types ,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_substance_in_prod <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("CONTAINED_SUBSTANCE_ID", "CONTAINING_PRODUCT_ID", "DOSE",
       "DOSE_VALUE", "DOSE_UNIT")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"med_substance_in_product.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,... )

}

#' @export
#' @rdname read_shcs
read_shcs_substance <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("SUBSTANCE_ID", "NAME", "DRUG_CODE", "TRIAL")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"med_substance.csv"),delim = ",",
                    col_types = col_types ,lazy = lazy,...)

}

#' @export
#' @rdname read_shcs
read_shcs_tailor <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ID", "SEX", "BORN", "REGDATE", "CENTER1", "LAST_FUP_DATE",
       "LAST_LAB_DATE", "LAST_INFO_DATE", "RISKGROUP", "FIRST_C_DATE",
       "C_EVENT", "FIRST_B_DATE", "B_EVENT", "SEROC_DATE", "SEROC_WINDOW",
       "CD4_500_FD", "CD4_200_FD", "CD4_100_FD", "CD4_50_FD", "CD4_500_FV",
       "CD4_200_FV", "CD4_100_FV", "CD4_50_FV", "CD4_AT_REG", "CD4_FIRST_VAL",
       "CD4_FIRST_DATE", "CD4_AT_AIDS", "CD4_LAST_VAL", "CD4_LAST_DATE",
       "RNA_FIRST_VAL", "RNA_FIRST_DATE", "RNA_LAST_VAL", "RNA_LAST_DATE",
       "RNA_LAST_LIMIT", "ART_START_DATE", "ART_START_CD4", "HAART_START_DATE",
       "CURRENT_ART", "TRI_START_DATE", "ART_START_RNA")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"tailor.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)

}

#' @export
#' @rdname read_shcs
read_shcs_var_cancer <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("CANCER", "VAR_DESC")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"var_cancer.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_var_clinical <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("CLIN_ID", "VAR_DESC", "DIAGNOSIS_TYPE", "CLIN_GROUP", "DOCU_START",
       "DOCU_STOP")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"var_clinical.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_var_disease <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("DISEASE", "VAR_DESC", "RELAPSE", "DIAGNOSIS_TYPE", "CDC_GROUP",
       "IRIS")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"var_disease.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_var_lab2 <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("ITEM", "VAR_DESC")

  col_types <- select_cols(cols = shcs_cols(),x = cn)
  read_delim(file.path(shcs_dir,"var_lab2.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

#' @export
#' @rdname read_shcs
read_shcs_var_nation <- function(shcs_dir = get_shcs_dir(), lazy = F,...){
  cn <- c("NATION", "VAR_DESC", "REGION_ID", "AIDS99", "FGM")

  col_types <- select_cols(cols = shcs_cols(),x = cn)

  read_delim(file.path(shcs_dir,"var_nation.csv"),delim = ",",
                    col_types = col_types,lazy = lazy,...)
}

