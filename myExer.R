# res er 5
res <- (25-5)/4

#res er 500
res <- (((25-20)*30)-100)*10

# lav en vector af de først 10 primtal
pt <- c(1,3,5,7,11,13,17,19,23,29)
length(pt)

# lav en function der tager et heltal som argument og 
# returnerer en vektor med en talrække fra 1 til tallet
myRow <- function(tal) {
  retval=0
  # logik
  retval=1:tal
  return(retval)
}

myTal=myRow(20)

# lav en function som returnerer 0 hvis et tal ikke er et primtal
# du må kun bruge det som du har med fra de første 5 kapitler. 
# Altså ikke betingelser (ifelse)
# brug modulo, f.eks 44%%3

myPrim <- function(tal) {
  tal=11
  retval=0
  mrow=1:tal
  mdiv=tal%%mrow
  mdiv
  nyv=sort(mdiv)
  retval=nyv[3]
  return(retval)
}


#Lav en matrix med tre kolonner. Den første (brug seq) med en række observationer der begynder 
#ved 80, ender med 180 og springer med 10 mellem hver observation. De to andre skal 
#fyldes med NA (brug rep)

v1=seq()
v2=rep()
v3=rep()
myMat=matrix(data = c(v1,v2,v3),ncol = 3)

#Lav samme matrix men v2 skal udregnes vha Dolbears formel, hvor v1 er antal "quirks" i minuttet
# (F) = Number of chirps in 15 seconds(NQ)*4 + 40,  
v1=seq()
v2=v1 # og så lidt mere
v3=rep()
myMat=matrix(data = c(v1,v2,v3),ncol = 3)

# Lav fire vektorer der har længden 3 som består af hhv:
#Heltal
#Decimaltal
#Booleans
#Characters




#Lav en dataframe på 5 observationer som simulerer alder og kropsvægt
dfpop=data.frame(age=c(12,32,12,12,22),weight=c(76,54,66,34,21))

### DATA ####
#indlæs data wq. Hvad er problemet?
dfwq=read.csv("data/wq.csv")

# Hvad handler datasættet om? Hvad kunne man være interesseret i?


#### indlæs children.csv 
dfchildren <- read.csv("data/children.csv")

## undersøgelse EDA
# de første 6 observationer
head(dfchildren)


# hvilke typer af variabler ()
str(dfchildren)

# hvor mange unikke aldre?
unique(dfchildren$age)

# Frekvensen i hver alder (table)
table(dfchildren$age)
table(dfchildren$sex)

### subsetting
#Hvor gammelt er element 340?
dfchildren[340,'age']

#Hvilke værdier er der på observationen i 340 række?
dfchildren[340,]

#Gem alderen i en vector på to måder
ageV <- dfchildren[,'age']


#Lav en dataframe med rækkerne 200 til 300
subChildren=dfchildren[200:300,]


## logisk subsetting
#Lav en dataframe med personer på 12
sub12 <- dfchildren[dfchildren$age==12,]

#Lav en dataframe med børn under 12
kids <- dfchildren[dfchildren$age < 12,]

#Lav en dataframe med tweens, altså mellem 12 og 15 (hvor 12 er med)
tweens <- dfchildren[dfchildren$age >= 12 & dfchildren$age < 15,]

#Lav en dataframe med dem som ikke er 12
not12 <- dfchildren[dfchildren$age != 12,]

#Lav en dataframe med dem som er 5,9,13,17,19
randomKids <- dfchildren[dfchildren$age %in% c(5,9,13,17,19),]

### Analyse
# plot height og age
plot(dfchildren$height,dfchildren$age)


## Feature Engineering (FE) 
# FE en ny variabel: højde i forhold til alder
dfchildren$heiage = dfchildren$height/dfchildren$age
plot(dfchildren$heiage)

# FE en ny kolonne - ageII - hvor alder sættes sammen med " år" (paste0)
dfchildren$ageII = paste0(dfchildren$age," år")

# FE en ny kolonne - ageIII - hvor " år" fjernes fra ageII (gsub)
# tjek typen
dfchildren$ageIII=as.numeric(gsub(" år","",dfchildren$ageII))

dfchildren$sex
# FE en ny kolonne hvor kønnet repræsenteres af tal (ifelse)
# 1) ved hjælp af en funktion giveGender som bruges i sapply
dfchildren$gender = sapply(dfchildren$sex, FUN=giveGender)

giveGender <- function(txt) {
  retval=0
  if (txt=='male'){
    retval=1
  } else {
    retval=0
  }
  return(retval)
}
# 2) ved hjælp af ifelse - tjek ?ifelse


## FE og loops
# 1) lav en sekvens af tal der starter ved 1, slutter ved antal observationer
# i children og springer 2
mySeq=seq

# 2) lav et for-loop som bruger mySeq til at printe hver andet element i children
for (i in mySeq) {
  print(i)
  # print nu det i-te element
}

# 3) Brug dit for-loop til at lægge gennemsnittet af to på hinanden følgende 
# højder i en ny kolonne
dfchildren$aggheight=NA
for (i in mySeq) {
  print(i)
  # find de to højder, mean dem og læg dem ind i aggheight
}


#### AGGREGATION #####
# load titanic
dftit <- readRDS("data/titanicCrewAndPass.rds")

## undersøg dataset (EDA)

# hvor mange overlevede? (table)

# hvor mange classes?

# hvor mange mænd/kvinder


## Clean
# lav en ny class-kolonne hvor alle crew er 0, 1st er 1 osv.
# brug en funktion og sapply

mycleaner <- function(text) {
  retval=0
  # if-else (eller gsub) på indholdet af text
  return(retval)
}

# hvor mange kvinder overlevede i forhold til mænd?
survm=aggregate(dftit$survived, list(surv=dftit$survived,gender=dftit$gender), FUN=length)

# hvordan fordelte overlevelse mellem kvinder og mænd fordel på klasser 

