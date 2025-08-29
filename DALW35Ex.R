# res er 4
res <- 25-5/4

#res er 500
res <- 25-20*30-100*10

# lav en vector af de først 10 primtal
pt <- c()


# lav en function der tager et heltal som argument og 
# returnerer en vektor med en talrække fra 1 til tallet
myRow <- function(myNumber) {
  retval=0
  retval=1:myNumber
  return(retval)
}

testrow <- myRow(34)

# lav en function som returnerer 0 hvis et tal ikke er et primtal
# du må kun bruge det som du har med fra de første 5 kapitler. 
# Altså ikke betingelser (ifelse)
# brug modulo
tal=17



# lav en vector med 1000 tal uniform fordelt 1 til 6
nums <- c()
# lav et sample på 2 observationer fra nums og beregn mean


# gentag dette 100 gange (replicate): lav et sample på 2 observationer fra nums og beregn mean
# gem det i en vektor og plot

# gentag ovenstående men sample på 5,20 og 100 observationer.
# 


#Lav en matrix med tre kolonner. Den første (brug seq) med en række observationer der begynder 
#ved 80, ender med 180 og springer med 10 mellem hver observation. De to andre skal 
#fyldes med NA (brug rep)

v1=seq()
v2=rep()
v3=rep()

#Lav samme matrix men v2 skal udregnes vha Dolbears formel, hvor v1 er antal "quirks" i minuttet

# Lav fire vektorer der har længden 3 som består af hhv:
#Heltal
#Decimaltal
#Booleans
#Characters


#indlæs filen test3.csv og ret den til så y ikke er en karakter men numerisk
df=read.csv("data/test3.csv")
str(df)
test3=df
test3=df
df$yy=as.numeric(df$y)
df$y2=signif(df$yy,2)


#Lav en dataframe på 5 observationer som simulerer alder og kropsvægt
dfpop=data.frame(age=c(12,32,12,12,22),weight=c(76,54,66,34,21))

#Udvid så den består af 50 observationer hvor vægt er normalfordelt og alder uniformt.
#plot så man kan se fordelingen af vægt


#Ændre alder så den er stigende fra 5 til 55 og den normalfordelte vægt skal være sorteret
#Tjek scatterplottet for linearitet

plot()

#indlæs data wq. Hvad er problemet?
dfwq=read.csv("data/wq.csv")

# Hvad handler datasættet om? Hvad kunne man være interesseret i?


# indlæs children.csv 
#Hvor gammelt er element 340?
  
#Lav en dataframe med rækkerne 200 til 300

#Lav en alternerede boolean vektor på 100 elementer (check rep-funktionen)

#Brug denne vektor til at lave en delmængde af de 100 udvalgte


#l







