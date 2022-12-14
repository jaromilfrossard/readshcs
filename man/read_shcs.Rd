% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_shcs.R
\name{read_shcs}
\alias{read_shcs}
\alias{read_shcs_admin}
\alias{read_shcs_center}
\alias{read_shcs_clinical}
\alias{read_shcs_cvrisk}
\alias{read_shcs_dborn}
\alias{read_shcs_dis}
\alias{read_shcs_med_drug}
\alias{read_shcs_med_drug_code}
\alias{read_shcs_fup}
\alias{read_shcs_hcv}
\alias{read_shcs_hiv_subtype}
\alias{read_shcs_hospital}
\alias{read_shcs_iris}
\alias{read_shcs_lab}
\alias{read_shcs_lab2}
\alias{read_shcs_modif_art}
\alias{read_shcs_mborn}
\alias{read_shcs_obstet_event}
\alias{read_shcs_pat}
\alias{read_shcs_stop}
\alias{read_shcs_substance_in_prod}
\alias{read_shcs_substance}
\alias{read_shcs_tailor}
\alias{read_shcs_var_cancer}
\alias{read_shcs_var_clinical}
\alias{read_shcs_var_disease}
\alias{read_shcs_var_lab2}
\alias{read_shcs_var_nation}
\alias{read_shcs_var_stopdrug}
\title{Read datasets from the Swiss HIV Cohort Study}
\usage{
read_shcs_admin(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_center(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_clinical(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_cvrisk(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_dborn(dir, lazy = F, ...)

read_shcs_dis(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_med_drug(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_med_drug_code(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_fup(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_hcv(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_hiv_subtype(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_hospital(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_iris(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_lab(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_lab2(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_modif_art(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_mborn(dir, lazy = F, ...)

read_shcs_obstet_event(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_pat(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_stop(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_substance_in_prod(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_substance(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_tailor(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_var_cancer(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_var_clinical(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_var_disease(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_var_lab2(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_var_nation(shcs_dir = get_shcs_dir(), lazy = F, ...)

read_shcs_var_stopdrug(shcs_dir = get_shcs_dir(), lazy = F, ...)
}
\arguments{
\item{shcs_dir}{chr. Path of the directory containing the SHCS data.}

\item{lazy}{lgl. Argument pass to read_delim. Default is FALSE.}

\item{...}{other Argument pass to read_delim.}

\item{dir}{chr. Path to other directory.}
}
\description{
Read datasets from the Swiss HIV Cohort Study
}
