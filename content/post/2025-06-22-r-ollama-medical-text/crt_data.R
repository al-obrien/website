create_trmt_data <- function(sample = TRUE) {

  text_v <- c(
    # Chlamydia
    "azithromycin 1 g PO as a single dose (A-I; AII for eye)",
    "doxycycline 100 mg PO BID for 7 days (A-I; A-II for eye)",
    "azithromycin* 1 g PO as a single dose (B-I)",
    "amoxicillin 500 mg PO TID for 7 days (A-I)",
    "doxycycline 100 mg PO BID for 7 days (A-II)",
    "azithromycin 1 g PO as a single dose (A-II)",

    # Syph
    "Long-acting benzathine penicillin G 2.4 mu (Bicillin L-A) IM as a single dose (A-II;C-II for HIV-infected)",
    "doxycycline 100 mg PO BID for 14 days (B-II; C-III for HIV-infected)",
    "doxycycline 100 mg PO BID for 28 days (B-II; C-III for HIV-infected)",
    "Long-acting benzathine penicillin G 2.4 mu (Bicillin L-A) IM weekly for 2 doses (C-III)",
    "Long-acting benzathine penicillin G 2.4 mu (Bicillin L-A) IM weekly for 3 consecutive weeks (A-II)",
    "crystalline penicillin G 4 mu IV q4h for 10-14 days (A-II)",
    "penicillin desensitization followed by crystalline penicillin G 4 mu IV q4h for 10-14 days",
    "ceftriaxone 2g IV daily for 10-14 days (B-II)",

    # Gono
    "cefixime 800 mg PO as a single dose (A-I) PLUS azithromycin 1g PO as a single dose (BII)",
    "ceftriaxone 250 mg IM as a single dose (A-I) PLUS azithromycin 1 g PO as a single dose (BII)",
    "azithromycin* 2 g PO as a single dose (AI) PLUS gentamicin 240 mg IM in 2 separate 3-mL injections of 40 mg/mL solution (B-II)",
    "azithromycin* 2 g PO as a single dose (A-I) PLUS gemifloxacin 320 mg PO in a single dose (B-II)",
    "Due to pregnancy was not provided azithromycin* 2 g PO as a single dose, was provided cefixime 800 mg PO as a single dose plus azithromycin 1g",
    "ceftriaxone 250 mg IM as a single dose (A-I) PLUS azithromycin 1 g PO as a single dose (BII), (B-III for pharyngeal infections)",
    "cefixime 800 mg PO as a single dose (A-I for MSM, B-III for pharyngeal infections) PLUS azithromycin 1 g PO as a single dose (B-II for MSM), (B-III) for pharyngeal infections",
    "azithromycin* 2 g PO as a single dose (AI) PLUS gentamicin 240 mg IM in 2 separate 3 mL injections of 40 mg/mL solution (B-II)",
    "azithromycin* 2 g PO as a single dose (A-I) PLUS gemifloxacin 320 mg PO in a single dose (BII)",
    "ceftriaxone 2 g IV/IM as a single dose (A-II) PLUS azithromycin 1 g PO as a single dose (BII)",

    # Herp
    "valacyclovir 1 g PO BID for 10 days (A-I)",
    "famciclovir 250 mg PO TID for 5 days (A-I)",
    "acyclovir 400 mg PO TID for 7-10 days (A-III)",
    "valacyclovir 500 mg PO BID for 3 days (B-I)",
    "valacyclovir 1 g PO QD for 3 days (B-I)",
    "famciclovir 125 mg PO BID for 5 days (B-I)",
    "acyclovir 800 mg PO TID x 2 days",
    "valacyclovir 500 mg PO QD (A-I) [for patients with < 9 recurrences per year]",
    "valacyclovir 500 mg PO BID or 1 g PO QD (AI) [for patients with > 9 recurrences per year]",
    "famciclovir 250 mg PO BID (A-I)",
    "acyclovir 400 mg PO BID (A-I)",
    "valacyclovir 500 mg PO BID initiated at 36 weeks until parturition (B-I)",
    "acyclovir 400 mg PO TID initiated at 36 weeks until parturition (A-I)",

    # NGU
    "cefixime 800 mg PO as a single dose (A-l) PLUS azithromycin 1 g PO as a single dose (BII)",
    "azithromycin* 2 g PO as a single dose (A-I) PLUS gentamicin 240 mg IM in 2 separate 3-mL injections of 40 mg/mL solution (B-II)",
    "azithromycin* 2 g PO as a single dose (A-I) PLUS gemifloxacin 320 mg PO in a single dose (B-II)",
    "ceftriaxone 250 mg IM as a single dose (A-I) PLUS azithromycin 1 g PO as a single dose (BII)",
    "cefixime 800 mg PO as a single dose (A-I) PLUS azithromycin 1g PO as a single dose (BII)",
    "azithromycin* 2 g PO as a single dose (A-I) PLUS gentamicin 240 mg IM in 2 separate 3-mL injections of 40 mg/mL solution (B-II)",
    "azithromycin* 2 g PO as a single dose (A-I) PLUS gemifloxacin 320 mg PO in a single dose (B-II)",
    "azithromycin 1 g PO as a single dose (A-I)",
    "doxycycline 100 mg PO BID for 7 days (A-I)",


    # Custom
    "Doxycycline is not recommended for use during pregnancy, provided benzathine penicillin G 2.4 mu",
    "Due to resistance to azithromycin, was not provided as monothearpy, was provided in addition to gentamicin",
    "cefxime 800 mg single dose PLUS azith 1g as a single dose",
    "No treatment was provided",
    "Was treated out of province",
    "Trmt given OOP",
    "Attempted contact, but could not locate",
    "Lost to follow up",
    "Six white and two blue pills",
    "cipro 250mg initially",
    "? azithromycin",
    "? ceftrix but no record documented of taking it",
    "treatment received",
    "peng 2.4 mu",
    "A handfull of blue pills",
    "amoxi clave 875 mg for 7 days",
    "cefixime 400 mg po qd x 7 days",
    "doxycycline 250mg + cefixime 800mg",
    "See notes",
    "unknown medication provided",
    "unable to recall",
    "cipro 500 bid x 1 wk",
    "declined treatment",
    "refused bicillin treatment",
    "moxifloxacin 400 mg po daily",
    "moxifloxacin 0.5% 1 drop os every hour x 1 day",
    "levofloxacin dose unknown",
    "drugs: doxycycline dose: 100.000 dose unit",
    "cream given"
  )

  if(sample) {
    text_v <- sample(text_v, length(text_v), replace = FALSE)
    }

  data.frame(
    row_id = seq_along(text_v),
    text = text_v
    )
}
