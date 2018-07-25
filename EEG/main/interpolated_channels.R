
library(tidyverse)

elecs <- read_csv("C:/Users/Antonio/Desktop/elecs/elecs.csv") %>%
  mutate(ELECS = as.factor(ELECS)) %>%
  mutate(
    P1 = case_when(
      ELECS == "P7" ~ 1,
      ELECS == "P9" ~ 1,
      ELECS == "PO7" ~ 1,
      ELECS == "O1" ~ 1,
      ELECS == "O2" ~ 1,
      ELECS == "PO8" ~ 1,
      ELECS == "P8" ~ 1,
      ELECS == "P10" ~ 1
    ),
    N1 = case_when(
      ELECS == "TP7" ~ 1,
      ELECS == "P7" ~ 1,
      ELECS == "P9" ~ 1,
      ELECS == "TP8" ~ 1,
      ELECS == "P8" ~ 1,
      ELECS == "P10" ~ 1
    ),
    EPN = case_when(
      ELECS == "P9" ~ 1,
      ELECS == "PO7" ~ 1,
      ELECS == "PO3" ~ 1,
      ELECS == "O1" ~ 1,
      ELECS == "Oz" ~ 1,
      ELECS == "Iz" ~ 1,
      ELECS == "O2" ~ 1,
      ELECS == "PO4" ~ 1,
      ELECS == "PO8" ~ 1,
      ELECS == "P8" ~ 1,
      ELECS == "P10" ~ 1
    ),
    LPP = case_when(
      ELECS == "P1" ~ 1,
      ELECS == "Pz" ~ 1,
      ELECS == "P2" ~ 1,
      ELECS == "P4" ~ 1,
      ELECS == "P6" ~ 1,
      ELECS == "P8" ~ 1,
      ELECS == "P10" ~ 1,
      ELECS == "POz" ~ 1,
      ELECS == "PO4" ~ 1,
      ELECS == "PO8" ~ 1
    )
  )
  
interp.chans <- elecs %>%
  group_by(SSJ) %>%
  summarize(
    tot.interp = n(),
    P1.interp = sum(P1, na.rm = TRUE),
    N1.interp = sum(N1, na.rm = TRUE),
    EPN.interp = sum(EPN, na.rm = TRUE),
    LPP.interp = sum(LPP, na.rm = TRUE)
  )

descr.interp.chans <- interp.chans %>%
  summarize(
    P1.interp.min = min(P1.interp),
    P1.interp.max = max(P1.interp),
    N1.interp.min = min(N1.interp),
    N1.interp.max = max(N1.interp),
    EPN.interp.min = min(EPN.interp),
    EPN.interp.max = max(EPN.interp),
    LPP.interp.min = min(LPP.interp),
    LPP.interp.max = max(LPP.interp)
  )

***
***
