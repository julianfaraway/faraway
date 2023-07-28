

#' Annual mean temperatures in Ann Arbor, Michigan
#'
#' The data comes from the U.S. Historical Climatology Network.
#'
#'
#' @name aatemp
#' @docType data
#' @format A data frame with 115 observations on the following 2 variables.
#' \describe{ \item{year}{year from 1854 to 2000} \item{temp}{annual mean
#' temperatures in degrees F in Ann Arbor} }
#' @source United States Historical Climatology Network:
#' \url{https://www.ncei.noaa.gov/products/land-based-station/us-historical-climatology-network}
#' @keywords datasets
NULL





#' Wear on materials according to type, run and position
#'
#' The \code{abrasion} data frame has 16 rows and 4 columns.  Four materials
#' were fed into a wear testing machine and the amount of wear recorded. Four
#' samples could be processed at the same time and the position of these
#' samples may be important.  A Latin square design was used.
#'
#'
#' @name abrasion
#' @docType data
#' @format This data frame contains the following columns: \describe{
#'
#' \item{run}{ The run number 1-4 }
#'
#' \item{position}{ The position number 1-4 }
#'
#' \item{material}{ The material A-D }
#'
#' \item{wear}{ The wear measured loss of weight in 0.1mm over testing
#' period }}
#' @source The Design and Analysis of Industrial Experiments by O. Davies,
#' 1954, published by Wiley
#' @keywords datasets
NULL





#' aflatoxin dosage and liver cancer in lab animals
#'
#' Aflatoxin B1 was fed to lab animals at vary doses and the number responding
#' with liver cancer recorded.
#'
#'
#' @name aflatoxin
#' @docType data
#' @format A data frame with 6 observations on the following 3 variables.
#' \describe{ \item{dose}{dose in ppb} \item{total}{number of test animals}
#' \item{tumor}{number with liver cancer} }
#' @source Gaylor DW (1987) "Linear nonparametric upper limits for low dose
#' extrapolation" ASA Proceedings of the Biopharmaceutical Section.
#' @keywords datasets
#' @examples
#'
#' data(aflatoxin)
#'
NULL





#' miltary coups and politics in sub-Saharan Africa
#'
#' Data is a subset of a larger study on factors affecting regime stability in
#' Sub-Saharan Africa
#'
#'
#' @name africa
#' @docType data
#' @format A data frame with 47 observations on the following 9 variables.
#' \describe{ \item{miltcoup}{number of successful military coups from
#' independence to 1989} \item{oligarchy}{number years country ruled by
#' military oligarchy from independence to 1989} \item{pollib}{Political
#' liberalization - 0 = no civil rights for political expression, 1 = limited
#' civil rights for expression but right to form political parties, 2 = full
#' civil rights} \item{parties}{Number of legal political parties in 1993}
#' \item{pctvote}{Percent voting in last election} \item{popn}{Population in
#' millions in 1989} \item{size}{Area in 1000 square km} \item{numelec}{Total
#' number of legislative and presidential elections} \item{numregim}{Number of
#' regime types} }
#' @references "Bayesian Methods: A Social and Behavioral Sciences Approach" by
#' Jeff Gill 2002.
#' @source Bratton, Michael, and Nicholas Van De Walle.  1997.  ``Political
#' Regimes and Regime Transitions in Africa, 1910-1994.'' \emph{Study Number
#' I06996.} Ann Arbor: Inter-University Consortium for Political and Social
#' Research.
#' @keywords datasets
NULL





#' Airline passengers
#'
#' Monthly totals of airline passengers from 1949 to 1951
#'
#' Well known time series example dataset
#'
#' @name airpass
#' @docType data
#' @format A data frame with 144 observations on the following 2 variables.
#' \describe{ \item{pass}{number of passengers in thousands}
#' \item{year}{the date as a decimal} }
#' @references Box, G.E.P., Jenkins, G.M. and Reinsel, G.C. (1994) Time Series
#' Analysis, Forecasting and Control, 3rd edn.  Englewood Cliffs, N.J.:
#' Prentice-Hall.
#' @source Brown, R.G.(1962) Smoothing, Forecasting and Prediction of Discrete
#' Time Series.  Englewood Cliffs, N.J.: Prentice-Hall.
#' @keywords datasets
#' @examples
#'
#' data(airpass)
#' ## maybe str(airpass) ; plot(airpass) ...
#'
NULL





#' Effects of seed inoculum, irrigation and shade on alfalfa yield
#'
#' The \code{alfalfa} data frame has 25 rows and 4 columns. Data comes from an
#' experiment to test the effects of seed inoculum, irrigation and shade on
#' alfalfa yield. A latin square design has been used.
#'
#'
#' @name alfalfa
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{shade}{ Distance of location from tree line divided into 5
#' shade areas } \item{irrigation}{ Irrigation effect divided into 5
#' levels } \item{inoculum}{ Four types of seed incolum, A-D with E as
#' control. } \item{yield}{ Dry matter yield of alfalfa }}
#' @source Petersen, R.G. 1994. Agricultural Field Experiments, Design and
#' Analysis. Marcel Dekker, Inc., New York.  Pages 70-74. 1994
#' @keywords datasets
NULL





#' Match pair study for AML and Xray link
#'
#' A matched case control study carried out to investigate the connection
#' between X-ray usage and acute myeloid leukemia in childhood. The pairs are
#' matched by age, race and county of residence.
#'
#'
#' @name amlxray
#' @docType data
#' @format A data frame with 238 observations on the following 11 variables.
#' \describe{ \item{ID}{a factor denoting the matched pairs}
#' \item{disease}{0=control, 1=case} \item{Sex}{ \code{F} or
#' \code{M}} \item{downs}{Presence of Downs syndrome: \code{no} or
#' \code{yes}} \item{age}{Age in years} \item{Mray}{Did the
#' mother ever have an Xray: \code{no} or \code{yes}} \item{MupRay}{Did
#' the mother have an Xray of the upper body during pregnancy: \code{no} or
#' \code{yes}} \item{MlowRay}{Did the mother have an Xray of the lower
#' body during pregnancy: \code{no} or \code{yes}} \item{Fray}{Did the
#' father ever have an Xray: \code{no} or \code{yes}} \item{Cray}{Did
#' the child ever have an Xray: \code{no} or \code{yes}}
#' \item{CnRay}{Total number of Xrays of the child \code{1}=none <
#' \code{2}=1 or 2 < \code{3}=3 or 4 < \code{4}= 5 or more} }
#' @source Chap T. Le (1998) "Applied Categorical Data Analysis" Wiley.
#' @keywords datasets
NULL





#' Time in minutes to eye opening after reversal of anaesthetic.
#'
#' A doctor at major London hospital compared the effects of 4 anaesthetics
#' used in major operations. 80 patients were divided into groups of 20.
#'
#'
#' @name anaesthetic
#' @docType data
#' @format A data frame with 80 observations on the following 2 variables.
#' \describe{ \item{breath}{time in minutes to start breathing
#' unassisted} \item{tgrp}{Four treatment groups \code{A} \code{B}
#' \code{C} \code{D}} }
#' @source Chatfield C. (1995) Problem Solving: A Statistician's Guide, 2ed
#' Chapman Hall.
#' @keywords datasets
#' @examples
#'
#' data(anaesthetic)
#' ## maybe str(anaesthetic) ; plot(anaesthetic) ...
#'
NULL





#' Respiratory disease rates of babies fed in different ways
#'
#' Study on infant respiratory disease, namely the proportions of children
#' developing bronchitis or pneumonia in their first year of life by type of
#' feeding and sex.
#'
#'
#' @name babyfood
#' @docType data
#' @format A data frame with 6 observations on the following 4 variables.
#' \describe{ \item{disease}{number with disease}
#' \item{nondisease}{number without disease} \item{sex}{a
#' factor with levels \code{Boy} \code{Girl}} \item{food}{a factor with
#' levels \code{Bottle} \code{Breast} \code{Suppl}} }
#' @source Payne, C. (1987). The GLIM System Release 3.77 Manual (2 ed.).
#' Oxford: Nu- merical Algorithms Group.
#' @keywords datasets
#' @examples
#'
#' data(babyfood)
#' ## maybe str(babyfood) ; plot(babyfood) ...
#'
NULL





#' Beetles exposed to fumigant
#'
#' Grain beetles were exposed to ethylene oxide
#'
#'
#' @name beetle
#' @docType data
#' @format A data frame with 10 observations on the following 3 variables.
#' \describe{ \item{conc}{concentration of ethylene oxide in mg/l}
#' \item{affected}{number affected} \item{exposed}{number
#' exposed} }
#' @references Collet D. "Modelling Binary Data"
#' @source Busvine (1938)
#' @keywords datasets
#' @examples
#'
#' data(beetle)
#' ## maybe str(beetle) ; plot(beetle) ...
#'
NULL





#' Insect mortality due to insecticide
#'
#' An experiment measuring death rates for insects, with 30 insects at each of
#' five treatment levels.
#'
#'
#' @name bliss
#' @docType data
#' @format A data frame with 5 observations on the following 3 variables.
#' \describe{ \item{dead}{number dead} \item{alive}{number
#' alive} \item{conc}{concentration of insecticide} }
#' @source Bliss (1935). The calculation of the dosage-mortality curve. Annals
#' of Applied Biology 22, 134-167.
#' @keywords datasets
#' @examples
#'
#' data(bliss)
#' ## maybe str(bliss) ; plot(bliss) ...
#'
NULL





#' Breaking strength of materials
#'
#' An experiment was conducted to select the supplier of raw materials for
#' production of a component. The breaking strength of the component was the
#' objective of interest.  Four suppliers were considered. The four operators
#' can only produce one component each per day. A Latin square design was used.
#'
#'
#' @name breaking
#' @docType data
#' @format A data frame with 16 observations on the following 4 variables.
#' \describe{ \item{y}{The breaking strength of the component}
#' \item{operator}{the operator - a factor with levels \code{op1}
#' \code{op2} \code{op3} \code{op4}} \item{day}{the day of production -
#' a factor with levels \code{day1} \code{day2} \code{day3} \code{day4}}
#' \item{supplier}{the supplier of the raw material - a factor with
#' levels \code{A} \code{B} \code{C} \code{D}} }
#' @source Lentner M. and Bishop T. (1986) Experimental Design and Analysis,
#' Valley Book Company
#' @keywords datasets
NULL





#' Broccoli weight variation
#'
#' A number of growers supply broccoli to a food processing plant. The plant
#' instructs the growers to pack the broccoli into standard size boxes. There
#' should be 18 clusters of broccoli per box and each cluster should weigh
#' between 1.33 and 1.5 pounds. Because the growers use different varieties,
#' methods of cultivation etc, there is some variation in the cluster weights.
#' The plant manager selected 3 growers at random and then 4 boxes at random
#' supplied by these growers. 3 clusters were selected from each box.
#'
#'
#' @name broccoli
#' @docType data
#' @format A data frame with 36 observations on the following 4 variables.
#' \describe{ \item{wt}{weight of broccoli} \item{grower}{the
#' grower - a factor with levels \code{1} \code{2} \code{3}}
#' \item{box}{the box - a factor with levels \code{1} \code{2} \code{3}
#' \code{4}} \item{cluster}{the cluster - a factor with levels \code{1}
#' \code{2} \code{3}} }
#' @source Lentner M. and Bishop T. (1986) Experimental Design and Analysis,
#' Valley Book Company
#' @keywords datasets
NULL





#' Butterfat content of milk by breed
#'
#' Average butterfat content (percentages) of milk for random samples of twenty
#' cows (ten two-year old and ten mature (greater than four years old)) from
#' each of five breeds. The data are from Canadian records of pure-bred dairy
#' cattle.
#'
#'
#' @name butterfat
#' @docType data
#' @format A data frame with 100 observations on the following 3 variables.
#' \describe{ \item{Butterfat}{butter fat content by percentage}
#' \item{Breed}{a factor with levels \code{Ayrshire} \code{Canadian}
#' \code{Guernsey} \code{Holstein-Fresian} \code{Jersey}} \item{Age}{a
#' factor with levels \code{2year} \code{Mature}} }
#' @source Sokal, R. R. and Rohlf, F. J. (1994) Biometry. W. H. Freeman, New York, third edition.
#' @keywords datasets
#' @examples
#'
#' data(butterfat)
#' ## maybe str(butterfat) ; plot(butterfat) ...
#'
NULL





#' Cathedral nave heights and lengths in England
#'
#' Example Dataset from "Practical Regression and Anova"
#'
#'
#' @name cathedral
#' @docType data
#' @format A dataset with 25 cases \describe{
#' \item{style}{of the cathedral - romanesque or gothic}
#' \item{height}{in feet}
#' \item{width}{in feet}}
#' @references Reference details may be found in "Practical Regression and
#' Anova" by Julian Faraway
#' @source Weisberg, S. (2005). Applied Linear Regression, 3rd edition. New York: Wiley
#' @keywords datasets
NULL





#' Taste of Cheddar cheese
#'
#' In a study of cheddar cheese from the LaTrobe Valley of Victoria, Australia,
#' samples of cheese were analyzed for their chemical composition and were
#' subjected to taste tests. Overall taste scores were obtained by combining
#' the scores from several tasters.
#'
#'
#' @name cheddar
#' @docType data
#' @format A data frame with 30 observations on the following 4 variables.
#' \describe{ \item{taste}{a subjective taste score}
#' \item{Acetic}{concentration of acetic acid (log scale)}
#' \item{H2S}{concentration of hydrogen sulfide (log scale)}
#' \item{Lactic}{concentration of lactic acid} }
#' @source David S. Moore and George P. McCabe (1993) Introduction to the Practice of Statistics,
#' W. H. Freeman and company, second edition.
#' @keywords datasets
#' @examples
#'
#' data(cheddar)
#' ## maybe str(cheddar) ; plot(cheddar) ...
#'
NULL





#' Chicago insurance redlining
#'
#' Data from a 1970's study on the relationship between insurance redlining in
#' Chicago and racial composition, fire and theft rates, age of housing and
#' income in 47 zip codes.
#'
#'
#' @name chicago
#' @docType data
#' @format This dataframe contains the following columns \describe{
#'
#' \item{race}{ racial composition in percent minority }
#' \item{fire}{ fires per 100 housing units } \item{theft}{
#' theft per 1000 population } \item{age}{ percent of housing units
#' built before 1939 } \item{involact}{ new FAIR plan policies and
#' renewals per 100 housing units } \item{income}{ median family income
#' in thousands of dollars} \item{side}{ North or South side of
#' Chicago}
#'
#' }
#' @source Adapted from "Data : A Collection of Problems from Many Fields for
#' the Student and Research Worker" by D. Andrews and A. Herzberg published by
#' Springer-Verlag, in 1985
#' @keywords datasets
NULL


#' Chicago zip codes north-south
#'
#' Complements the chicago and chmiss datasets by dividing the zip codes into
#' north and south
#'
#' @name chiczip
#' @docType data
#' @format \describe{
#' \item{chiczip}{takes the values "n" (north) and "s" south}
#' }
#' @references Reference details may be found in "Practical Regression and
#' Anova" by Julian Faraway
#' @seealso chicago
#' @keywords datasets
NULL





#' Chicago insurance redlining
#'
#' Data from a 1970's study on the relationship between insurance redlining in
#' Chicago and racial composition, fire and theft rates, age of housing and
#' income in 47 zip codes. Missing values have been randomly added.
#'
#'
#' @name chmiss
#' @docType data
#' @format This dataframe contains the following columns \describe{
#'
#' \item{race}{ racial composition in percent minority }
#' \item{fire}{ fires per 100 housing units } \item{theft}{
#' theft per 1000 population } \item{age}{ percent of housing units
#' built before 1939 } \item{involact}{ new FAIR plan policies and
#' renewals per 100 housing units } \item{income}{ median family income
#' in thousands of dollars} \item{side}{ North or South side of
#' Chicago}
#'
#' }
#' @source Adapted from "Data : A Collection of Problems from Many Fields for
#' the Student and Research Worker" by D. Andrews and A. Herzberg published by
#' Springer-Verlag, in 1985
#' @keywords datasets
NULL





#' Chocolate cake experiment with split plot design
#'
#' An experiment was conducted to determine the effect of recipe and baking
#' temperature on chocolate cake quality. 15 batches of cake mix for each
#' recipe were prepared. Each batch was sufficient for six cakes. Each of the
#' six cakes was baked at a different temperature which was randomly assigned.
#' Several measures of cake quality were recorded of which breaking angle was
#' just one.
#'
#'
#' @name choccake
#' @docType data
#' @format A data frame with 270 observations on the following 4 variables.
#' \describe{ \item{recipe}{Chocolate for recipe 1 was added at 40C,
#' Chocolate for recipe 2 was added at 60C and recipe 3 had extra sugar}
#' \item{batch}{batch number from 1 to 15}
#' \item{temp}{temperature at which cake was baked: \code{175C}
#' \code{185C} \code{195C} \code{205C} \code{215C} \code{225C}}
#' \item{breakang}{the breaking angle of the cake} }
#' @source Cochran W. and Cox G. (1992) Experimental Designs, 2nd Edition Wiley
#' @keywords datasets
NULL





#' Chicago insurance redlining
#'
#' Data from a 1970's study on the relationship between insurance redlining in
#' Chicago and racial composition, fire and theft rates, age of housing and
#' income in 47 zip codes
#'
#'
#' @name chredlin
#' @docType data
#' @format This dataframe contains the following columns \describe{
#'
#' \item{race}{ racial composition in percent minority }
#' \item{fire}{ fires per 100 housing units } \item{theft}{
#' theft per 1000 population } \item{age}{ percent of housing units
#' built before 1939 } \item{involact}{ new FAIR plan policies and
#' renewals per 100 housing units } \item{income}{ median family income
#' in thousands of dollars} \item{side}{ North or South side of
#' Chicago} }
#' @source Adapted from "Data : A Collection of Problems from Many Fields for
#' the Student and Research Worker" by D. Andrews and A. Herzberg published by
#' Springer-Verlag, in 1985
#' @keywords datasets
NULL





#' Blood clotting times
#'
#' The clotting times of blood for plasma diluted with nine different
#' percentage concentrations with prothrombin-free plasma
#'
#'
#' @name clot
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{time}{time in seconds to clot}
#' \item{conc}{concentration in percent} \item{lot}{lot number
#' - either one or two} }
#' @references Nelder & McCullagh (1989) Generalized Linear Models (2ed)
#' @source Hurn et al (1945)
#' @keywords datasets
NULL





#' Social class mobility from 1971 to 1981 in the UK
#'
#' Social class mobility from 1971 to 1981 for 42425 men from the United
#' Kingdom census. Subjects were aged 45-64.
#'
#'
#' @name cmob
#' @docType data
#' @format A data frame with 36 observations on the following 3 variables.
#' \describe{ \item{y}{Frequency of observation} \item{class71}{social class in
#' 1971 - a factor with levels \code{I}, professionals, \code{II}
#' semi-professionals, \code{IIIN} skilled non-manual, \code{IIIM} skilled
#' manual, \code{IV} semi-skilled, \code{V} unskilled} \item{class81}{social
#' class in 1971 - a factor with levels \code{I} \code{II} \code{IIIN}
#' \code{IIIM} \code{IV} \code{V} with same classification} }
#' @source D. Blane and S. Harding and M. Rosato (1999) "Does social mobility
#' affect the size of the socioeconomic mortality differential?: Evidence from
#' the Office for National Statistics Longitudinal Study" JRSS-A, 162 59-70.
#' @keywords datasets
NULL





#' Malformations of the central nervous system
#'
#' Frequencies of various malformations of the central nervous system recorded
#' on live births in South Wales, UK. Study was designed to determine the
#' effect of water hardness on the incidence of such malformations.
#'
#'
#' @name cns
#' @docType data
#' @format A data frame with 16 observations on the following 7 variables.
#' \describe{ \item{Area}{a factor with levels \code{Cardiff} \code{GlamorganC}
#' \code{GlamorganE} \code{GlamorganW} \code{MonmouthOther} \code{MonmouthV}
#' \code{Newport} \code{Swansea} being areas of South Wales} \item{NoCNS}{count
#' of births with no CNS problem} \item{An}{count of Anencephalus births}
#' \item{Sp}{count of Spina Bifida births} \item{Other}{count of other CNS
#' births} \item{Water}{water hardeness} \item{Work}{a factor with levels
#' \code{Manual} \code{NonManual} being the type of work done by the parents} }
#' @references P. McCullagh and J. Nelder (1989), Generalized Linear Models,
#' Chapman and Hall, 2nd Ed.
#' @source C. Lowe and C. Roberts and S. Lloyd, (1971) Malformations of the
#' central nervous system and softness of local water supplies, British Medical
#' Journal, 15,357-361.
#' @keywords datasets
NULL





#' Blood coagulation times by diet
#'
#' Dataset comes from a study of blood coagulation times. 24 animals were
#' randomly assigned to four different diets and the samples were taken in a
#' random order.
#'
#'
#' @name coagulation
#' @docType data
#' @format This dataframe contains the following columns \describe{
#'
#' \item{coag}{ coagulation time in seconds }
#'
#' \item{diet}{ diet type - A,B,C or D } }
#' @source "Statistics for Experimenters" by G. P. Box, W. G. Hunter and J. S.
#' Hunter, Wiley, 1978
#' @keywords datasets
NULL





#' Strength of a thermoplastic composite depending on two factors
#'
#' The \code{composite} data frame has 9 rows and 3 columns. Data comes from an
#' experiment to test the strength of a thermoplastic composite depending on
#' the power of a laser and speed of a tape.
#'
#'
#' @name composite
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{strength}{ interply bond strength of the composite }
#' \item{laser}{ laser power at 40, 50 or 60W } \item{tape}{
#' tape speed, slow=6.42 m/s, medium=13m/s and fast=27m/s }}
#' @source Mazumdar, S and Hoa S (1995) "Application of a Taguchi Method for
#' Process enhancement of an online consolidation technique" Composites 26,
#' 669-673
#' @keywords datasets
NULL





#' Corn yields from nitrogen application
#'
#' The relationship between corn yield (bushels per acre) and nitrogen (pounds
#' per acre) fertilizer application were studied in Wisconsin.
#'
#'
#' @name cornnit
#' @docType data
#' @format A data frame with 44 observations on the following 2 variables.
#' \describe{ \item{yield}{corn yield in bushels per acre}
#' \item{nitrogen}{pounds per acre} }
#' @source Unknown
#' @keywords datasets
NULL





#' Corrosion loss in Cu-Ni alloys
#'
#' Data consist of thirteen specimens of 90/10 Cu-Ni alloys with varying iron
#' content in percent. The specimens were submerged in sea water for 60 days
#' and the weight loss due to corrosion was recorded in units of milligrams per
#' square decimeter per day.
#'
#' @name corrosion
#' @docType data
#' @format This dataframe contains the following columns \describe{
#'
#' \item{Fe}{ Iron content in percent } \item{loss}{ Weight
#' loss in mg per square decimeter per day } }
#' @source "Applied Regression Analysis" by N. Draper and H. Smith, Wiley, 1998
#' @keywords datasets
NULL





#' Projected and actual sales of 20 consumer products
#'
#' Projected and actual sales of 20 consumer products. Data have been disguised
#' from original form.
#'
#'
#' @name cpd
#' @docType data
#' @format A data frame with 20 observations on the following 2 variables.
#' \describe{ \item{projected}{projected sales in dollars} \item{actual}{actual
#' sales in dollars} }
#' @source G. Whitmore (1986) "Inverse Gaussian Ratio Estimation" Applied
#' Statistics, 35, 8-15.
#' @keywords datasets
NULL





#' Crawling babies by month
#'
#' A study investigated whether babies take longer to learn to crawl in cold
#' months when they are often bundled in clothes that restrict their movement,
#' than in warmer months. The study sought an association between babies' first
#' crawling age and the average temperature during the month they first try to
#' crawl (about 6 months after birth). Parents brought their babies into the
#' University of Denver Infant Study Center between 1988-1991 for the study.
#' The parents reported the birth month and age at which their child was first
#' able to creep or crawl a distance of four feet in one minute.  Data were
#' collected on 208 boys and 206 girls (40 pairs of which were twins)
#'
#'
#' @name crawl
#' @docType data
#' @format A data frame with 12 observations on the following 4 variables.
#' \describe{ \item{crawling}{average crawling age in weeks}
#' \item{SD}{standard deviation of crawling age}
#' \item{n}{sample size} \item{temperature}{average
#' temperature(F) six months after birth} }
#' @source Benson, Janette. (1993). Infant Behavior and Development
#' @keywords datasets
#' @examples
#'
#' data(crawl)
#' ## maybe str(crawl) ; plot(crawl) ...
#'
NULL





#' Effects of surface and vision on balance.
#'
#' An experiment was conducted to study the effects of surface and vision on
#' balance. The balance of subjects were observed for two different surfaces
#' and for restricted and unrestricted vision. Balance was assessed
#' qualitatively on an ordinal four-point scale based on observation by the
#' experimenter. Forty subjects were studied, twenty males and twenty females
#' ranging in age from 18 to 38, with heights given in cm and weights in kg.
#' The subjects were tested while standing on foam or a normal surface and with
#' their eyes closed or open or with a dome placed over their head.  Each
#' subject was tested twice in each of the surface and eye combinations for a
#' total of 12 measures per subject.
#'
#'
#' @name ctsib
#' @docType data
#' @format A data frame with 480 observations on the following 8 variables.
#' \describe{ \item{Subject}{an indicator} \item{Sex}{a factor
#' with levels \code{female} \code{male}} \item{Age}{in years}
#' \item{Height}{in cm} \item{Weight}{in kg}
#' \item{Surface}{a factor with levels \code{foam} \code{norm}}
#' \item{Vision}{a factor with levels \code{closed} \code{dome}
#' \code{open}} \item{CTSIB}{a four point scale measuring balance} }
#' @references OzDasl
#' @source Steele, R. (1998). Effect of surface and vision on balance. Ph. D.
#' thesis, Depart- ment of Physiotherapy, University of Queensland.
#' @keywords datasets
#' @examples
#'
#' data(ctsib)
#' ## maybe str(ctsib) ; plot(ctsib) ...
#'
NULL





#' Death penalty in Florida 1977
#'
#' Data on 326 defendents in homicide indictments in 20 Florida counties during
#' 1976-77.
#'
#'
#' @name death
#' @docType data
#' @format A data frame with 8 observations on the following 4 variables.
#' \describe{ \item{y}{a numeric vector} \item{penalty}{Did the
#' subject recieve the death penalty?  \code{no} or \code{yes}}
#' \item{victim}{Was the victim \code{b}lack or \code{w}hite?}
#' \item{defend}{Was the defendent \code{b}lack or \code{w}hite?} }
#' @references Agresti A. (1990) Categorical Data Analysis, Wiley.
#' @source Radelet M. (1981) Racial characteristics and the imposition of the
#' death penalty. Amer. Sociol. Rev. \bold{46} 918-927.
#' @keywords datasets
NULL





#' psychology of debt
#'
#' The data arise from a large postal survey on the psychology of debt.
#'
#' All yes/no questions are coded 0=no, 1=yes. Locus of control is a
#' personality measure introduced by Rotter, which claims to differentiate
#' people according to how much they feel things that happen to them are as a
#' result of processes within themselves (internal locus of control) or outside
#' events (external locus of control).
#'
#' @name debt
#' @docType data
#' @format A data frame with 464 observations on the following 13 variables.
#' \describe{ \item{incomegp}{income group (1=lowest, 5=highest)}
#' \item{house}{security of housing tenure (1=rent, 2=mortgage, 3=owned
#' outright)} \item{children}{number of children in household}
#' \item{singpar}{is the respondent a single parent?} \item{agegp}{age group
#' (1=youngest)} \item{bankacc}{does the respondent have a bank account?}
#' \item{bsocacc}{does the respondent have a building society account?}
#' \item{manage}{self-rating of money management skill (high values=high
#' skill)} \item{ccarduse}{how often did s/he use credit cards (1=never...
#' 3=regularly)} \item{cigbuy}{does s/he buy cigarettes?} \item{xmasbuy}{does
#' s/he buy Christmas presents for children?} \item{locintrn}{score on a locus
#' of control scale (high values=internal)} \item{prodebt}{score on a scale of
#' attitudes to debt (high values=favourable to debt} }
#' @source Lea, Webley & Walker, 1995, Journal of Economic Psychology, 16,
#' 181-201 Data obtained from \url{http://people.exeter.ac.uk/SEGLea/}.
#' @keywords datasets
NULL





#' Denim wastage by supplier
#'
#' Five suppliers cut denim material for a jeans manufacturer. An algorithm is
#' used to estimate how much material will be wasted given the dimensions of
#' the material supplied. Typically, a supplier wastes more material than the
#' target based on the algorithm although occasionally they waste less. The
#' percentage of waste relative to target was collected weekly for the 5
#' suppliers. In all, 95 observations were recorded.
#'
#'
#' @name denim
#' @docType data
#' @format A data frame with 95 observations on the following 2 variables.
#' \describe{ \item{waste}{percentage wastage}
#' \item{supplier}{a factor with levels \code{1} \code{2} \code{3}
#' \code{4} \code{5}} }
#' @source Unknown
#' @keywords datasets
#' @examples
#'
#' data(denim)
#' ## maybe str(denim) ; plot(denim) ...
#'
NULL





#' Diabetes and obesity, cardiovascular risk factors
#'
#' 403 African Americans were interviewed in a study to understand the
#' prevalence of obesity, diabetes, and other cardiovascular risk factors in
#' central Virginia.
#'
#' Glycosolated hemoglobin greater than 7.0 is usually taken as a positive
#' diagnosis of diabetes
#'
#' @name diabetes
#' @docType data
#' @format A data frame with 403 observations on the following 19 variables.
#' \describe{ \item{id}{Subject ID} \item{chol}{Total
#' Cholesterol} \item{stab.glu}{Stabilized Glucose}
#' \item{hdl}{High Density Lipoprotein}
#' \item{ratio}{Cholesterol/HDL Ratio}
#' \item{glyhb}{Glycosolated Hemoglobin} \item{location}{County
#' - a factor with levels \code{Buckingham} \code{Louisa}}
#' \item{age}{age in years} \item{gender}{a factor with levels
#' \code{male} \code{female}} \item{height}{height in inches}
#' \item{weight}{weight in pounds} \item{frame}{a factor with
#' levels \code{small} \code{medium} \code{large}} \item{bp.1s}{First
#' Systolic Blood Pressure} \item{bp.1d}{First Diastolic Blood
#' Pressure} \item{bp.2s}{Second Systolic Blood Pressure}
#' \item{bp.2d}{Second Diastolic Blood Pressure}
#' \item{waist}{waist in inches} \item{hip}{hip in inches}
#' \item{time.ppn}{Postprandial Time (in minutes) when Labs were Drawn}
#' }
#' @references Schorling JB, Roach J, Siegel M, Baturka N, Hunt DE, Guterbock
#' TM, Stewart HL: A trial of church-based smoking cessation interventions for
#' rural African Americans. Preventive Medicine 26:92-101; 1997
#' @source Willems JP, Saunders JT, DE Hunt, JB Schorling: Prevalence of
#' coronary heart disease risk factors among rural blacks: A community-based
#' study. Southern Medical Journal 90:814-820; 1997
#' @keywords datasets
NULL





#' Radiation dose effects on chromosomal abnormality
#'
#' An experiment was conducted to determine the effect of gamma radiation on
#' the numbers of chromosomal abnormalities observed
#'
#'
#' @name dicentric
#' @docType data
#' @format A data frame with 27 observations on the following 4 variables.
#' \describe{ \item{cells}{Number of cells in hundreds}
#' \item{ca}{Number of chromosomal abnormalities}
#' \item{doseamt}{amount of dose in Grays} \item{doserate}{rate
#' of dose in Grays/hour} }
#' @references Frome E. and DuFrain R. (1986) Maximum Likelihood Estimation for
#' Cytogenic Dose-Response Curves. Biometrics. 42, 73-84.
#' @source Purott R. and Reeder E. (1976) The effect of changes in dose rate on
#' the yield of chromosome aberrations in human lymphocytes exposed to gamma
#' radiation. Mutation Research. 35, 437-444.
#' @keywords datasets
NULL





#' Divorce in the USA 1920-1996
#'
#' Divorce rates in the USA from 1920-1996
#'
#'
#' @name divusa
#' @docType data
#' @format A data frame with 77 observations on the following 7 variables.
#' \describe{ \item{year}{the year from 1920-1996} \item{divorce}{divorce per
#' 1000 women aged 15 or more} \item{unemployed}{unemployment rate}
#' \item{femlab}{percent female participation in labor force aged 16+}
#' \item{marriage}{marriages per 1000 unmarried women aged 16+}
#' \item{birth}{births per 1000 women aged 15-44} \item{military}{military
#' personnel per 1000 population} }
#' @source Unknown
#' @keywords datasets
NULL





#' Choice of drug treatment for psychiatry patients
#'
#' A sample of psychiatry patients were cross-classified by their diagnosis and
#' whether a drug treatment was prescribed.
#'
#'
#' @name drugpsy
#' @docType data
#' @format A data frame with 10 observations on the following 3 variables.
#' \describe{ \item{y}{the number of patients}
#' \item{diagnosis}{a factor with levels \code{Affective.Disorder}
#' \code{Neurosis} \code{Personality.Disorder} \code{Schizophrenia}
#' \code{Special.Symptoms}} \item{drug}{a factor with levels \code{no}
#' \code{yes}} }
#' @references Agresti A. (1990) "Categorical Data Analysis" Wiley
#' @source Helmes E. and Fekken G. (1986) Effects of psychotropic drugs and
#' psychiatric illness on vocational aptitude and interest assessment. J. Clin.
#' Psychol. \bold{42} 569-576
#' @keywords datasets
NULL





#' Doctor visits in Australia
#'
#' The data come from the Australian Health Survey of 1977-78 and consist of
#' 5190 single adults where young and old have been oversampled.
#'
#'
#' @name dvisits
#' @docType data
#' @format A data frame with 5190 observations on the following 19 variables.
#' \describe{ \item{sex}{1 if female, 0 if male} \item{age}{Age
#' in years divided by 100 (measured as mid-point of 10 age groups from 15-19
#' years to 65-69 with 70 or more coded treated as 72)}
#' \item{agesq}{age squared} \item{income}{Annual income in
#' Australian dollars divided by 1000 (measured as mid-point of coded ranges
#' Nil, less than 200, 200-1000, 1001-, 2001-, 3001-, 4001-, 5001-, 6001-,
#' 7001-, 8001-10000, 10001-12000, 12001-14000, with 14001- treated as 15000 }
#' \item{levyplus}{1 if covered by private health insurance fund for
#' private patient in public hospital (with doctor of choice), 0 otherwise}
#' \item{freepoor}{1 if covered by government because low income,
#' recent immigrant, unemployed, 0 otherwise} \item{freerepa}{1 if
#' covered free by government because of old-age or disability pension, or
#' because invalid veteran or family of deceased veteran, 0 otherwise}
#' \item{illness}{Number of illnesses in past 2 weeks with 5 or more
#' coded as 5} \item{actdays}{Number of days of reduced activity in
#' past two weeks due to illness or injury} \item{hscore}{General
#' health questionnaire score using Goldberg's method.  High score indicates
#' bad health} \item{chcond1}{1 if chronic condition(s) but not limited
#' in activity, 0 otherwise} \item{chcond2}{1 if chronic condition(s)
#' and limited in activity, 0 otherwise} \item{doctorco}{Number of
#' consultations with a doctor or specian the past 2 weeks}
#' \item{nondocco}{Number of consultations with non-doctor health
#' professionals (chemist, optician, physiotherapist, social worker, district
#' community nurse, chiropodist or chiropractor) in the past 2 weeks}
#' \item{hospadmi}{Number of admissions to a hospital, psychiatric
#' hospital, nursing or convalescent home in the past 12 months (up to 5 or
#' more admissions which is coded as 5)} \item{hospdays}{Number of
#' nights in a hospital, etc. during most recent admission: taken, where
#' appropriate, as the mid-point of the intervals 1, 2, 3, 4, 5, 6, 7, 8-14,
#' 15-30, 31-60, 61-79 with 80 or more admissions coded as 80. If no admission
#' in past 12 months then equals zero} \item{medicine}{Total number of
#' prescribed and nonprescribed medications used in past 2 days}
#' \item{prescrib}{Total number of prescribed medications used in past
#' 2 days} \item{nonpresc}{Total number of nonprescribed medications
#' used in past 2 days} }
#' @source Cameron A, Trivedi P, Milne F and Piggot J (1988) A Microeconometric
#' model of the demand for health care and health insurance in Australia,
#' Review of Economic Studies 55, 85-106
#' @keywords datasets
NULL





#' Ecological regression example
#'
#' Relationship between 1998 per capita income dollars from all sources and the
#' proportion of legal state residents born in the United States in 1990 for
#' each of the 50 states plus the District of Columbia
#'
#' @name eco
#' @docType data
#' @format This dataframe contains the following columns \describe{
#' \item{usborn}{ Percentage of population born in the United States}
#' \item{income}{ Per capita annual income in dollars}
#' \item{home}{ Percentage born in state} \item{pop}{
#' Population of state } }
#' @source US Bureau of the Census
#' @keywords datasets
NULL





#' Treatment and block effects on egg production
#'
#' The \code{eggprod} data frame has 12 rows and 3 columns.  Six pullets were
#' placed into each of 12 pens. Four blocks were formed from groups of 3 pens
#' based on location. Three treatments were applied. The number of eggs
#' produced was recorded
#'
#'
#' @name eggprod
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{treat}{ Three treatments: O, E or F } \item{block}{
#' Four blocks labeled 1-4 } \item{eggs}{ Number of eggs produced }}
#' @source Mead, R., R.N. Curnow, and A.M. Hasted. 1993. Statistical Methods in
#' Agriculture and Experimental Biology. Chapman and Hall, London, p. 64. 1993
#' @keywords datasets
NULL





#' Nested data on lab testing of eggs
#'
#' Consistency between laboratory tests is important and yet the results may
#' depend on who did the test and where the test was performed. In an
#' experiment to test levels of consistency, a large jar of dried egg powder
#' was divided up into a number of samples. Because the powder was homogenized,
#' the fat content of the samples is the same, but this fact is withheld from
#' the laboratories. Four samples were sent to each of six laboratories.  Two
#' of the samples were labeled as G and two as H, although in fact they were
#' identical.  The laboratories were instructed to give two samples to two
#' different technicians. The technicians were then instructed to divide their
#' samples into two parts and measure the fat content of each.  So each
#' laboratory reported eight measures, each technician four measures, that is,
#' two replicated measures on each of two samples.
#'
#'
#' @name eggs
#' @docType data
#' @format A data frame with 48 observations on the following 4 variables.
#' \describe{ \item{Fat}{a numeric vector} \item{Lab}{a factor
#' with levels \code{I} \code{II} \code{III} \code{IV} \code{V} \code{VI}}
#' \item{Technician}{a factor with levels \code{one} \code{two}}
#' \item{Sample}{a factor with levels \code{G} \code{H}} }
#' @source Bliss, C. I. (1967). Statistics in Biology. New York: McGraw Hill.
#' @keywords datasets
#' @examples
#'
#' data(eggs)
#' ## maybe str(eggs) ; plot(eggs) ...
#'
NULL





#' Epileptic seizures in clinical trial of drug
#'
#' Data from a clinical trial of 59 epileptics.  For a baseline, patients were
#' observed for 8 weeks and the number of seizures recorded. The patients were
#' then randomized to treatment by the drug Progabide (31 patients) or to the
#' placebo group (28 patients).  They were observed for four 2-week periods and
#' the number of seizures recorded.
#'
#'
#' @name epilepsy
#' @docType data
#' @format A data frame with 295 observations on the following 6 variables.
#' \describe{ \item{seizures}{number of seizures}
#' \item{id}{identifying number} \item{treat}{1=treated, 0=not}
#' \item{expind}{0=baseline period, 1=treatment period}
#' \item{timeadj}{weeks of period} \item{age}{in years} }
#' @references Breslow, N. E. and D. G. Clayton (1993). Approximate inference
#' in generalized linear mixed models. Journal of the American Statistical
#' Association 88, 9-25. Diggle, P. J., P. Heagerty, K. Y. Liang, and S. L.
#' Zeger (2002). Analysis of Longitudinal Data (2 ed.). Oxford: Oxford
#' University Press.
#' @source Thall, P. F. and S. C. Vail (1990). Some covariance models for
#' longitudinal count data with overdispersion. Biometrics 46, 657-671.
#' @keywords datasets
#' @examples
#'
#' data(epilepsy)
#' ## maybe str(epilepsy) ; plot(epilepsy) ...
#'
NULL





#' Complaints about emergency room doctors
#'
#' Data was recorded on 44 doctors working in an emergency service at a
#' hospital to study the factors affecting the number of complaints received.
#'
#'
#' @name esdcomp
#' @docType data
#' @format A data frame with 44 observations on the following 6 variables.
#' \describe{ \item{visits}{the number of patient visits}
#' \item{complaints}{the number of complaints}
#' \item{residency}{is the doctor in residency training \code{N} or
#' \code{Y}} \item{gender}{gender of doctor \code{F} or \code{M}}
#' \item{revenue}{dollars per hour earned by the doctor}
#' \item{hours}{total number of hours worked} }
#' @source Chap T. Le (1998) "Applied Categorical Data Analysis" Wiley
#' @keywords datasets
NULL





#' Simulated non-parametric regression data
#'
#' True function is f(x)=sin^3(2pi x^3).
#'
#'
#' @name exa
#' @docType data
#' @format A data frame with 256 observations on the following 3 variables.
#' \describe{ \item{x}{input} \item{y}{response}
#' \item{m}{true value} }
#' @source Haerdle, W. (1991). Smoothing Techniques with Implementation in S.
#' New York:Springer.
#' @keywords datasets
#' @examples
#'
#' data(exa)
#' ## maybe str(exa) ; plot(exa) ...
#'
NULL





#' Simulated non-parametric regression data
#'
#' True function is f(x)=0
#'
#'
#' @name exb
#' @docType data
#' @format A data frame with 256 observations on the following 3 variables.
#' \describe{ \item{x}{input} \item{y}{response}
#' \item{m}{true value} }
#' @source Haerdle, W. (1991). Smoothing Techniques with Implementation in S.
#' New York:Springer.
#' @keywords datasets
#' @examples
#'
#' data(exa)
#' ## maybe str(exa) ; plot(exa) ...
#'
NULL





#' grading of eye pairs for distance vision
#'
#' A sample of women are rated for the performance of distance vision in each
#' eye.
#'
#'
#' @name eyegrade
#' @docType data
#' @format A data frame with 16 observations on the following 3 variables.
#' \describe{ \item{y}{the observed count} \item{right}{rated vision in the
#' right eye - a factor with levels \code{best} \code{second} \code{third}
#' \code{worst}} \item{left}{rated vision in the left eye - a factor with
#' levels \code{best} \code{second} \code{third} \code{worst}} }
#' @source A. Stuart (1955) A test for homogeneity of the marginal
#' distributions in a two-way classification, Biometrika, 42, 412-416.
#' @keywords datasets
NULL





#' Percentage of Body Fat and Body Measurements in Men
#'
#' Age, weight, height, and 10 body circumference measurements are recorded for
#' 252 men. Each man's percentage of body fat was accurately estimated by an
#' underwater weighing technique.
#'
#'
#' @name fat
#' @docType data
#' @format A data frame with 252 observations on the following 18 variables.
#' \describe{ \item{brozek}{ Percent body fat using Brozek's equation,
#' 457/Density - 414.2} \item{siri}{ Percent body fat using Siri's
#' equation, 495/Density - 450} \item{density}{Density (gm/$cm^3$)}
#' \item{age}{ Age (yrs)} \item{weight}{ Weight (lbs)}
#' \item{height}{ Height (inches)} \item{adipos}{ Adiposity
#' index = Weight/Height$^2$ (kg/$m^2$)} \item{free}{ Fat Free Weight =
#' (1 - fraction of body fat) * Weight, using Brozek's formula (lbs)}
#' \item{neck}{ Neck circumference (cm)} \item{chest}{ Chest
#' circumference (cm)} \item{abdom}{ Abdomen circumference (cm) at the
#' umbilicus and level with the iliac crest} \item{hip}{ Hip
#' circumference (cm)} \item{thigh}{ Thigh circumference (cm)}
#' \item{knee}{ Knee circumference (cm)} \item{ankle}{ Ankle
#' circumference (cm)} \item{biceps}{ Extended biceps circumference
#' (cm)} \item{forearm}{Forearm circumference (cm)}
#' \item{wrist}{ Wrist circumference (cm) distal to the styloid
#' processes} }
#' @source Johnson R. Journal of Statistics Education v.4, n.1 (1996)
#' @keywords datasets
NULL

#' Mortality due to smoking according age group in women
#'
#' In 1972-74, a survey of one in six residents of Whickham, near Newcastle,
#' England was made. Twenty years later, this data recorded in a follow-up
#' study. Only women who are current smokers or who have never smoked are
#' included.
#'
#'
#' @name femsmoke
#' @docType data
#' @format A data frame with 28 observations on the following 4 variables.
#' \describe{ \item{y}{observed count for given combination} \item{smoker}{a
#' factor with levels \code{yes} \code{no}} \item{dead}{a factor with levels
#' \code{yes} \code{no}} \item{age}{a factor with agegroup levels \code{18-24}
#' \code{25-34} \code{35-44} \code{45-54} \code{55-64} \code{65-74} \code{75+}}
#' }
#' @source D. Appleton, J. French, M. Vanderpump (1996) "Ignoring a Covariate:
#' An Example of Simpson's Paradox" American Statistician, 50, 340-341
#' @keywords datasets
NULL





#' Billionaires' wealth and age
#'
#' Fortune magazine publishes a f the world's billionaires each year. The
#' 1992 list includes 233 individuals. Their wealth, age, and geographic
#' location (Asia, Europe, Middle East, United States, and Other) are reported.
#'
#'
#' @name fortune
#' @docType data
#' @format A data frame with 232 observations on the following 3 variables.
#' \describe{
#' \item{wealth}{Billions of dollars}
#' \item{age}{age in years} \item{region}{a factor with levels \code{A}, Asia,
#' \code{E}, Europe, \code{M}, Middle East, \code{O} Other, \code{U} USA} }
#' @source Fortune magazine
#' @keywords datasets
#' @examples
#'
#' data(fortune)
#' ## maybe str(fortune) ; plot(fortune) ...
#'
NULL





#' 1981 French Presidential Election
#'
#' Elections for the French presidency proceed in two rounds. In 1981, there
#' were 10 candidates in the first round. The top two candidates then went on
#' to the second round, which was won by Francois Mitterand over Valery
#' Giscard-d'Estaing. The losers in the first round can gain political favors
#' by urging their supporters to vote for one of the two fina Since
#' voting is private, we cannot know how these votes were transferred, we might
#' hope to infer from the published vote totals how this might have happened.
#' Data is given for vote totals in every fourth department of France:
#'
#' @name fpe
#' @docType data
#' @format This dataframe contains the following columns (vote totals are in
#' thousands) \describe{ \item{list("EI}{ Electeur Inscrits (registered
#' voters)}
#'
#' \item{A}{ Voters for Mitterand in the first round} \item{B}{
#' Voters for Giscard in the first round} \item{C}{ Voters for Chirac
#' in the first round} \item{D}{ Voters for Communists in the first
#' round} \item{E}{ Voters for Ecology party in the first round}
#' \item{F}{ Voters for party F in the first round} \item{G}{
#' Voters for party G in the first round} \item{H}{ Voters for party H
#' in the first round} \item{I}{ Voters for party I in the first round}
#' \item{J}{ Voters for party J in the first round} \item{K}{
#' Voters for party K in the first round} \item{A2}{ Voters for
#' Mitterand in the second round} \item{B2}{ Voters for party Giscard
#' in the second round} \item{N}{ Difference between the number of
#' voters in the second round and in the first round}
#'
#' }
#' @source "The Teaching of Practical Statistics" by C.W. Anderson and R.M.
#' Loynes, Wiley,1987
#' @keywords datasets
NULL





#' Longevity of fruitflies depending on sexual activity and thorax length
#'
#' The \code{fruitfly} data frame has 9 rows and 3 columns.  125 fruitflies
#' were divided randomly into 5 groups of 25 each. The response was the
#' longevity of the fruitfly in days. One group was kept solitary, while
#' another was kept individually with a virgin female each day. Another group
#' was given 8 virgin females per day. As an additional control the fourth and
#' fifth groups were kept with one or eight pregnant females per day.  Pregnant
#' fruitflies will not mate. The thorax length of each male was measured as
#' this was known to affect longevity. One observation in the many group has
#' been lost.
#'
#'
#' @name fruitfly
#' @docType data
#' @format This data frame contains the following columns: \describe{
#'
#' \item{thorax}{ Thorax length } \item{longevity}{ Lifetime in
#' days } \item{activity}{ The group: isolated = fly kept solitary, one
#' = fly kept with one pregnant fruitfly, many = fly kept with eight pregnant
#' fruitflies, low= fly kept with one virgin fruitfly, high = fly kept with
#' eight virgin fruitflies.  }}
#' @source "Sexual Activity and the Lifespan of Male Fruitflies" by L.
#' Partridge and M. Farquhar, Nature, 1981, 580-581
#' @keywords datasets
NULL





#' Species diversity on the Galapagos Islands
#'
#' There are 30 Galapagos islands and 7 variables in the dataset. The
#' relationship between the number of plant species and several geographic
#' variables is of interest. The original dataset contained several missing
#' values which have been filled for convenience. See the \code{galamiss}
#' dataset for the original version.
#'
#'
#' @name gala
#' @docType data
#' @format The dataset contains the following variables \describe{
#' \item{Species}{ the number of plant species found on the island}
#' \item{Endemics}{ the number of endemic species} \item{Area}{
#' the area of the island (km$^2$)} \item{Elevation}{ the highest
#' elevation of the island (m)} \item{Nearest}{ the distance from the
#' nearest island (km)} \item{Scruz}{ the distance from Santa Cruz
#' island (km)} \item{Adjacent}{ the area of the adjacent island
#' (square km)} }
#' @source M. P. Johnson and P. H. Raven (1973) "Species number and endemism:
#' The Galapagos Archipelago revisited" Science, 179, 893-895
#' @keywords datasets
NULL





#' Species diversity on the Galapagos Islands
#'
#' There are 30 Galapagos islands and 7 variables in the dataset. The
#' relationship between the number of plant species and several geographic
#' variables is of interest. This is the original version of the dataset
#' containing missing values.
#'
#'
#' @name galamiss
#' @docType data
#' @format The dataset contains the following variables \describe{
#' \item{Species}{ the number of plant species found on the island}
#' \item{Endemics}{ the number of endemic species} \item{Area}{
#' the area of the island (km$^2$)} \item{Elevation}{ the highest
#' elevation of the island (m)} \item{Nearest}{ the distance from the
#' nearest island (km)} \item{Scruz}{ the distance from Santa Cruz
#' island (km)} \item{Adjacent}{ the area of the adjacent island
#' (square km)} }
#' @source M. P. Johnson and P. H. Raven (1973) "Species number and endemism:
#' The Galapagos Archipelago revisited" Science, 179, 893-895
#' @keywords datasets
NULL





#' Xray decay from a gamma ray burst
#'
#' The X-ray decay light curve of Gamma ray burst 050525a obtained with the
#' X-Ray Telescope (XRT) on board the Swift satellite. The dataset has 63
#' brightness measurements in the 0.4-4.5 keV spectral band at times ranging
#' from 2 minutes to 5 days after the burst.
#'
#'
#' @name gammaray
#' @docType data
#' @format A data frame with 63 observations on the following 3 variables.
#' \describe{ \item{time}{in seconds since burst}
#' \item{flux}{X-ray flux in units of 10^-11 erg/cm2/s, 2-10 keV}
#' \item{error}{measurement error of the flux based on detector
#' signal-to-noise values} }
#' @source A. J. Blustin and 64 coauthors, Astrophys. J. 637, 901-913 2006.
#' Available at http://arxiv.org/abs/astro-ph/0507515.
#' @keywords datasets
#' @examples
#'
#' data(gammaray)
#' ## maybe str(gammaray) ; plot(gammaray) ...
#'
NULL





#' Undercounted votes in Georgia in 2000 presidential election
#'
#' The data comes from the US presidential election in the state of Georgia.
#' The undercount is the difference between the number of ballots cast and
#' votes recorded. Voters may have chosen not to vote for president, voted for
#' more than one candidate (disqualified) or the equipment may have failed to
#' register their choice.
#'
#'
#' @name gavote
#' @docType data
#' @format A data frame with 159 observations on the following 10 variables.
#' Each case represents a county in Georgia.  \describe{
#' \item{equip}{The voting equipment used: \code{LEVER}, \code{OS-CC}
#' (optical, central count), \code{OS-PC} (optical, precinct count)
#' \code{PAPER}, \code{PUNCH}} \item{econ}{economic status of county:
#' \code{middle} \code{poor} \code{rich}} \item{perAA}{percent of
#' African Americans in county} \item{rural}{indicator of whether
#' county is \code{rural} or \code{urban}} \item{atlanta}{indicator of
#' whether county is in \code{Atlanta} or not: \code{notAtlanta}}
#' \item{gore}{number of votes for Gore} \item{bush}{number of
#' votes for Bush} \item{other}{number of votes for other candidates}
#' \item{votes}{number of votes} \item{ballots}{number of
#' ballots} }
#' @source Meyer M. (2002) Uncounted Votes: Does Voting Equipment Matter?
#' Chance, 15(4), 33-38
#' @keywords datasets
NULL





#' Northern Hemisphere temperatures and climate proxies in the last millenia
#'
#' Average Northen Hemisphere Temperature from 1856-2000 and eight climate
#' proxies from 1000-2000AD. Data can be used to predict temperatures prior to
#' 1856.
#'
#' See the source and references below for the original data. Only some proxies
#' have been included here. Some missing values have been imputed. The proxy
#' data have been smoothed. This version of the data is intended only for
#' demonstration purposes. If you are specifically interested in the subject
#' matter, use the original data.
#'
#' @name globwarm
#' @docType data
#' @format A data frame with 1001 observations on the following 10 variables.
#' \describe{ \item{nhtemp}{Northern hemisphere average temperature (C)
#' provided by the UK Met Office (known as HadCRUT2)} \item{wusa}{Tree
#' ring proxy information from the Western USA.} \item{jasper}{Tree
#' ring proxy information from Canada.} \item{westgreen}{Ice core proxy
#' information from west Greenland} \item{chesapeake}{Sea shell proxy
#' information from Chesapeake Bay} \item{tornetrask}{Tree ring proxy
#' information from Sweden} \item{urals}{Tree ring proxy information
#' from the Urals} \item{mongolia}{Tree ring proxy information from
#' Mongolia} \item{tasman}{Tree ring proxy information from Tasmania}
#' \item{year}{Year 1000-2000AD} }
#' @references www.ncdc.noaa.gov/paleo/pubs/jones2004/jones2004.html
#' @source P.D. Jones and M.E. Mann (2004) "Climate Over Past Millennia"
#' Reviews of Geophysics, Vol. 42, No. 2, RG2002, doi:10.1029/2003RG000143
#' @keywords datasets
#' @examples
#'
#' data(globwarm)
#' ## maybe str(globwarm) ; plot(globwarm) ...
#'
NULL





#' Hair and eye color
#'
#' Data collected from 592 students in an introductory statistics class
#'
#'
#' @name haireye
#' @docType data
#' @format A data frame with 16 observations on the following 3 variables.
#' \describe{ \item{y}{count of the number of student with given hair/eye
#' combination} \item{eye}{a factor with levels \code{green} \code{hazel}
#' \code{blue} \code{brown}} \item{hair}{a factor with levels \code{BLACK}
#' \code{BROWN} \code{RED} \code{BLOND}} }
#' @source Snee R. (1974) Graphical display of two-way contingency tables.
#' American Statistician, 28, 9-12
#' @keywords datasets
NULL





#' love, work and happiness
#'
#' Data were collected from 39 students in a University of Chicago MBA class
#'
#'
#' @name happy
#' @docType data
#' @format A data frame with 39 observations on the following 5 variables.
#' \describe{ \item{happy}{Happiness on a 10 point scale where 10 is most
#' happy} \item{money}{family income in thousands of dollars} \item{sex}{1 =
#' satisfactory sexual activity, 0 = not} \item{love}{1 = lonely, 2 = secure
#' relationships, 3 = deep feeling of belonging and caring} \item{work}{5 point
#' scale where 1 = no job, 3 = OK job, 5 = great job} }
#' @source George and McCulloch (1993) "Variable Selection via Gibbs Sampling"
#' JASA, 88, 881-889
#' @keywords datasets
NULL





#' Treatment of insulin dependent diabetic children
#'
#' 16 insulin-dependent diabetic children were enrolled in a study involving a
#' new treatment. 8 children received the new treatment(N) while the other 8
#' received the standard treatment(S).  The age and sex of the child was
#' recorded along with the measured value of gycosolated hemoglobin both before
#' and after treatment.
#'
#'
#' @name hemoglobin
#' @docType data
#' @format A data frame with 16 observations on the following 5 variables.
#' \describe{ \item{age}{age in years} \item{sex}{a factor with
#' levels \code{F} \code{M}} \item{treatment}{a factor with levels
#' \code{N} \code{S}} \item{pre}{measured value of hemoglobin before
#' treatment} \item{post}{measured value of hemoglobin after treatment}
#' }
#' @source Unknown
#' @keywords datasets
#' @examples
#'
#' data(hemoglobin)
#' ## maybe str(hemoglobin) ; plot(hemoglobin) ...
#'
NULL





#' Ankylosing Spondylitis
#'
#' Data from Royal Mineral Hospital in Bath. AS is a chronic form of arthritis.
#' A study conducted to determine whether daily stretching of the hip tissues
#' would improve mobility.  39 ``typical'' AS patients were randomly allocated
#' to control (standard treatment) group or the treatment group in a 1:2 ratio.
#' Responses were flexion and rotation angles at the hip measured in degrees.
#' Larger numbers indicate more flexibility.
#'
#'
#' @name hips
#' @docType data
#' @format A data frame with 78 observations on the following 7 variables.
#' \describe{ \item{fbef}{flexion angle before}
#' \item{faft}{flexion angle after} \item{rbef}{rotation angle
#' before} \item{raft}{rotation angle after}
#' \item{grp}{treatment group - a factor with levels \code{control}
#' \code{treat}} \item{side}{side of the body - a factor with levels
#' \code{right} \code{left}} \item{person}{id for the individual} }
#' @source Chatfield C. (1995) Problem Solving: A Statistician's Guide, 2ed
#' Chapman Hall.
#' @keywords datasets
#' @examples
#'
#' data(hips)
#' ## maybe str(hips) ; plot(hips) ...
#'
NULL





#' Hormone concentrations in gay and straight men
#'
#' Urinary androsterone (androgen) and etiocholanolone (estrogen) values were
#' recorded from 26 healthy males.
#'
#'
#' @name hormone
#' @docType data
#' @format A data frame with 26 observations on the following 3 variables.
#' \describe{ \item{androgen}{concentration}
#' \item{estrogen}{concentration} \item{orientation}{sexual
#' orientation with levels \code{g} \code{s}} }
#' @references Hand, D. (1981). Discrimination and Classification. Chichester,
#' UK: Wiley.
#' @source Margolese, M. (1970). Homosexuality: A new endocrine correlate.
#' Hormones and Behavior 1, 151-155.
#' @keywords datasets
#' @examples
#'
#' data(hormone)
#' ## maybe str(hormone) ; plot(hormone) ...
#'
NULL





#' Housing prices in US cities 86-94
#'
#' Data on housing prices in 36 US metropolitan statistical areas (MSAs) over 9
#' years from 1986-1994 were collected.
#'
#'
#' @name hprice
#' @docType data
#' @format A data frame with 324 observations on the following 8 variables.
#' \describe{ \item{narsp}{natural log average sale price in thousands
#' of dollars} \item{ypc}{average per capita income}
#' \item{perypc}{percentage growth in per capita income}
#' \item{regtest}{Regulatory environment index (high values = more
#' regulations)} \item{rcdum}{Rent control - a factor with levels
#' \code{0}=no \code{1}=yes} \item{ajwtr}{Adjacent to a coastline - a
#' factor with levels \code{0}=no \code{1}=yes} \item{msa}{indicator
#' for the MSA} \item{time}{Year 1=1986 to 9=1994} }
#' @source Longitudinal and Panel Data: Analysis and Applications in the Social
#' Sciences, by Edward W. Frees, Cambridge University Press, August 2004.
#' @keywords datasets
NULL





#' Career choice of high school students
#'
#' Data was collected as a subset of the "High School and Beyond" study
#' conducted by the National Education Longitudinal Studies (NELS) program of
#' the National Center for Education Statistics (NCES).
#'
#' One purpose of the study was to determine which factors are related to the
#' choice of the type of program, academic, vocational or general, that the
#' students pursue in high school.
#'
#' @name hsb
#' @docType data
#' @format A data frame with 200 observations on the following 11 variables.
#' \describe{ \item{id}{ID of student} \item{gender}{a factor
#' with levels \code{female} \code{male}} \item{race}{a factor with
#' levels \code{african-amer} \code{asian} \code{hispanic} \code{white}}
#' \item{ses}{socioeconomic class - a factor with levels \code{high}
#' \code{low} \code{middle}} \item{schtyp}{school type - a factor with
#' levels \code{private} \code{public}} \item{prog}{choice of high
#' school program - a factor with levels \code{academic} \code{general}
#' \code{vocation}} \item{read}{reading score}
#' \item{write}{writing score} \item{math}{math score}
#' \item{science}{science score} \item{socst}{social science
#' score} }
#' @source National Education Longitudinal Studies (NELS) program of the
#' National Center for Education Statistics (NCES).
#' @keywords datasets
NULL





#' Infant mortality according to income and region
#'
#' The \code{infmort} data frame has 105 rows and 4 columns.  The infant
#' mortality in regions of the world may be related to per capita income and
#' whether oil is exported. The dataset is not recent.
#'
#'
#' @name infmort
#' @docType data
#' @format This data frame contains the following columns: \describe{
#'
#' \item{region}{ Region of the world, Africa, Europe, Asia or the
#' Americas } \item{income}{ Per capita annual income in dollars }
#'
#' \item{mortality}{ Infant mortality in deaths per 1000 births }
#' \item{oil}{ Does the country export oil or not?  } }
#' @source Unknown
#' @keywords datasets
NULL





#' Effects of insulation on gas consumption
#'
#' Data on natural gas usage in a house.  The weekly gas consumption (in 1000
#' cubic feet) and the average outside temperature (in degrees Celsius) was
#' recorded for 26 weeks before and 30 weeks after cavity-wall insulation had
#' been installed.  The house thermostat was set at 20C throughout.
#'
#'
#' @name insulgas
#' @docType data
#' @format A data frame with 44 observations on the following 3 variables.
#' \describe{ \item{Insulate}{a factor with levels \code{After}
#' \code{Before}} \item{Temp}{Outside temperature}
#' \item{Gas}{Weekly consumption in 1000 cubic feet} }
#' @source MASS package as whiteside
#' @keywords datasets
#' @examples
#'
#' data(insulgas)
#' ## maybe str(insulgas) ; plot(insulgas) ...
#'
NULL





#' Irrigation methods in an agricultural field trial
#'
#' In an agricultural field trial, the objective was to determine the effects
#' of two crop varieties and four different irrigation methods. Eight fields
#' were available, but only one type of irrigation may be applied to each
#' field. The fields may be divided into two parts with a different variety
#' planted in each half.  The whole plot factor is the method of irrigation,
#' which should be randomly assigned to the fields. Within each field, the
#' variety is randomly assigned.
#'
#'
#' @name irrigation
#' @docType data
#' @format A data frame with 16 observations on the following 4 variables.
#' \describe{ \item{field}{a factor with levels \code{f1} \code{f2}
#' \code{f3} \code{f4} \code{f5} \code{f6} \code{f7} \code{f8}}
#' \item{irrigation}{a factor with levels \code{i1} \code{i2} \code{i3}
#' \code{i4}} \item{variety}{a factor with levels \code{v1} \code{v2}}
#' \item{yield}{a numeric vector} }
#' @source Found online but source not recorded.
#' @keywords datasets
#' @examples
#'
#' data(irrigation)
#' ## maybe str(irrigation) ; plot(irrigation) ...
#'
NULL





#' Junior School Project
#'
#' Junior School Project collected from primary (U.S. term is elementary)
#' schools in inner London.
#'
#'
#' @name jsp
#' @docType data
#' @format A data frame with 3236 observations on the following 9 variables.
#' \describe{ \item{school}{50 schools code 1-50}
#' \item{class}{a factor with levels \code{1} \code{2} \code{3}
#' \code{4}} \item{gender}{a factor with levels \code{boy} \code{girl}}
#' \item{social}{class of the father I=1; II=2; III nonmanual=3; III
#' manual=4; IV=5; V=6; Long-term unemployed=7; Not currently employed=8;
#' Father absent=9} \item{raven}{test score} \item{id}{student
#' id coded 1-1402} \item{english}{score on English}
#' \item{math}{score on Maths} \item{year}{year of school} }
#' @references Goldstein, H. (1995). Multilevel Statistical Models (2 ed.).
#' London: Arnold.
#' @source Mortimore, P., P. Sammons, L. Stoll, D. Lewis, and R. Ecob (1988).
#' School Matters. Wells, UK: Open Books.
#' @keywords datasets
#' @examples
#'
#' data(jsp)
#' ## maybe str(jsp) ; plot(jsp) ...
#'
NULL





#' Kangaroo skull measurements
#'
#' Sex and species of an specimens of kangaroo.
#'
#'
#' @name kanga
#' @docType data
#' @format A data frame with 148 observations on the following 20 variables.
#' \describe{ \item{species}{a factor with levels \code{fuliginosus}
#' \code{giganteus} \code{melanops}} \item{sex}{a factor with levels
#' \code{Female} \code{Male}} \item{basilar.length}{a numeric vector}
#' \item{occipitonasal.length}{a numeric vector}
#' \item{palate.length}{a numeric vector} \item{palate.width}{a
#' numeric vector} \item{nasal.length}{a numeric vector}
#' \item{nasal.width}{a numeric vector}
#' \item{squamosal.depth}{a numeric vector}
#' \item{lacrymal.width}{a numeric vector}
#' \item{zygomatic.width}{a numeric vector}
#' \item{orbital.width}{a numeric vector}
#' \item{.rostral.width}{a numeric vector}
#' \item{occipital.depth}{a numeric vector}
#' \item{crest.width}{a numeric vector}
#' \item{foramina.length}{a numeric vector}
#' \item{mandible.length}{a numeric vector}
#' \item{mandible.width}{a numeric vector}
#' \item{mandible.depth}{a numeric vector}
#' \item{ramus.height}{a numeric vector} }
#' @references Andrews, D. F. and Herzberg, A. M. (1985). Data.
#' Springer-Verlag, New York.
#' @source Andrews and Herzberg (1985) Chapter 53.
#' @keywords datasets
#' @examples
#'
#' data(kanga)
#' ## maybe str(kanga) ; plot(kanga) ...
#'
NULL





#' Cut-off times of lawnmowers
#'
#' Data on the cut-off times of lawnmowers was collected. 3 machines were
#' randomly selected from those produced by manufacturers A and B. Each machine
#' was tested twice at low speed and high speed.
#'
#'
#' @name lawn
#' @docType data
#' @format A data frame with 24 observations on the following 4 variables.
#' \describe{ \item{manufact}{Manufacturer - a factor with levels
#' \code{A} \code{B}} \item{machine}{Lawn mower - a factor with levels
#' \code{m1} \code{m2} \code{m3} \code{m4} \code{m5} \code{m6}}
#' \item{speed}{Speed of testing - a factor with levels \code{H}
#' \code{L}} \item{time}{cut-off time} }
#' @source Unknown.
#' @keywords datasets
NULL





#' Leaf blotch on barley
#'
#' The data gives the proportion of leaf area affected by leaf blotch on 10
#' varieties of barley at 9 different sites.
#'
#'
#' @name leafblotch
#' @docType data
#' @format A data frame with 90 observations on the following 3 variables.
#' \describe{ \item{blotch}{proportion of the barley leaf affected by
#' blotch} \item{site}{the physical location - a factor with levels
#' \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7} \code{8}
#' \code{9}} \item{variety}{variety of barley - a factor with levels
#' \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7} \code{8}
#' \code{9} \code{10}} }
#' @references P. McCullagh and J. Nelder (1989) "Generalized Linear Models"
#' Chapman and Hall, 2nd ed.
#' @source R. W. M. Wedderburn (1974) "Quasilikelihood functions, generalized
#' linear models and the Gauss-Newton method" Biometrika, 61, 439-447.
#' @keywords datasets
NULL





#' Data on the burning time of samples of tobacco leaves
#'
#' Data on the burning time of samples of tobacco leaves
#'
#'
#' @name leafburn
#' @docType data
#' @format A data frame with 30 observations on the following 4 variables.
#' \describe{ \item{nitrogen}{nitrogen content by percentage weight}
#' \item{chlorine}{chlorine content by percentage weight}
#' \item{potassium}{potassium content by percentage weight}
#' \item{burntime}{burn time in seconds} }
#' @source Steel, R. G. D. and Torrie, J. H. (1980), Principles and Procedures
#' of Statistics, Second Edition, New York: McGraw-Hill
#' @keywords datasets
NULL





#' Sleep in Mammals: Ecological and Constitutional Correlates
#'
#' The \code{mammalsleep} data frame has 62 rows and 10 columns. Sleep in
#' Mammals: Ecological and Constitutional Correlates
#'
#'
#' @name mammalsleep
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{body}{ body weight in kg } \item{brain}{ brain weight
#' in g } \item{nondream}{ slow wave ("nondreaming") sleep (hrs/day) }
#' \item{dream}{ paradoxical ("dreaming") sleep (hrs/day) }
#' \item{sleep}{ total sleep (hrs/day) (sum of slow wave and
#' paradoxical sleep) } \item{lifespan}{ maximum life span (years) }
#' \item{gestation}{ gestation time (days) } \item{predation}{
#' predation index (1-5) 1 = minimum (least likely to be preyed upon) to 5 =
#' maximum (most likely to be preyed upon) } \item{exposure}{ sleep
#' exposure index (1-5) 1 = least exposed (e.g. animal sleeps in a
#' well-protected den) 5 = most exposed } \item{danger}{ overall danger
#' index (1-5) (based on the above two indices and other information) 1 = least
#' danger (from other animals) 5 = most danger (from other animals) }}
#' @source "Sleep in Mammals: Ecological and Constitutional Correlates" by
#' Allison, T.  and Cicchetti, D. (1976), Science, November 12, vol. 194, pp.
#' 732-734.
#' @keywords datasets
NULL





#' Mayer's 1750 data on the Manilius crater on the moon
#'
#' In 1750, Tobias Mayer collected data on various landmarks on the moon in
#' order to determine its orbit. The data involving the position of the
#' Manilius crater resulted in a least squares like problem. The example is
#' discussed in Steven Stigler's History of Statistics.
#'
#' See Stigler for a detailed description.
#'
#' @name manilius
#' @docType data
#' @format A data frame with 27 observations on the following 4 variables.
#' \describe{ \item{arc}{an angle known as h in Stigler's notation}
#' \item{sinang}{the sin(g-k) where g and k are two angles in Stigler}
#' \item{cosang}{the cos(g-k) where g and k are two angles in Stigler}
#' \item{group}{one of three groups determined by Mayer} }
#' @references Mayer, T. (1750) Abhandlung uber die Umwaltzung des Monds um
#' seine Axe und die scheinbare Bewegung der Mondsflecken published in the
#' Kosmographische Nachrichten und Sammlungen auf das Jahr 1748. 52-183
#' @source Stigler, S. (1986) History of Statistics. Belknap Press, Harvard.
#' @keywords datasets
#' @examples
#'
#' data(manilius)
#'
NULL





#' Meat spectrometry to determine fat content
#'
#' A Tecator Infratec Food and Feed Analyzer working in the wavelength range
#' 850 - 1050 nm by the Near Infrared Transmission (NIT) principle was used to
#' collect data on samples of finely chopped pure meat. 215 samples were
#' measured. For each sample, the fat content was measured along with a 100
#' channel spectrum of absorbances. Since determining the fat content via
#' analytical chemistry is time consuming we would like to build a model to
#' predict the fat content of new samples using the 100 absorbances which can
#' be measured more easily.
#'
#' @name meatspec
#' @docType data
#' @format Dataset contains the following variables \describe{
#' \item{V1-V100}{ absorbances across a range of 100 wavelengths }
#' \item{fat}{ fat content} }
#' @source H. H. Thodberg (1993) "Ace of Bayes: Application of Neural Networks
#' With Pruning", report no. 1132E, Maglegaardvej 2, DK-4000 Roskilde, Danmark
#' @keywords datasets
NULL





#' Melanoma by type and location
#'
#' Data comes from a study of Malignant Melanoma involving 400 subjects.
#'
#'
#' @name melanoma
#' @docType data
#' @format A data frame with 12 observations on the following 3 variables.
#' \describe{ \item{count}{number of cases} \item{tumor}{type
#' of tumor - a factor with levels \code{freckle} \code{indeterminate}
#' \code{nodular} \code{superficial}} \item{site}{location of tumor on
#' the body - a factor with levels \code{extremity} \code{head} \code{trunk}} }
#' @source Dobson A. (2002) An introduction to generalized linear models,
#' Chapman Hall.
#' @keywords datasets
NULL





#' Third party motor insurance claims in Sweden in 1977
#'
#' In Sweden all motor insurance companies apply identical risk arguments to
#' classify customers, and thus their portfolios and their claims statistics
#' can be combined. The data were compiled by a Swedish Committee on the
#' Analysis of Risk Premium in Motor Insurance. The Committee was asked to look
#' into the problem of analyzing the real influence on claims of the risk
#' arguments and to compare this structure with the actual tariff.
#'
#'
#' @name motorins
#' @docType data
#' @format A data frame with 1797 observations on the following 8 variables.
#' \describe{ \item{Kilometres}{an ordered factor representing kilomoters per
#' year with levels 1: < 1000, 2: 1000-15000, 3: 15000-20000, 4: 20000-25000,
#' 5: > 25000} \item{Zone}{a factor representing geographical area with levels
#' 1: Stockholm, Goteborg, Malmo with surroundings 2: Other large cities with
#' surroundings 3: Smaller cities with surroundings in southern Sweden 4: Rural
#' areas in southern Sweden 5: Smaller cities with surroundings in northern
#' Sweden 6: Rural areas in northern Sweden 7: Gotland} \item{Bonus}{No claims
#' bonus. Equal to the number of years, plus one, since last claim}
#' \item{Make}{A factor representing eight different common car models. All
#' other models are combined in class 9} \item{Insured}{Number of insured in
#' policy-years} \item{Claims}{Number of claims} \item{Payment}{Total value of
#' payments in Skr} \item{perd}{payment per claim} }
#' @references Hallin, M., and Ingenbleek, J.-F. (1983). The Swedish automobile
#' portfolio in 1977. A statistical study. Scandinavian Actuarial Journal,
#' 49-64.
#' @source \url{http://www.statsci.org/data/general/motorins.html}
#' @keywords datasets
NULL





#' Questionnaire study of neighborly help
#'
#' Subjects were asked questions in a study of neighborly help. Questions below
#' are a subset of the full study.
#'
#' Exeter is a city in the county of Devon which is in Britain.  The four
#' districts can be briefly described as follows. District 1 was a
#' long-established residential area near the city centre, with housing dating
#' from the late nineteenth century. Originally working class, it now has a
#' considerable middle class population with some student and other temporary
#' accommodation. District 2 was a working-class housing estate dating from the
#' 1930s, with mainly rented accommodation but some owner occupation. District
#' 3 was the oldest part of a more recently developed, mainly middle-class,
#' almost exclusively owner-occupied estate, dating from the 1960s. District 4
#' was the most recently developed part of a more sought-after middle-class
#' residential area, with smaller but almost entirely owner-occupied properties
#' dating from the 1970s and 1980s.
#'
#' @name neighbor
#' @docType data
#' @format A data frame with 181 observations on the following 8 variables.
#' \describe{ \item{longlive}{About how long have you lived where you do now?
#' Ans is a factor with levels \code{<6mos} \code{6-12mos} \code{1-3yrs}
#' \code{3-10yrs} \code{10yrs}} \item{wherebfr}{Where were you living before
#' you moved to your present house? Ans is a factor with levels \code{same}
#' \code{Exeter} \code{Devon} \code{Britain} \code{Abroad}} \item{hownbly}{How
#' neighborly do you think the area where you now live is? Ans is a factor with
#' levels \code{Vunfriendly} \code{NVfriendly} \code{Average} \code{FFriendly}
#' \code{VFriendly}} \item{knowname}{Roughly how many people in your street, or
#' in the streets just near you, do you know the names of? Ans is a factor with
#' levels \code{none} \code{1-5} \code{6-20} \code{20+}} \item{callname}{How
#' many of those people (not counting children) would you call by their first
#' names? Ans is a factor with levels \code{none} \code{1-5} \code{6-20}
#' \code{20+}} \item{age}{a factor with levels \code{-18} \code{18-30}
#' \code{31-50} \code{51-65} \code{65+}} \item{district}{a factor with levels
#' \code{1} \code{2} \code{3} \code{4}} \item{sex}{a factor with levels
#' \code{female} \code{male}} }
#' @source P. Webley & S. Lea 1993, Human Relations 46, 65-76.
#' @keywords datasets
NULL





#' National Education Longitudinal Study of 1988
#'
#' A subset of the National Education Longitudinal Study of 1988
#'
#'
#' @name nels88
#' @docType data
#' @format A data frame with 260 observations on the following 5 variables.
#' \describe{ \item{sex}{a factor with levels \code{Female}
#' \code{Male}} \item{race}{a factor with levels \code{White}
#' \code{Asian} \code{Black} \code{Hispanic}} \item{ses}{a numeric
#' vector} \item{paredu}{a factor with levels \code{ba} \code{college}
#' \code{hs} \code{lesshs} \code{ma} \code{phd}} \item{math}{a numeric
#' vector} }
#' @source \url{http://www.icpsr.umich.edu/icpsrweb/ICPSR/series/107}
#' @keywords datasets
#' @examples
#'
#' data(nels88)
#' ## maybe str(nels88) ; plot(nels88) ...
#'
NULL





#' Nepali child heath study
#'
#' The data are a subset from public health study on Nepalese children.
#'
#'
#' @name nepali
#' @docType data
#' @format A data frame with 1000 observations on the following 9 variables.
#' \describe{ \item{id}{There is a six digit code for the child's ID: 2
#' digits for the panchayat number; 2 digits for the ward within panchayat; 1
#' digits for the household; 1 digit for child within household.}
#' \item{sex}{1 = male; 2 = female} \item{wt}{Child's weight
#' measured in kilograms} \item{ht}{Child's height measured in
#' centimeters} \item{mage}{Mother's age in years}
#' \item{lit}{Indicator of mother's literacy: 0 = no; 1 = yes}
#' \item{died}{The number of children the mother has had that died.}
#' \item{alive}{The number of children the mother has ever had born
#' alive} \item{age}{age of child} }
#' @source West KP, Jr., LeClerq SC, Shrestha SR, Wu LS, Pradhan EK, Khatry SK,
#' Katz J, Adhikari R, Sommer A.  Effects of vitamin A on growth of vitamin A
#' deficient children: field studies in Nepal. J Nutr 1997;10:1957-1965.
#' @keywords datasets
NULL





#' US 1996 national election study
#'
#' 10 variable subset of the 1996 American National Election Study. Missing
#' values and "don't know" responses have been se deleted. Respondents
#' expressing a voting preference other than Clinton or Dole have been removed.
#'
#'
#' @name nes96
#' @docType data
#' @format A data frame with 944 observations on the following 10 variables.
#' \describe{ \item{popul}{population of respondent's location in 1000s of
#' people} \item{TVnews}{days in the past week spent watching news on TV}
#' \item{selfLR}{Left-Right self-placement of respondent: an ordered factor
#' with levels extremely liberal, \code{extLib} < liberal, \code{Lib} <
#' slightly liberal, \code{sliLib} < moderate, \code{Mod} < slightly
#' conservative, \code{sliCon} < conservative, \code{Con} < extremely
#' conservative, \code{extCon}} \item{ClinLR}{Left-Right placement of Bill
#' Clinton (same scale as selfLR): an ordered factor with levels \code{extLib}
#' < \code{Lib} < \code{sliLib} < \code{Mod} < \code{sliCon} < \code{Con} <
#' \code{extCon}} \item{DoleLR}{Left-Right placement of Bob Dole (same scale as
#' selfLR): an ordered factor with levels \code{extLib} < \code{Lib} <
#' \code{sliLib} < \code{Mod} < \code{sliCon} < \code{Con} < \code{extCon}}
#' \item{PID}{Party identification: an ordered factor with levels strong
#' Democrat, \code{strDem} < weak Democrat, \code{weakDem} < independent
#' Democrat, \code{indDem} < independent independent\code{indind} < indepedent
#' Republican, \code{indRep} < waek Republican, \code{weakRep} < strong
#' Republican, \code{strRep}} \item{age}{Respondent's age in years}
#' \item{educ}{Respondent's education: an ordered factor with levels 8 years or
#' less, \code{MS} < high school dropout, \code{HSdrop} < high school diploma
#' or GED, \code{HS} < some College, \code{Coll} < Community or junior College
#' degree, \code{CCdeg} < BA degree, \code{BAdeg} < postgraduate degree,
#' \code{MAdeg}} \item{income}{Respondent's family income: an ordered factor
#' with levels \code{$3Kminus} < \code{$3K-$5K} < \code{$5K-$7K} <
#' \code{$7K-$9K} < \code{$9K-$10K} < \code{$10K-$11K} < \code{$11K-$12K} <
#' \code{$12K-$13K} < \code{$13K-$14K} < \code{$14K-$15K} < \code{$15K-$17K} <
#' \code{$17K-$20K} < \code{$20K-$22K} < \code{$22K-$25K} < \code{$25K-$30K} <
#' \code{$30K-$35K} < \code{$35K-$40K} < \code{$40K-$45K} < \code{$45K-$50K} <
#' \code{$50K-$60K} < \code{$60K-$75K} < \code{$75K-$90K} < \code{$90K-$105K} <
#' \code{$105Kplus}} \item{vote}{Expected vote in 1996 presidential election: a
#' factor with levels \code{Clinton} and \code{Dole}} }
#' @references Found at \url{http://www.stat.washington.edu/}
#' @source Sapiro, Virginia, Steven J. Rosenstone, Donald R. Kinder, Warren E.
#' Miller, and the National Election Studies. AMERICAN NATIONAL ELECTION
#' STUDIES, 1992-1997: COMBINED FILE [Computer file]. 2nd ICPSR version. Ann
#' Arbor, MI: University of Michigan, Center for Political Studies [producer],
#' 1999. Ann Arbor, MI: Inter-university Consortium for Political and Social
#' Research [distributor], 1999.
#' @keywords datasets
NULL





#' New Hampshire Democratic Party Primary 2008
#'
#' Votes and other demographic information from 276 wards in the 2008
#' Democratic Party presidential primary.
#'
#' On the 8th January 2008, primaries to select US presidential candidates were
#' held in New Hampshire. In the Democratic party primary, Hillary Clinton
#' defeated Barack Obama contrary to the expectations pre-election opinion
#' polls. Essentially two different voting technologies were used in New
#' Hampshire. Some wards used paper ballots, counted by hand while others used
#' optically scanned ballots, counted by machine. Among the paper ballots,
#' Obama had more votes than Clinton while Clinton defeated Obama on just the
#' machine counted ballots. Since the method of voting should make no causal
#' difference to the outcome, suspicions have been raised regarding the
#' integrity of the election.
#'
#' @name newhamp
#' @docType data
#' @format A data frame with 276 observations on the following 12 variables.
#' \describe{ \item{votesys}{The voting system used where H is counted
#' by hand and D is counted by machine.} \item{Obama}{The number of
#' votes for Barack Obama.} \item{Clinton}{The number of votes for
#' Hillary Clinton.} \item{dem}{The total number of votes cast in the
#' Democratic primary (there were other candidates besides Clinton and Obama).}
#' \item{povrate}{The poverty rate as a proportion as determined by the
#' 2000 census.} \item{pci}{Per capita annual income in USD in 1999.}
#' \item{Dean}{The proportion of voters for Howard Dean in the 2004
#' Democratic primary.} \item{Kerry}{The proportion of voters for John
#' Kerry in the 2004 Democratic primary.} \item{white}{The proportion
#' of non-Hispanic whites according to the 2000 census.}
#' \item{absentee}{The proportion voting by absentee ballot.}
#' \item{population}{An estimate of the population from 2002.}
#' \item{pObama}{Proportion voting for Obama} }
#' @source Herron, M., W. M. Jr, and J. Wand (2008). Voting Technology and the
#' 2008 New Hampshire Primary. Wm. & Mary Bill Rts. J. 17, 351-374.
#' @keywords datasets
NULL





#' Yields of oat varieties planted in blocks
#'
#' Data from an experiment to compare 8 varieties of oats. The growing area was
#' heterogeneous and so was grouped into 5 blocks. Each variety was sown once
#' within each block and the yield in grams per 16ft row was recorded.
#'
#'
#' @name oatvar
#' @docType data
#' @format The dataset contains the following variables \describe{
#' \item{yield}{ Yield in grams per 16ft row } \item{block}{
#' Blocks I to V } \item{variety}{ Variety 1 to 8} }
#' @source "Statistical Theory in Research" by R. Anderson and T. Bancroft,
#' McGraw Hill,1952
#' @keywords datasets
NULL





#' Odor of chemical by production settings
#'
#' Data from an experiment to determine the effects of column temperature,
#' gas/liquid ratio and packing height in reducing unpleasant odor of chemical
#' product that was being sold for household use
#'
#'
#' @name odor
#' @docType data
#' @format \describe{ \item{odor}{ Odor score} \item{temp}{
#' Temperature coded as -1, 0 and 1} \item{gas}{ Gas/Liquid ratio coded
#' as -1, 0 and 1} \item{pack}{ Packing height coded as -1, 0 and 1} }
#' @source "Statistical Design and Analysis of Experiments" by P. John,
#' Macmillan, 1971
#' @keywords datasets
NULL





#' Ohio Children Wheeze Status
#'
#' The \code{ohio} data frame has 2148 rows and 4 columns. The dataset is a
#' subset of the six-city study, a longitudinal study of the health effects of
#' air pollution.
#'
#'
#' @name ohio
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{resp}{an indicator of wheeze status (1=yes, 0=no)} \item{id}{a numeric
#' vector for subject id} \item{age}{a numeric vector of age, 0 is 9 years old}
#' \item{smoke}{an indicator of maternal smoking at the first year of the
#' study} }
#' @references Fitzmaurice, G.M. and Laird, N.M. (1993) A likelihood-based
#' method for analyzing longitudinal binary responses, \emph{Biometrika}
#' \bold{80}: 141--151.
#' @keywords datasets
NULL





#' Spache Shuttle Challenger O-rings
#'
#' The 1986 crash of the space shuttle Challenger was linked to failure of
#' O-ring seals in the rocket engines. Data was collected on the 23 previous
#' shuttle missions. The launch temperature on the day of the crash was 31F.
#'
#'
#' @name orings
#' @docType data
#' @format A data frame with 23 observations on the following 2 variables.
#' \describe{ \item{temp}{temperature at launch in degrees F}
#' \item{damage}{number of damage incidents out of 6 possible} }
#' @references S. Dalal, E. Fowlkes and B. Hoadley (1989) "Risk Analysis of the
#' Space Shuttle: Pre-Challenger Prediction of Failure." Journal of the
#' American Statistical Association. 84: 945-957.
#' @source Presidential Commission on the Space Shuttle Challenger Accident,
#' Vol. 1, 1986: 129-131.
#' @keywords datasets
NULL





#' Ozone in LA in 1976
#'
#' A study the relationship between atmospheric ozone concentration and
#' meteorology in the Los Angeles Basin in 1976.  A number of cases with
#' missing variables have been removed for simplicity.
#'
#'
#' @name ozone
#' @docType data
#' @format A data frame with 330 observations on the following 10 variables.
#' \describe{ \item{O3}{Ozone conc., ppm, at Sandbug AFB.}
#' \item{vh}{a numeric vector} \item{wind}{wind speed}
#' \item{humidity}{a numeric vector} \item{temp}{temperature}
#' \item{ibh}{inversion base height} \item{dpg}{Daggett
#' pressure gradient} \item{ibt}{a numeric vector}
#' \item{vis}{visibility} \item{doy}{day of the year} }
#' @source Breiman, L. and J. H. Friedman (1985). Estimating optimal
#' transformations for multiple regression and correlation. Journal of the
#' American Statistical Association 80, 580-598.
#' @keywords datasets
#' @examples
#'
#' data(ozone)
#' ## maybe str(ozone) ; plot(ozone) ...
#'
NULL





#' Marijuana and parent alcohol and drug use
#'
#' 445 college students were classified according to both frequency of
#' marijuana use and parental use of alcohol and psychoactive drugs.
#'
#'
#' @name parstum
#' @docType data
#' @format A data frame with 9 observations on the following 3 variables.
#' \describe{ \item{parent}{Number of parents using drugs or alcohol -
#' a factor with levels \code{Both} \code{Neither} \code{One}}
#' \item{student}{Student usage of marijuana - a factor with levels
#' \code{Never} \code{Occasional} \code{Regular}} \item{count}{the
#' number of cases} }
#' @source Ellis, Godfrey J. and Stone, Lorene H.  (1979) Marijuana Use in
#' College: "An Evaluation of a Modeling Explanation" Youth and Society 10,
#' 323-34
#' @keywords datasets
NULL





#' Carbon dioxide effects on peanut oil extraction
#'
#' The \code{peanut} data frame has 16 rows and 6 columns. Carbon dioxide
#' effects on peanut oil extraction
#'
#'
#' @name peanut
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{press}{ CO2 pressure - two levels low=0, high=1 }
#' \item{temp}{ CO2 temperature - two levels low=0, high=1 }
#' \item{moist}{ peanut moisture - two levels low=0, high=1 }
#' \item{flow}{ CO2 flow rate - two levels low=0, high=1 }
#' \item{size}{ peanut particle size - two levels low=0, high=1 }
#' \item{solubility}{ the amount of oil that could dissolve in the CO2
#' }}
#' @source Kilgo, M (1989) "An Application of Fractional Factorial Experimental
#' Designs" Quality Engineering, 1, 45-54
#' @keywords datasets
NULL





#' Penicillin yield by block and treatment
#'
#' The production of penicillin uses a raw material, corn steep liquor, is
#' quite variable and can only be made in blends sufficient for four runs.
#' There are four processes, A, B, C and D, for the production.
#'
#'
#' @name penicillin
#' @docType data
#' @format A data frame with 20 observations on the following 3 variables.
#' \describe{ \item{treat}{a factor with levels \code{A} \code{B}
#' \code{C} \code{D}} \item{blend}{a factor with levels \code{Blend1}
#' \code{Blend2} \code{Blend3} \code{Blend4} \code{Blend5}}
#' \item{yield}{a numeric vector} }
#' @source Box, G., W. Hunter, and J. Hunter (1978). Statistics for
#' Experimenters. New York: Wiley.
#' @keywords datasets
#' @examples
#'
#' data(penicillin)
#' ## maybe str(penicillin) ; plot(penicillin) ...
#'
NULL





#' Birth weights in Philadelphia
#'
#' Data based on a 5% sample of all births occurring in Philadelphia in 1990.
#'
#'
#' @name phbirths
#' @docType data
#' @format A data frame with 1115 observations on the following 5 variables.
#' \describe{ \item{black}{is the mother Black?}
#' \item{educ}{mother's years of education} \item{smoke}{does
#' the mother smoke during pregnancy?} \item{gestate}{gestational age
#' in weeks} \item{grams}{birth weight in grams} }
#' @source I. T. Elo, G. Rodriguez and H. Lee (2001). Racial and Neighborhood
#' Disparities in Birthweight in Philadelphia. Paper presented at the Annual
#' Meeting of the Population Association of America, Washington, DC 2001.
#' @keywords datasets
#' @examples
#'
#' data(phbirths)
#' ## maybe str(phbirths) ; plot(phbirths) ...
#'
NULL





#' Diabetes survey on Pima Indians
#'
#' The National Institute of Diabetes and Digestive and Kidney Diseases
#' conducted a study on 768 adult female Pima Indians living near Phoenix.
#'
#'
#' @name pima
#' @docType data
#' @format The dataset contains the following variables \describe{
#' \item{pregnant}{ Number of times pregnant} \item{glucose}{
#' Plasma glucose concentration at 2 hours in an oral glucose tolerance test}
#' \item{diastolic}{ Diastolic blood pressure (mm Hg)}
#' \item{triceps}{ Triceps skin fold thickness (mm)}
#' \item{insulin}{ 2-Hour serum insulin (mu U/ml)} \item{bmi}{
#' Body mass index (weight in kg/(height in metres squared))}
#' \item{diabetes}{ Diabetes pedigree function} \item{age}{ Age
#' (years)} \item{test}{ test whether the patient shows signs of
#' diabetes (coded 0 if negative, 1 if positive)} }
#' @source The data may be obtained from UCI Repository of machine learning
#' databases at \url{http://archive.ics.uci.edu/ml/}
#' @keywords datasets
NULL





#' NIST data on ultrasonic measurements of defects in the Alaska pipeline
#'
#' Researchers at National Institutes of Standards and Technology (NIST)
#' collected data on ultrasonic measurements of the depths of defects in the
#' Alaska pipeline in the field. The depth of the defects were then remeasured
#' in the laboratory. These measurements were performed in six different
#' batches. The laboratory measurements are more accurate than the in-field
#' measurements, but more time consuming and expensive.
#'
#'
#' @name pipeline
#' @docType data
#' @format A data frame with 107 observations on the following 3 variables.
#' \describe{ \item{Field}{measurement of depth of defect on site}
#' \item{Lab}{measurement of depth of defect in the lab} \item{Batch}{the batch
#' of measurements} }
#' @source Office of the Director of the Institute of Materials Research (now
#' the Materials Science and Engineering Laboratory) of NIST
#' @keywords datasets
NULL





#' Pneumonoconiosis in coal miners
#'
#' The data for this example contains the number of coal miners classified by
#' radiological examination into one of three categories of
#' pneumonoultramicroscopicosilicovolcanoconiosis (known as pneumonoconiosis
#' for short) and by number of years spent working at the coal face divided
#' into eight categories.
#'
#'
#' @name pneumo
#' @docType data
#' @format A data frame with 24 observations on the following 3 variables.
#' \describe{ \item{Freq}{number of miners}
#' \item{status}{pneumoconiosis status - a factor with levels
#' \code{mild} \code{normal} \code{severe}} \item{year}{number of years
#' service (midpoint of interval)} }
#' @source M. Aitkin and D. Anderson and B. Francis and J. Hinde (1989)
#' "Statistical Modelling in GLIM" Oxford University Press.
#' @keywords datasets
NULL





#' Marijuana usage by youth
#'
#' The National Youth Survey collected a sample of 11 to 17 year olds - 117
#' boys and 120 girls - asking questions about marijuana usage.
#'
#'
#' @name potuse
#' @docType data
#' @format A data frame with 486 observations on the following 7 variables.
#' \describe{ \item{sex}{1=Male, 2=Female}
#' \item{year.76}{1=never used, 2=used no more than once a month,
#' 3=used more than once a month in 1976} \item{year.77}{1=never used,
#' 2=used no more than once a month, 3=used more than once a month in 1977}
#' \item{year.78}{1=never used, 2=used no more than once a month,
#' 3=used more than once a month in 1978} \item{year.79}{1=never used,
#' 2=used no more than once a month, 3=used more than once a month in 1979}
#' \item{year.80}{1=never used, 2=used no more than once a month,
#' 3=used more than once a month in 1980} \item{count}{Number of cases
#' in this category} }
#' @references Lang J., McDonald, J and Smith P. (1999) "Association-Marginal
#' Modeling of Mutlivariate Categorical Responses: A Maximum Likelihood
#' Approach" JASA 94, 1161-
#' @source ICPSR, University of Michigan
#' @keywords datasets
NULL





#' Prostate cancer surgery
#'
#' The \code{prostate} data frame has 97 rows and 9 columns. A study on 97 men
#' with prostate cancer who were due to receive a radical prostatectomy.
#'
#'
#' @name prostate
#' @docType data
#' @format This data frame contains the following columns: \describe{
#'
#' \item{lcavol}{ log(cancer volume) } \item{lweight}{
#' log(prostate weight) }
#'
#' \item{age}{ age } \item{lbph}{ log(benign prostatic
#' hyperplasia amount) } \item{svi}{ seminal vesicle invasion }
#' \item{lcp}{ log(capsular penetration) } \item{gleason}{
#' Gleason score } \item{pgg45}{ percentage Gleason scores 4 or 5 }
#' \item{lpsa}{ log(prostate specific antigen) } }
#' @source Andrews DF and Herzberg AM (1985): Data. New York: Springer-Verlag
#' @keywords datasets
NULL





#' Panel Study of Income Dynamics subset
#'
#' The Panel Study of Income Dynamics (PSID), begun in 1968, is a longitudinal
#' study of a representative sample of U.S. individuals.  The study is
#' conducted at the Survey Research Center, Institute for Social Research,
#' University of Michigan and is still continuing. The data represents a small
#' subset of the total data.
#'
#'
#' @name psid
#' @docType data
#' @format A data frame with 1661 observations on the following 6 variables.
#' \describe{ \item{age}{age in 1968} \item{educ}{years of
#' education} \item{sex}{sex of individual, \code{F} or \code{M}}
#' \item{income}{annual income in dollars} \item{year}{calendar
#' year} \item{person}{ID number for individual} }
#' @source Martha S. Hill, The Panel Study of Income Dynamics: A User's Guide,
#' Sage Publications, 1992,Newbury Park, CA.
#' @keywords datasets
NULL





#' Brightness of paper pulp depending on shift operator
#'
#' The \code{pulp} data frame has 20 rows and 2 columns. Data comes from an
#' experiment to test the paper brightness depending on a shift operator.
#'
#'
#' @name pulp
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{bright}{ Brightness of the pulp as measured by a reflectance
#' meter } \item{operator}{ Shift operator a-d }}
#' @source "Statistical techniques applied to production situations" F. Sheldon
#' (1960) Industrial and Engineering Chemistry, 52, 507-509
#' @keywords datasets
NULL





#' Leg strength and punting
#'
#' Investigators studied physical characteristics and ability in 13 (American)
#' football punters. Each volunteer punted a football ten times. The
#' investigators recorded the average distance for the ten punts, in feet.
#'
#'
#' @name punting
#' @docType data
#' @format A data frame with 13 observations on the following 7 variables.
#' \describe{ \item{Distance}{average distance over 10 punts}
#' \item{Hang}{hang time} \item{RStr}{right leg strength in
#' pounds} \item{LStr}{left leg strength in pounds}
#' \item{RFlex}{right hamstring muscle flexibility in degrees}
#' \item{LFlex}{left hamstring muscle flexibility in degrees}
#' \item{OStr}{overall leg strength in foot pounds} }
#' @source Unknown
#' @keywords datasets
#' @examples
#'
#' data(punting)
#' ## maybe str(punting) ; plot(punting) ...
#'
NULL





#' Production of PVC by operator and resin railcar
#'
#' Data from an experiment to study factors affecting the production of the
#' plastic PVC, 3 operators used 8 different devices called resin railcars to
#' produce PVC. For each of the 24 combinations, two samples were produced.
#'
#'
#' @name pvc
#' @docType data
#' @format Dataset contains the following variables \describe{
#' \item{psize}{ Particle size} \item{operator}{ Operator
#' number 1, 2 or 3} \item{resin}{ Resin railcar 1-8} }
#' @source R. Morris and E. Watson (1998) "A comparison of the techniques used
#' to evaluate the measurement process" Quality Engineering, 11, 213-219
#' @keywords datasets
NULL





#' Activity in pyrimidines
#'
#' Structural information on 74 2,4-diamino- 5-(substituted benzyl) pyrimidines
#' used as inhibitors of DHFR in E. coli. There are 3 positions where chemical
#' activity occurs and 9 attributes per position leading to 27 total
#' predictors. One predictor had no variability and was removed from the data
#' set. 26 chemical properties of 74 compounds and an activity level
#'
#'
#' @name pyrimidines
#' @docType data
#' @format A data frame with 74 observations on the following 27 variables.
#' \describe{ \item{p1.polar}{measured on a [0,1] scale}
#' \item{p1.size}{measured on a [0,1] scale}
#' \item{p1.flex}{measured on a [0,1] scale}
#' \item{p1.h.doner}{measured on a [0,1] scale}
#' \item{p1.h.acceptor}{measured on a [0,1] scale}
#' \item{p1.pi.doner}{measured on a [0,1] scale}
#' \item{p1.pi.acceptor}{measured on a [0,1] scale}
#' \item{p1.polarisable}{measured on a [0,1] scale}
#' \item{p1.sigma}{measured on a [0,1] scale}
#' \item{p2.polar}{measured on a [0,1] scale}
#' \item{p2.size}{measured on a [0,1] scale}
#' \item{p2.flex}{measured on a [0,1] scale}
#' \item{p2.h.doner}{measured on a [0,1] scale}
#' \item{p2.h.acceptor}{measured on a [0,1] scale}
#' \item{p2.pi.doner}{measured on a [0,1] scale}
#' \item{p2.pi.acceptor}{measured on a [0,1] scale}
#' \item{p2.polarisable}{measured on a [0,1] scale}
#' \item{p2.sigma}{measured on a [0,1] scale}
#' \item{p3.polar}{measured on a [0,1] scale}
#' \item{p3.size}{measured on a [0,1] scale}
#' \item{p3.flex}{measured on a [0,1] scale}
#' \item{p3.h.doner}{measured on a [0,1] scale}
#' \item{p3.h.acceptor}{measured on a [0,1] scale}
#' \item{p3.pi.doner}{measured on a [0,1] scale}
#' \item{p3.polarisable}{measured on a [0,1] scale}
#' \item{p3.sigma}{measured on a [0,1] scale}
#' \item{activity}{log 1/Ki, where Ki is the inhibition constant as
#' experimentally assayed, scaled to [0,1]} }
#' @source Jonathan D. Hirst, Ross D. King, Michael J. E. Sternberg (1994)
#' Quantitative structure-activity relationships by neural networks and
#' inductive logic programming. I. The inhibition of dihydrofolate reductase by
#' pyrimidines \doi{10.1007/BF00125375}
#' @keywords datasets
#' @examples
#'
#' data(pyrimidines)
#' ## maybe str(pyrimidines) ; plot(pyrimidines) ...
#'
NULL





#' Rabbit weight gain by diet and litter
#'
#' A nutritionist studied the effects of six diets, on weight gain of domestic
#' rabbits.  From past experience with sizes of litters, it was felt that only
#' 3 uniform rabbits could be selected from each available litter. There were
#' ten litters available forming blocks of size three.
#'
#'
#' @name rabbit
#' @docType data
#' @format The variables in the dataset were \describe{ \item{treat}{
#' Diet a through f}
#'
#' \item{gain}{ Weight gain}
#'
#' \item{block}{ Block (10 litters)} }
#' @source "Experimental Design and Analysis" by M. Lentner and T. Bishop,
#' Valley Book Company, 1986
#' @keywords datasets
NULL





#' Rat growth weights affected by additives
#'
#' The data consist of 5 weekly measurements of body weight for 27 rats. The
#' first 10 rats are on a control treatment while 7 rats have thyroxine added
#' to their drinking water. 10 Rats have thiouracil added to their water.
#'
#'
#' @name ratdrink
#' @docType data
#' @format A data frame with 135 observations on the following 4 variables.
#' \describe{ \item{wt}{Weight of the rat} \item{weeks}{Week of
#' the study from 0 to 4} \item{subject}{the rat code number}
#' \item{treat}{treatment applied to the rat drinking water - a factor
#' with levels \code{control} \code{thiouracil} \code{thyroxine}} }
#' @source Unknown
#' @keywords datasets
NULL





#' Effect of toxic agents on rats
#'
#' An experiment was conducted as part of an investigation to combat the
#' effects of certain toxic agents.
#'
#'
#' @name rats
#' @docType data
#' @format A data frame with 48 observations on the following 3 variables.
#' \describe{ \item{time}{survival time in tens of hours}
#' \item{poison}{the poison type - a factor with levels \code{I}
#' \code{II} \code{III}} \item{treat}{the treatment - a factor with
#' levels \code{A} \code{B} \code{C} \code{D}} }
#' @source Box G and Cox D (1964) "An analysis of transformations" J. Roy.
#' Stat. Soc. Series B. \bold{26} 211.
#' @keywords datasets
NULL





#' Shape and plate effects on current noise in resistors
#'
#' The \code{resceram} data frame has 12 rows and 3 columns. Shape and plate
#' effects on current noise in resistors
#'
#'
#' @name resceram
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{noise}{ current noise } \item{shape}{ the geometrical
#' shape of the resistor, A, B, C or D } \item{plate}{ the ceramic
#' plate on which the resistor was mounted. Only three resistors will fit on
#' one plate. }}
#' @source Natrella, M (1963) "Experimental Statistics" National Bureau of
#' Standards Handbook 91, Gaithersburg MD.
#' @keywords datasets
NULL





#' Salmonella reverse mutagenicity assay
#'
#' The data was collected in a salmonella reverse mutagenicity assay where the
#' numbers of revertant colonies of TA98 Salmonella observed on each of three
#' replicate plates for different doses of quinoline
#'
#'
#' @name salmonella
#' @docType data
#' @format A data frame with 18 observations on the following 2 variables.
#' \describe{ \item{colonies}{numbers of revertant colonies of TA98 Salmonella}
#' \item{dose}{dose level of quinoline} }
#' @source Breslow N.E. (1984), Extra-Poisson Variation in Log-linear Models,
#' ApplStat, pp. 38-44.
#' @keywords datasets
NULL





#' School expenditure and test scores from USA in 1994-95
#'
#' The \code{sat} data frame has 50 rows and 7 columns.  Data were collected to
#' study the relationship between expenditures on public education and test
#' results.
#'
#'
#' @name sat
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{expend}{ Current expenditure per pupil in average daily
#' attendance in public elementary and secondary schools, 1994-95 (in thousands
#' of dollars) } \item{ratio}{ Average pupil/teacher ratio in public
#' elementary and secondary schools, Fall 1994 } \item{salary}{
#' Estimated average annual salary of teachers in public elementary and
#' secondary schools, 1994-95 (in thousands of dollars) }
#' \item{takers}{ Percentage of all eligible students taking the SAT,
#' 1994-95 } \item{verbal}{ Average verbal SAT score, 1994-95 }
#' \item{math}{ Average math SAT score, 1994-95 } \item{total}{
#' Average total score on the SAT, 1994-95 } }
#' @source "Getting What You Pay For: The Debate Over Equity in Public School
#' Expenditures" D. Guber, Journal of Statistics Education, 1999
#' @keywords datasets
NULL





#' Savings rates in 50 countries
#'
#' The \code{savings} data frame has 50 rows and 5 columns.  The data is
#' averaged over the period 1960-1970.
#'
#' Now also appears as \code{LifeCycleSavings} in the \code{datasets} package
#'
#'
#' @name savings
#' @docType data
#' @format This data frame contains the following columns: \describe{
#'
#' \item{sr}{savings rate - personal saving divided by disposable
#' income}
#'
#' \item{pop15}{percent population under age of 15}
#'
#' \item{pop75}{percent population over age of 75}
#'
#' \item{dpi}{per-capita disposable income in dollars}
#'
#' \item{ddpi}{percent growth rate of dpi} }
#' @source Belsley, D., Kuh. E. and Welsch, R. (1980) "Regression Diagnostics"
#' Wiley.
#' @keywords datasets
#' @seealso LifeCycleSavings
NULL





#' Car seat position depending driver size
#'
#' Car drivers like to adjust the seat position for their own comfort. Car
#' designers would find it helpful to know where different drivers will
#' position the seat depending on their size and age. Researchers at the
#' HuMoSim laboratory at the University of Michigan collected data on 38
#' drivers.
#'
#'
#' @name seatpos
#' @docType data
#' @format The dataset contains the following variables \describe{
#' \item{Age}{ Age in years} \item{Weight}{ Weight in lbs}
#' \item{HtShoes}{ Height in shoes in cm} \item{Ht}{ Height
#' bare foot in cm} \item{Seated}{ Seated height in cm}
#' \item{Arm}{ lower arm length in cm} \item{Thigh}{ Thigh
#' length in cm} \item{Leg}{ Lower leg length in cm}
#' \item{hipcenter}{ horizontal distance of the midpoint of the hips
#' from a fixed location in the car in mm} }
#' @source "Linear Models in R" by Julian Faraway, CRC Press, 2004
#' @keywords datasets
NULL





#' Germination of seeds depending on moisture and covering
#'
#' A Biologist analyzed an experiment to determine the effect of moisture
#' content on seed germination. Eight boxes of 100 seeds each were treated with
#' the same moisture level. 4 boxes were covered and 4 left uncovered. The
#' process was repeated at 6 different moisture levels (nonlinear scale).
#'
#'
#' @name seeds
#' @docType data
#' @format A data frame with 48 observations on the following 3 variables.
#' \describe{ \item{germ}{percentage germinated}
#' \item{moisture}{moisture level} \item{covered}{a factor with
#' levels \code{no} \code{yes}} }
#' @source Chatfield C. (1995) Problem Solving: A Statistician's Guide, 2ed
#' Chapman Hall.
#' @keywords datasets
#' @examples
#'
#' data(seeds)
#' ## maybe str(seeds) ; plot(seeds) ...
#'
NULL





#' Semiconductor split-plot experiment
#'
#' The \code{semicond} data frame has 48 rows and 5 columns.
#'
#' Also found in the \code{SASmixed} package
#'
#' @name semicond
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{resistance}{ a numeric vector } \item{ET}{ a factor with levels
#' \code{1} to \code{4} representing etch time.  } \item{Wafer}{ a factor with
#' levels \code{1} to \code{3} } \item{position}{ a factor with levels \code{1}
#' to \code{4} } \item{Grp}{ an ordered factor with levels \code{1/1} <
#' \code{1/2} < \code{1/3} < \code{2/1} < \code{2/2} < \code{2/3} < \code{3/1}
#' < \code{3/2} < \code{3/3} < \code{4/1} < \code{4/2} < \code{4/3} } }
#' @source Littel, R. C., Milliken, G. A., Stroup, W. W., and Wolfinger, R. D.
#' (1996), \emph{SAS System for Mixed Models}, SAS Institute (Data Set 2.2(b)).
#' @keywords datasets
NULL





#' Post traumatic stress disorder in abused adult females
#'
#' The data for this example come from a study of the effects of childhood
#' sexual abuse on adult females. 45 women being treated at a clinic, who
#' reported childhood sexual abuse, were measured for post traumatic stress
#' disorder and childhood physical abuse both on standardized scales. 31 women
#' also being treated at the same clinic, who did not report childhood sexual
#' abuse were also measured. The full study was more complex than reported here
#' and so readers interested in the subject matter should refer to the original
#' article.
#'
#'
#' @name sexab
#' @docType data
#' @format The variables in the dataset are \describe{
#'
#' \item{cpa}{ Childhood physical abuse on standard scale}
#'
#' \item{ptsd}{ Post-traumatic stress disorder on standard scale}
#' \item{csa}{ Childhood sexual abuse - abused or not abused} }
#' @source N. Rodriguez and S. Ryan and H. Vande Kemp and D. Foy (1997)
#' "Postraumatic stress disorder in adult female survivors of childhood sexual
#' abuse: A comparison study", Journal of Consulting and Clinical Pyschology,
#' 65, 53-59
#' @keywords datasets
NULL





#' Marital sex ratings
#'
#' Data from a questionaire from 91 couples in the Tucson, Arizona area.
#' Subjects answered the question "Sex is fun for me and my partner". The
#' possible answers were "never or occasionally","fairly often","very often"
#' and "almost always"
#'
#'
#' @name sexfun
#' @docType data
#' @format A data frame with 16 observations on the following 3 variables.
#' \describe{ \item{y}{the count} \item{husband}{a factor with levels
#' \code{never} \code{fairly} \code{very} \code{always}} \item{wife}{a factor
#' with levels \code{never} \code{fairly} \code{very} \code{always}} }
#' @source Hout, M., Duncan, O. and Sobel M. (1987) Association and
#' heterogeneity: Structural models of similarities and differences.
#' Sociological Methods. 17, 145-184.
#' @keywords datasets
NULL





#' Snail production
#'
#' A study was conducted to optimize snail production for consumption. The
#' percentage water content of the tissues of snails grown under three
#' different levels of relative humidity and two different temperatures was
#' recorded. For each combination, 4 snails were observed.
#'
#'
#' @name snail
#' @docType data
#' @format A data frame with 24 observations on the following 3 variables.
#' \describe{ \item{water}{percentage water content}
#' \item{temp}{temperature in C} \item{humid}{relative
#' humidity} }
#' @source Unknown
#' @keywords datasets
#' @examples
#'
#' data(snail)
#' ## maybe str(snail) ; plot(snail) ...
#'
NULL





#' Solder skips in printing circuit boards
#'
#' ATT ran an experiment varying five factors relevant to a wave-soldering
#' procedure for mounting components on printed circuit boards.  The response
#' variable, skips, is a count of how many solder skips appeared to a visual
#' inspection.
#'
#'
#' @name solder
#' @docType data
#' @format A data frame with 900 observations on the following 6 variables.
#' \describe{ \item{Opening}{a factor with levels \code{L} \code{M}
#' \code{S}} \item{Solder}{a factor with levels \code{Thick}
#' \code{Thin}} \item{Mask}{a factor with levels \code{A1.5} \code{A3}
#' \code{A6} \code{B3} \code{B6}} \item{PadType}{a factor with levels
#' \code{D4} \code{D6} \code{D7} \code{L4} \code{L6} \code{L7} \code{L8}
#' \code{L9} \code{W4} \code{W9}} \item{Panel}{a numeric vector}
#' \item{skips}{count of how many solder skips appeared to a visual
#' inspection} }
#' @source Comizzoli, R. B., J. M. Landwehr, and J. D. Sinclair (1990). Robust
#' materials and processes: Key to reliability. AT&T Technical Journal 69(6),
#' 113-128.
#' @keywords datasets
#' @examples
#'
#' data(solder)
#' ## maybe str(solder) ; plot(solder) ...
#'
NULL





#' Sonoluminescence
#'
#' The \code{sono} data frame has 16 rows and 8 columns.  Sonoluminescence is
#' the process of turning sound energy into light.  An experiment was conducted
#' to study factors affecting this process.
#'
#'
#' @name sono
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{Intensity}{ Sonoluminescent light intensity }
#' \item{Molarity}{ Amount of Solute. The coding is "low" for 0.10 mol
#' and "high" for 0.33 mol. } \item{Solute}{ Solute type. The coding is
#' "low" for sugar and "high" for glycerol. } \item{pH}{ The coding is
#' "low" for 3 and "high" for 11. } \item{Gas}{ Gas type in water. The
#' coding is "low" for helium and "high" for air. } \item{Water}{ Water
#' depth. The coding is "low" for half and "high" for full. }
#' \item{Horn}{ Horn depth. The coding is "low" for 5 mm and "high" for
#' 10 mm. } \item{Flask}{ Flask clamping. The coding is "low" for
#' unclamped and "high" for clamped. }}
#' @source Eva Wilcox and Ken Inn of the NIST Physics Laboratory conducted this
#' experiment during 1999 and published in NIST/SEMATECH e-Handbook of
#' Statistical Methods, http://www.itl.nist.gov/div898/handbook/
#' @keywords datasets
NULL





#' Germination failures for soybean seeds
#'
#' An experiment was conducted to compare the germination rates of the five
#' varieties of soybean. Five plots were available.
#'
#'
#' @name soybean
#' @docType data
#' @format A data frame with 25 observations on the following 3 variables.
#' \describe{ \item{variety}{the variety - a factor with levels
#' \code{arasan} \code{check} \code{fermate} \code{semesan} \code{spergon}}
#' \item{replicate}{the plot - a factor with levels \code{1} \code{2}
#' \code{3} \code{4} \code{5}} \item{failure}{the number of failures
#' out of 100 planted seeds} }
#' @source Snedecor G. and Cochran W. (1967) Statistical Methods (6th Ed) Iowa
#' State University Press
#' @keywords datasets
NULL





#' Teaching methods in Economics
#'
#' A study to determine the effectiveness of a new teaching method in Economics
#'
#'
#' @name spector
#' @docType data
#' @format A data frame with 32 observations on the following 4 variables.
#' \describe{ \item{grade}{1 = exam grades improved, 0 = not improved}
#' \item{psi}{1 = student exposed to PSI (a new teach method), 0 = not exposed}
#' \item{tuce}{a measure of ability when entering the class} \item{gpa}{grade
#' point average} }
#' @source Spector, L. and Mazzeo, M. (1980), "Probit Analysis and Economic
#' Education", Journal of Economic Education, 11, 37 - 44.
#' @keywords datasets
NULL





#' Speedometer cable shrinkage
#'
#' Speedometer cables can be noisy because of shrinkage in the plastic casing
#' material. An experiment was conducted to find out what caused shrinkage by
#' screening a large number of factors.  The engineers started with 15
#' different factors.
#'
#'
#' @name speedo
#' @docType data
#' @format The dataset contains the following variables: (variables a-o are 2
#' level factors, coded "+" and "-" where "+" indicates a higher value where
#' appropriate) \describe{ \item{a}{ liner outer diameter}
#' \item{b}{ liner die} \item{c}{ liner material}
#' \item{d}{ liner line speed} \item{e}{ wire braid type}
#' \item{f}{ braiding tension} \item{g}{ wire diameter}
#' \item{h}{ liner tension} \item{i}{ liner temperature}
#' \item{j}{ coating material} \item{k}{ coating die type}
#' \item{l}{ melt temperature} \item{m}{ screen pack}
#' \item{n}{ cooling method} \item{o}{ line speed}
#' \item{y}{ percentage shrinkage per specimen} }
#' @source G. P. Box and S. Bisgaard and C. Fung (1988) "An explanation and
#' critque of Taguchi's contributions to quality engineering", Quality and
#' reliability engineering international, 4, 123-131
#' @keywords datasets
NULL





#' Star temperatures and light intensites
#'
#' Data on the log of the surface temperature and the log of the light
#' intensity of 47 stars in the star cluster CYG OB1, which is in the direction
#' of Cygnus,
#'
#'
#' @name star
#' @docType data
#' @format A data frame with 47 observations on the following 3 variables.
#' \describe{ \item{index}{a numeric vector}
#' \item{temp}{temperature} \item{light}{light intensity} }
#' @source Rousseeuw, P. and A. Leroy (1987). Robust Regression and Outlier
#' Detection. New York: Wiley.
#' @keywords datasets
#' @examples
#'
#' data(star)
#' ## maybe str(star) ; plot(star) ...
#'
NULL





#' Marks in a statistics class
#'
#' Marks from Statistics 500 one year at the University of Michigan
#'
#'
#' @name stat500
#' @docType data
#' @format A data frame with 55 observations on the following 4 variables.
#' \describe{ \item{midterm}{a numeric vector} \item{final}{a
#' numeric vector} \item{hw}{a numeric vector} \item{total}{a
#' numeric vector} }
#' @source Julian Faraway
#' @keywords datasets
#' @examples
#'
#' data(stat500)
#' ## maybe str(stat500) ; plot(stat500) ...
#'
NULL





#' Stepping and effect on heart rate
#'
#' An experiment was conducted to explore the nature of the relationship
#' between a person's heart rate and the frequency at which that person stepped
#' up and down on steps of various heights.
#'
#'
#' @name stepping
#' @docType data
#' @format A data frame with 30 observations on the following 6 variables.
#' \describe{ \item{Order}{running order within the experiment}
#' \item{Block}{Experimenter used} \item{Height}{0 if step at
#' the low (5.75in) height, 1 if at the high (11.5in) height}
#' \item{Frequency}{the rate of stepping. 0 if slow (14 steps/min), 1
#' if medium (21 steps/min), 2 if high (28 steps/min)}
#' \item{RestHR}{the resting heart rate of the subject before a trial,
#' in beats per minute} \item{HR}{ the final heart rate of the subject
#' after a trial, in beats per minute } }
#' @source Unknown
#' @keywords datasets
#' @examples
#'
#' data(stepping)
#' ## maybe str(stepping) ; plot(stepping) ...
#'
NULL





#' Strong interaction experiment data
#'
#' Example Dataset from "Practical Regression and Anova"
#'
#' @name strongx
#' @docType data
#' @format \describe{Dataframe with 10 cases
#' \item{momentum}{}
#' \item{energy}{inverse total energy}
#' \item{crossx}{Scattering cross-section/sec}
#' \item{sd}{standard deviation}}
#' @references Weisberg, S. (2014). Applied Linear Regression, 4th edition. Hoboken NJ: Wiley.
#' @source Weisberg, H., Beier, H., Brody, H., Patton, R., Raychaudhari, K., Takeda, H., Thern, R. and Van Berg, R. (1978). s-dependence of proton fragmentation by hadrons. II. Incident laboratory momenta, 30–250 GeV/c. Physics Review D, 17, 2875–2887.
#' @keywords datasets
NULL





#' Suicide method data from the UK
#'
#' One year of suicide data from the United Kingdom crossclassified by sex, age
#' and method.
#'
#'
#' @name suicide
#' @docType data
#' @format A data frame with 36 observations on the following 4 variables.
#' \describe{ \item{y}{number of people} \item{cause}{method
#' used - a factor with levels \code{drug} (suicide by solid or liquid matter),
#' \code{gas}, \code{gun} (guns, knives or explosives) \code{hang} (hanging,
#' strangling, suffocating or drowning, \code{jump} \code{other}}
#' \item{age}{a factor with levels \code{m} (middle-aged) \code{o}
#' (old) \code{y} (young) } \item{sex}{a factor with levels \code{f}
#' \code{m}} }
#' @source Everitt B. & Dunn G. (1991) "Applied Multivariate Data Analysis"
#' Edward Arnold
#' @keywords datasets
NULL










#' Study of teenage gambling in Britain
#'
#' The \code{teengamb} data frame has 47 rows and 5 columns. A survey was
#' conducted to study teenage gambling in Britain.
#'
#'
#' @name teengamb
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{sex}{ 0=male, 1=female } \item{status}{ Socioeconomic
#' status score based on parents' occupation } \item{income}{ in pounds
#' per week } \item{verbal}{ verbal score in words out of 12 correctly
#' defined } \item{gamble}{ expenditure on gambling in pounds per year
#' }}
#' @source Ide-Smith & Lea, 1988, Journal of Gambling Behavior, 4, 110-118
#' @keywords datasets
NULL





#' Toenail infection treatment study
#'
#' The data come from a Multicenter study comparing two oral treatments for
#' toenail infection. Patients were evaluated for the degree of separation of
#' the nail. Patients were randomized into two treatments and were followed
#' over seven visits - four in the first year and yearly thereafter. The
#' patients have not been treated prior to the first visit so this should be
#' regarded as the baseline.
#'
#'
#' @name toenail
#' @docType data
#' @format A data frame with 1908 observations on the following 5 variables.
#' \describe{ \item{ID}{ID of patient} \item{outcome}{0=none or
#' mild seperation, 1=moderate or severe } \item{treatment}{the
#' treatment A=0 or B=1} \item{month}{time of the visit (not exactly
#' monthly intervals hence not round numbers)} \item{visit}{the number
#' of the visit} }
#' @references Lesaffre, E. and Spiessens, B. (2001). On the effect of the
#' number of quadrature points in a logistic random-effects model: An example.
#' Journal of the Royal Statistical Society, Series C, 50, 325-335.
#'
#' G. Fitzmaurice, N. Laird and J. Ware (2004) Applied Longitudinal Analysis,
#' Wiley
#' @source De Backer, M., De Vroey, C., Lesaffre, E., Scheys, I., and De
#' Keyser, P. (1998). Twelve weeks of continuous oral therapy for toenail
#' onychomycosis caused by dermatophytes: A double-blind comparative trial of
#' terbinafine 250 mg/day versus itraconazole 200 mg/day. Journal of the
#' American Academy of Dermatology, 38, 57-63.
#' @keywords datasets
NULL





#' Survival of trout eggs depending on time and location
#'
#' Boxes of trout eggs were buried at five different stream locations and
#' retrieved at 4 different times. The number of surviving eggs was recorded.
#' The box was not returned to the stream.
#'
#'
#' @name troutegg
#' @docType data
#' @format A data frame with 20 observations on the following 4 variables.
#' \describe{ \item{survive}{the number of surviving eggs}
#' \item{total}{the number of eggs in the box}
#' \item{location}{the location in the stream with levels \code{1}
#' \code{2} \code{3} \code{4} \code{5}} \item{period}{the number of
#' weeks after placement that the box was withdrawn levels \code{4} \code{7}
#' \code{8} \code{11}} }
#' @references Hinde J. and Demetrio C. (1988) Overdispersion: Models and
#' estimation. Computational Statistics and Data Analysis. 27, 151-170.
#' @source Manly B. (1978) Regression models for proportions with extraneous
#' variance. Biometrie-Praximetrie, 18, 1-18.
#' @keywords datasets
NULL





#' Truck leaf spring experiment
#'
#' Data on an experiment concerning the production of leaf springs for trucks.
#' A \eqn{2^{5-1}} fractional factorial experiment with 3 replicates was
#' carried out with objective of recommending production settings to achieve a
#' free height as close as possible to 8 inches.
#'
#'
#' @name truck
#' @docType data
#' @format A data frame with 48 observations on the following 6 variables.
#' \describe{ \item{B}{furnace temperature - a factor with levels
#' \code{+} \code{-}} \item{C}{heating time - a factor with levels
#' \code{+} \code{-}} \item{D}{transfer time - a factor with levels
#' \code{+} \code{-}} \item{E}{hold-down time - a factor with levels
#' \code{+} \code{-}} \item{O}{quench oil temperature - a factor with
#' levels \code{+} \code{-}} \item{height}{leaf spring free height in
#' inches} }
#' @references P. McCullagh and J. Nelder (1989) "Generalized Linear Models"
#' Chapman and Hall, 2nd ed.
#' @source J. J. Pignatiello and J. S. Ramberg (1985) Contribution to
#' discussion of offline quality control, parameter design and the Taguchi
#' method, Journal of Quality Technology, \bold{17} 198-206.
#' @keywords datasets
NULL





#' Incubation temperature and the sex of turtles
#'
#' Incubation temperature can affect the sex of turtles. There are 3
#' independent replicates for each temperature.
#'
#' @name turtle
#' @docType data
#' @format A data frame with 15 observations on the following 3 variables.
#' \describe{ \item{temp}{temperature in degrees centigrade} \item{male}{number
#' of male turtles hatched} \item{female}{number of female turtles hatched} }
#' @source Beyond Traditional Statistical Methods Copyright 2000 D. Cook, P.
#' Dixon, W. M. Duckworth, M. S. Kaiser, K. Koehler, W. Q. Meeker and W. R.
#' Stephenson. Developed as part of NSF/ILI grant DUE9751644.
#' @keywords datasets
#' @examples
#'
#' data(turtle)
#'
NULL





#' Life, TVs and Doctors
#'
#' Life expectancy, doctors and televisions collected on 38 countries in 1993
#'
#'
#' @name tvdoctor
#' @docType data
#' @format A data frame with 38 observations on the following 3 variables.
#' \describe{ \item{life}{Life expectancy in years}
#' \item{tv}{Number of people per television set}
#' \item{doctor}{Number of people per doctor} }
#' @source Unknown, data for illustration purposes only
#' @keywords datasets
#' @examples
#'
#' data(tvdoctor)
#' ## maybe str(tvdoctor) ; plot(tvdoctor) ...
#'
NULL





#' Twin IQs from Burt
#'
#' Study of IQ in twins reared apart
#'
#'
#' @name twins
#' @docType data
#' @format A dataframe with the following variables: \describe{
#' \item{Foster}{IQ of the fostered child}
#' \item{Biological}{IQ of the biological child}
#' \item{Social}{social class of natural parents}}
#' @references Weisberg, S. (2014). Applied Linear Regression, 4th edition. Hoboken NJ: Wiley.
#' @source Burt, C. (1966). The genetic estimation of differences in intelligence:
#' A study of monozygotic twins reared together and apart. Br. J. Psych., 57, 147-153.
#' @keywords datasets
NULL





#' UNC student opinions about the Vietnam War
#'
#' A student newspaper conducted a survey of student opinions about the Vietnam
#' War in May 1967. Responses were classified by sex, year in the program and
#' one of four opinions. The survey was voluntary.
#'
#'
#' @name uncviet
#' @docType data
#' @format A data frame with 40 observations on the following 4 variables.
#' \describe{ \item{y}{the count} \item{policy}{a factor with
#' levels \code{A} (defeat power of North Vietnam by widespread bombing and
#' land invasion) \code{B} (follow the present policy) \code{C} (withdraw
#' troops to strong points and open negotiations on elections involving the
#' Viet Cong) \code{D} (immediate withdrawal of all U.S. troops)}
#' \item{sex}{a factor with levels \code{Female} \code{Male}}
#' \item{year}{a factor with levels \code{Fresh} \code{Grad}
#' \code{Junior} \code{Senior} \code{Soph}} }
#' @source M. Aitkin and D. Anderson and B. Francis and J. Hinde (1989)
#' "Statistical Modelling in GLIM" Oxford University Press.
#' @keywords datasets
NULL





#' Weekly wages of US male workers in 1988
#'
#' The \code{uswages} data frame has 2000 rows and 10 columns. Weekly Wages for
#' US male workers sampled from the Current Population Survey in 1988.
#'
#'
#' @name uswages
#' @docType data
#' @format This data frame contains the following columns: \describe{
#' \item{wage}{ Real weekly wages in dollars (deflated by personal
#' consumption expenditures - 1992 base year)
#'
#' } \item{educ}{ Years of education } \item{exper}{ Years of
#' experience } \item{race}{ 1 if Black, 0 if White (other races not in
#' sample) } \item{smsa}{ 1 if living in Standard Metropolitan
#' Statistical Area, 0 if not } \item{ne}{ 1 if living in the North
#' East } \item{mw}{ 1 if living in the Midwest } \item{we}{ 1
#' if living in the West } \item{so}{ 1 if living in the South }
#' \item{pt}{ 1 if working part time, 0 if not } }
#' @source Bierens, H.J., and D. Ginther (2001): "Integrated Conditional Moment
#' Testing of Quantile Regression Models", Empirical Economics 26, 307-324
#' @keywords datasets
NULL





#' Acuity of vision in response to light flash
#'
#' The acuity of vision for seven subjects was tested. The response is the lag
#' in milliseconds between a light flash and a response in the cortex of the
#' eye. Each eye is tested at four different powers of lens. An object at the
#' distance of the second number appears to be at distance of the first number.
#'
#'
#' @name vision
#' @docType data
#' @format A data frame with 56 observations on the following 4 variables.
#' \describe{ \item{acuity}{a numeric vector} \item{power}{a
#' factor with levels \code{6/6} \code{6/18} \code{6/36} \code{6/60}}
#' \item{eye}{a factor with levels \code{left} \code{right}}
#' \item{subject}{a factor with levels \code{1} \code{2} \code{3}
#' \code{4} \code{5} \code{6} \code{7}} }
#' @source Crowder, M. J. and D. J. Hand (1990). Analysis of Repeated Measures.
#' London: Chapman & Hall.
#' @keywords datasets
#' @examples
#'
#' data(vision)
#' ## maybe str(vision) ; plot(vision) ...
#'
NULL





#' resitivity of wafer in semiconductor experiment
#'
#' A full factorial experiment with four two-level predictors.
#'
#'
#' @name wafer
#' @docType data
#' @format A data frame with 16 observations on the following 5 variables.
#' \describe{ \item{x1}{a factor with levels \code{-} \code{+}} \item{x2}{a
#' factor with levels \code{-} \code{+}} \item{x3}{a factor with levels
#' \code{-} \code{+}} \item{x4}{a factor with levels \code{-} \code{+}}
#' \item{resist}{Resistivity of the wafer} }
#' @source Myers, R. and Montgomery D. (1997) A tutorial on generalized linear
#' models, Journal of Quality Technology, 29, 274-291.
#' @keywords datasets
NULL





#' Defects in a wave soldering process
#'
#' Components are attached to an electronic circuit card assembly by a
#' wave-soldering process. The soldering process involves baking and preheating
#' the circuit card and then passing it through a solder wave by conveyor.
#' Defect arise during the process. Design is \eqn{2^{7-3}} with 3 replicates.
#'
#'
#' @name wavesolder
#' @docType data
#' @format A data frame with 16 observations on the following 10 variables.
#' \describe{ \item{y1}{Number of defects in the first replicate}
#' \item{y2}{Number of defects in the second replicate} \item{y3}{Number of
#' defects in the third replicate} \item{prebake}{prebake condition - a factor
#' with levels \code{1} \code{2}} \item{flux}{flux density - a factor with
#' levels \code{1} \code{2}} \item{speed}{conveyor speed - a factor with levels
#' \code{1} \code{2}} \item{preheat}{preheat condition - a factor with levels
#' \code{1} \code{2}} \item{cooling}{cooling time - a factor with levels
#' \code{1} \code{2}} \item{agitator}{ultrasonic solder agitator - a factor
#' with levels \code{1} \code{2}} \item{temp}{solder temperature - facctor with
#' levels \code{1} \code{2}} }
#' @references M. Hamada and J. Nelder (1997) Generalized linear models for
#' quality improvement experiments, Journal of Quality Technology, 29, 292-304
#' @source L. Condra (1993) Reliability improvement with design of experiments.
#' Marcel Dekker, NY.
#' @keywords datasets
NULL





#' Wisconsin breast cancer database
#'
#' Data come from a study of breast cancer in Wisconsin. There are 681 cases of
#' potentially cancerous tumors of which 238 are actually malignant.
#' Determining whether a tumor is really malignant is traditionally determined
#' by an invasive surgical procedure. The purpose of this study was to
#' determine whether a new procedure called fine needle aspiration which draws
#' only a small sample of tissue could be effective in determining tumor
#' status.
#'
#' The predictor values are determined by a doctor observing the cells and
#' rating them on a scale from 1 (normal) to 10 (most abnormal) with respect to
#' the particular characteristic.
#'
#' @name wbca
#' @docType data
#' @format A data frame with 681 observations on the following 10 variables.
#' \describe{ \item{Class}{0 if malignant, 1 if benign}
#' \item{Adhes}{marginal adhesion} \item{BNucl}{bare nuclei}
#' \item{Chrom}{bland chromatin} \item{Epith}{epithelial cell
#' size} \item{Mitos}{mitoses} \item{NNucl}{normal nucleoli}
#' \item{Thick}{clump thickness} \item{UShap}{cell shape
#' uniformity} \item{USize}{cell size uniformity} }
#' @source Bennett, K.,P., and Mangasarian, O.L., Neural network training via
#' linear programming. In P. M. Pardalos, editor, Advances in Optimization and
#' Parallel Computing, pages 56-57. Elsevier Science, 1992
#' @keywords datasets
NULL





#' Western Collaborative Group Study
#'
#' 3154 healthy young men aged 39-59 from the San Francisco area were assessed
#' for their personality type. All were free from coronary heart disease at the
#' start of the research. Eight and a half years later change in this situation
#' was recorded.
#'
#' The WCGS began in 1960 with 3,524 male volunteers who were employed by 11
#' California companies. Subjects were 39 to 59 years old and free of heart
#' disease as determined by electrocardiogram. After the initial screening, the
#' study population dropped to 3,154 and the number of companies to 10 because
#' of various exclusions. The cohort comprised both blue- and white-collar
#' employees. At baseline the following information was collected:
#' socio-demographic including age, education, marital status, income,
#' occupation; physical and physiological including height, weight, blood
#' pressure, electrocardiogram, and corneal arcus; biochemical including
#' cholesterol and lipoprotein fractions; medical and family history and use of
#' medications; behavioral data including Type A interview, smoking, exercise,
#' and alcohol use. Later surveys added data on anthropometry, triglycerides,
#' Jenkins Activity Survey, and caffeine use. Average follow-up continued for
#' 8.5 years with repeat examinations
#'
#' @name wcgs
#' @docType data
#' @format A data frame with 3154 observations on the following 13 variables.
#' \describe{ \item{age}{age in years} \item{height}{height in
#' inches} \item{weight}{weight in pounds} \item{sdp}{systolic
#' blood pressure in mm Hg} \item{dbp}{diastolic blood pressure in mm
#' Hg} \item{chol}{Fasting serum cholesterol in mm \%}
#' \item{behave}{behavior type which is a factor with levels \code{A1}
#' \code{A2} \code{B3} \code{B4}} \item{cigs}{number of cigarettes
#' smoked per day} \item{dibep}{behavior type a factor with levels
#' \code{A} (Agressive) \code{B} (Passive)} \item{chd}{coronary heat
#' disease developed is a factor with levels \code{no} \code{yes}}
#' \item{typechd}{type of coronary heart disease is a factor with
#' levels \code{angina} \code{infdeath} \code{none} \code{silent}}
#' \item{timechd}{Time of CHD event or end of follow-up}
#' \item{arcus}{arcus senilis is a factor with levels \code{absent}
#' \code{present}} }
#' @references Coronary Heart Disease in the Western Collaborative Group Study
#' Final Follow-up Experience of 8 1/2 Years Ray H. Rosenman, MD; Richard J.
#' Brand, PhD; C. David Jenkins, PhD; Meyer Friedman, MD; Reuben Straus, MD;
#' Moses Wurm, MD JAMA. 1975;233(8):872-877.
#' doi:10.1001/jama.1975.03260080034016.
#' @source Statistics for Epidemiology by N. Jewell (2004)
#' @keywords datasets
#' @examples
#'
#' data(wcgs)
#' ## maybe str(wcgs) ; plot(wcgs) ...
#'
NULL





#' welding strength DOE
#'
#' An experiment to investigate factors affecting welding strength.
#'
#'
#' @name weldstrength
#' @docType data
#' @format A data frame with 16 observations on the following 10 variables.
#' \describe{ \item{Rods}{a 0-1 predictor} \item{Drying}{a 0-1 predictor}
#' \item{Material}{a 0-1 predictor} \item{Thickness}{a 0-1 predictor}
#' \item{Angle}{a 0-1 predictor} \item{Opening}{a 0-1 predictor}
#' \item{Current}{a 0-1 predictor} \item{Method}{a 0-1 predictor}
#' \item{Preheating}{a 0-1 predictor} \item{Strength}{The welding strength} }
#' @source G. Box and R. Meyer (1986) Dispersion effects from fractional
#' designs, Technometrics, 28, 19-27
#' @keywords datasets
NULL

#' Percentage of Body Fat and Body Measurements in Women
#'
#' Age, weight, height, and 10 body circumference measurements are recorded for
#' 184 women. Each woman's percentage of body fat was accurately estimated by an
#' underwater weighing technique.
#'
#'
#' @name wfat
#' @docType data
#' @format A data frame with 184 observations on the following 19 variables.
#' \describe{ 
#' \item{siri}{ Percent body fat using Siri's equation} 
#' \item{weight}{ Weight (lbs)}
#' \item{height}{ Height (inches)} 
#' \item{bmi}{Body Mass Index}
#' \item{age}{ Age (yrs)} 
#' \item{neck}{ Neck circumference (cm)} 
#' \item{chest}{ Chest circumference (cm)} 
#' \item{calf}{Calf circumference (cm)}
#' \item{biceps}{ Extended biceps circumference (cm)} 
#' \item{hip}{Hip circumference (cm)} 
#' \item{abdom}{Horizontal minimal measurement, at the end of a normal expiration (cm)}
#' \item{forearm}{Forearm circumference (cm)}
#' \item{thigh}{(Proximal Thigh) Horizontal measurement immediately 
#' distal to the gluteal furrow (cm)}
#' \item{mthigh}{(Middle Thigh) Measurement midway between the midpoint 
#' of the inguinal crease and the proximal border of the patella (cm)}
#' \item{dthigh}{(Distal Thigh) Measurement proximal to the femoral epicondyles (cm)}
#' \item{wrist}{Wrist circumference (cm) distal to the styloid processes} 
#' \item{knee}{Knee circumference (cm)} 
#' \item{elbow}{A minimal circumference measurement with the elbow extended (cm)}
#' \item{ankle}{Ankle circumference (cm)} }
#' @source Roger W. Johnson (2021): Fitting Percentage of Body Fat to Simple Body 
#' Measurements: College Women, Journal of Statistics and Data Science Education, 
#' DOI: 10.1080/26939169.2021.1971585
#' @seealso \code{\link{fat}}
#' @keywords datasets
NULL



#' Insect damage to wheat by variety
#'
#' Insect damage to wheat by variety
#'
#'
#' @name wheat
#' @docType data
#' @format A data frame with 13 observations on the following 2 variables.
#' \describe{ \item{damage}{a numeric vector} \item{variety}{a
#' factor with levels \code{A} \code{B} \code{C} \code{D}} }
#' @source Unknown
#' @keywords datasets
#' @examples
#'
#' data(wheat)
#' ## maybe str(wheat) ; plot(wheat) ...
#'
NULL





#' Data on players from the 2010 World Cup
#'
#' Data on players from the 2010 World Cup
#'
#' None
#'
#' @name worldcup
#' @docType data
#' @format A data frame with 595 observations on the following 7 variables.
#' \describe{ \item{Team}{Country} \item{Position}{a factor
#' with levels \code{Defender} \code{Forward} \code{Goalkeeper}
#' \code{Midfielder}} \item{Time}{Time played in minutes}
#' \item{Shots}{Number of shots attempted} \item{Passes}{Number
#' of passes made} \item{Tackles}{Number of tackles made}
#' \item{Saves}{Number of saves made} }
#' @source Lost
#' @keywords datasets
#' @examples
#'
#' data(worldcup)
#' ## maybe str(worldcup) ; plot(worldcup) ...
#'
NULL



