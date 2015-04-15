# Upplägg #

* Forka repositoriet.
* Gör din fork privat. Bjud in mig.
* Allt material du skapar ska finnas i repositoriet.
* Gör **regelbundna commits** med **tydliga** meddelanden.
* Allt som incheckningar måste ske under "lektionstid", och allt som skapas måste vara skapat under "lektionstid".
* Läs igenom [bedömningsmatriserna](./instructions/matriser.md).
* Använd helst markdown för dina dokumentationsfiler ([Texts](http://www.texts.io) är en bra markdown-editor för OS X (`meny -> view -> show toolbar visar formateringsknapparna)).

## Katalogstruktur ##

	├── app # Roten till din webapplikation
	├── doc # Här lägger du Målanalys, Personas & Scenarios, Mockups (med filmer)
	├── instructions # Instruktioner kring deluppgifter
	│   ├── målanalys.md
	│   └── personas och scenarios.md
	└── readme.md

## 1. Gränssnittsdesign ##

### 1.1 Målanalys ###

Gör en [målanalys](./instructions/målanalys.md) av applikationen.

### 1.2 Personas ###

Ta fram minst tre st [personas](./instructions/personas_scenarios.md) som representerar målgrupper du identifierat i målanalysen.

### 1.3 Scenarios ###

Ta fram minst 3 scenarios för de olika personas du tagit fram.

### 1.4 Mockup ###

Med utgångspunkt i målanalys, personas, och scenarios, ta fram en mockup för din applikation.

Använd "Rapid prototyping" och "Parallel Design" (se [meddelande på kursytan](https://learnpoint.it-gymnasiet.se/sodertorn/undervisningsrum/itg_sod_gy_1415_Grans_12TB_1415GRÄGRÄ0/Lists/Meddelanden/DispForm.aspx?ID=1&Source=https%3A%2F%2Flearnpoint%2Eit%2Dgymnasiet%2Ese%2Fsodertorn%2Fundervisningsrum%2Fitg%5Fsod%5Fgy%5F1415%5FGrans%5F12TB%5F1415GR%25C3%2584GR%25C3%25840%2Fdefault%2Easpx)). 

Varje scenario i din mockup måste vara representerad i applikationen (och tvärtom; funktioner som inte finns beskrivna i ett scenario får inte finnas i mockupen)

Du ska sen testa mockupen med hjälp av "Wizard of Oz"-tekniken på någon väl vald person (helst någon som kan representera någon av dina målgrupper). Du **måste** spela in testet (t.ex. med din mobiltelefon eller datorns inbyggda kamera). 

Efter du testat mockupen kan du genomföra eventuella förändringar som framkommit under testet.

## 2. Implementering ##

Implementera din mockup som en interaktiv prototyp med hjälp av Ruby, Sinatra, DataMapper, och eventuell annan teknik du bedömer vara nödvändig.

**Se till att först få en fungerande prototyp som följer *flödet* du specificerat i din mockup.**

**När du har en fungerande prototyp kan du fixa till *utseendet*.**

**All funktionalitet skall finnas återspeglat i mockupen, och i scenarios.**

## 3. Företag & Applikationer ##

Välj ett av följande påhittade företag och applikationer.

Företagen är sorterade efter tänkt minsta svårighet, men det finns naturligtvis möjlighet att utveckla varje applikation och mockup och göra den mer komplex.

### 3.1 BuyBuy ###

BuyBuy är en enkel inköpslista som lätt och enkelt låter avändarna lägga in saker de behöver köpa. 
T.ex ska användaren lätt kunna lägga till mjölk till inköpslistan när hen druckit upp det sista paketet, och lika enkelt stryka varan från inköpslistan när den är lagd i varukorgen i affären.

### 3.2 Kakaokaos ###

Kakaokaos är en liten tillverkare av handgjord choklad. De vill nå ut till en större marknad och anlitar dig för att ta fram en applikaion och idéer kring hur de ska kunna flytta ut sin försäljning till webben.

### 3.3 Kilroy ###

Kilroy (döpt efter [40-tals memet](http://en.wikipedia.org/wiki/Kilroy_was_here)) är en tjänst som låter användarna spara länkar (bokmärken) till sidor. Ta fram en tjänst som låter användarna spara länkar, tagga dem, och dela med sig av utvalda länkar till andra. 

Om du tänker att din tjänst ska använda en browser-extension för att sköta själva sparandet behöver du inte ta fram den, utan kan låtsas att den finns i webbläsaren, men du måste erbjuda ett alternativt sätt att manuellt spara en länk i din applikations gränssnitt.

### 3.4 It's a must! ###

It's a must! är en tjänst för must-älskare. Användarna ska kunna recensera muster av olika tillverkare, förpackningar (tänk pet- vs glasflaska) och årgångar, läsa andras recensioner och kunna sortera must efter populäritet.