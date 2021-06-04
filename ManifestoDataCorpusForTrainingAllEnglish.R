
R version 4.0.3 (2020-10-10) -- "Bunny-Wunnies Freak Out"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)


> load("/Users/NAME/Senators_Data.Rdata")
> install.packages("manifestoR")
> library(manifestoR)
> library(dplyr)

When publishing work using the Manifesto Corpus, please make sure to cite it correctly and to give the identification number of the corpus version used for your analysis.
You can print citation and version information with the function mp_cite().Note that some of the scaling/analysis algorithms provided with this package were conceptually developed by authors referenced in the respective function documentation. Please also reference them when using these algorithms.

> mp_setapikey("manifesto_apikey.txt") #create account on the website of the Comparative Manifesto Project and download personal API code as a .txt file.  
> mpds <- mp_maindataset()
> mp_availability(TRUE)

                                                                                                                                                                                                                                                                                                                                                             Queried for 
                                                                                                                                                                                                                                                                                                                                                                    4760 
                                                                                                                                                                                                                                                                                                                                                          Corpus Version 
                                                                                                                                                                                                                                                                                                                                                                  2020-2 
                                                                                                                                                                                                                                                                                                                                                         Documents found 
                                                                                                                                                                                                                                                                                                                                                          2742 (57.605%) 
                                                                                                                                                                                                                                                                                                                                                   Coded Documents found 
                                                                                                                                                                                                                                                                                                                                                          1593 (33.466%) 
                                                                                                                                                                                                                                                                                                                                                         Originals found 
                                                                                                                                                                                                                                                                                                                                                          3023 (63.508%) 
                                                                                                                                                                                                                                                                                                                                                               Languages 
39 (swedish norwegian danish finnish icelandic french dutch german english italian spanish catalan galician greek portuguese japanese hebrew turkish armenian bosnian bosnian-cyrillic serbian-cyrillic bulgarian croatian czech estonian georgian hungarian latvian lithuanian macedonian romanian montenegrin polish russian serbian-latin slovak slovenian ukrainian) 

> english_annotated <- mp_availability(TRUE) %>% filter(annotations==TRUE & language == "english")
> mp_corpus(english_annotated)
> english_mp <- mp_corpus(english_annotated)
> write.csv(english_mp, file = "english_mp.csv")


# Code source/ package: Greene, Z. (2016). Competing on the issues: How experience in government and economic conditions influence the scope of parties’ policy messages. Party Politics, 22(6), 809–822. 
