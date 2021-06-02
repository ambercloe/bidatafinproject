
R version 4.0.3 (2020-10-10) -- "Bunny-Wunnies Freak Out"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R ist freie Software und kommt OHNE JEGLICHE GARANTIE.
Sie sind eingeladen, es unter bestimmten Bedingungen weiter zu verbreiten.
Tippen Sie 'license()' or 'licence()' für Details dazu.

R ist ein Gemeinschaftsprojekt mit vielen Beitragenden.
Tippen Sie 'contributors()' für mehr Information und 'citation()',
um zu erfahren, wie R oder R packages in Publikationen zitiert werden können.

Tippen Sie 'demo()' für einige Demos, 'help()' für on-line Hilfe, oder
'help.start()' für eine HTML Browserschnittstelle zur Hilfe.
Tippen Sie 'q()', um R zu verlassen.

[R.app GUI 1.73 (7892) x86_64-apple-darwin17.0]

[Verlauf wiederhergestellt aus /Users/valentinzenklusen/.Rapp.history]

> load("/Users/valentinzenklusen/Downloads/Senators_Data.Rdata")
> install.packages("manifestoR")
--- Bitte einen CRAN Spiegel für diese Sitzung auswählen ---
installiere auch Abhängigkeit ‘functional’

versuche URL 'https://mirror.lyrahosting.com/CRAN/bin/macosx/contrib/4.0/functional_0.6.tgz'
Content type 'application/x-gzip' length 18517 bytes (18 KB)
==================================================
downloaded 18 KB

versuche URL 'https://mirror.lyrahosting.com/CRAN/bin/macosx/contrib/4.0/manifestoR_1.5.0.tgz'
Content type 'application/x-gzip' length 551511 bytes (538 KB)
==================================================
downloaded 538 KB


Die heruntergeladenen Binärpakete sind in 
	/var/folders/dg/w1cnflq92k952d1mxmbx_5840000gn/T//RtmpylyKM0/downloaded_packages
library(manifestoR)
> library(manifestoR)
Lade nötiges Paket: NLP
Lade nötiges Paket: tm
When publishing work using the Manifesto Corpus, please make sure to cite it correctly and to give the identification number of the corpus version used for your analysis.

You can print citation and version information with the function mp_cite().

Note that some of the scaling/analysis algorithms provided with this package were conceptually developed by authors referenced in the respective function documentation. Please also reference them when using these algorithms.
> mp_setapikey("manifesto_apikey.txt")
> mpds <- mp_maindataset()
Connecting to Manifesto Project DB API... 
Connecting to Manifesto Project DB API... corpus version: 2020-2 
> mp_availability(TRUE)
Connecting to Manifesto Project DB API... 
Connecting to Manifesto Project DB API... corpus version: 2020-2 
Connecting to Manifesto Project DB API... corpus version: 2020-2 
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
Fehler in mp_availability(TRUE) %>% filter(annotations == TRUE & language ==  : 
  konnte Funktion "%>%" nicht finden
> 
> library(dplyr)

Attache Paket: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> english_annotated <- mp_availability(TRUE) %>% filter(annotations==TRUE & language == "english")
> mp_corpus(english_annotated)
Connecting to Manifesto Project DB API... corpus version: 2020-2 
<<ManifestoCorpus>>
Metadata:  corpus specific: 0, document level (indexed): 0
Content:  documents: 181
> english_mp <- mp_corpus(english_annotated)
> write.csv(english_mp, file = "english_mp.csv")
> 