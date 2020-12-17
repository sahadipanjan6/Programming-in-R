# reading the CSV file based on Demographic Content
my.file <- read.csv(file.choose())

# displaying all the statistics of this dataset
print("Names of Rows: ")
print(rownames(my.file))
print("Names of Columns: ")
print(colnames(my.file))
print(paste("Number of Rows:",nrow(my.file)))
print(paste("Number of Columns:", ncol(my.file)))
head(my.file)
tail(my.file)
head(my.file, n=10)
tail(my.file, n=10)
str(my.file)
summary(my.file)

# -------------------------- Using the Dollar($) Sign -----------------------------

my.file
print(paste("Birth Rate @Angola:", my.file[3, 3]))
print(paste("Birth rate @Angola using column name:", my.file[3, "Birth.rate"]))
print("Birth Rates of all countries are as follows:- ")
print(my.file$Birth.rate)
print("All country names in the dataset are as follows:- ")
print(my.file$Country.Name)
str(my.file)
print("Levels of Income Group in the dataset are:- ")
print(levels(my.file$Income.Group))

# ------------------------ Basic Operations with a DataFrame -------------------------

print("First ten rows of the dataset are as follows:- ")
print(my.file[1:10, ]) # performing subsetting of the dataframe
print("Displaying all the readings from 3rd row up to the 9th row:- ")
print(my.file[3:9, ]) # another type of subsetting of the dataframe
print("Displaying some specific rows like :- ")
print(my.file[c(1, 4, 9, 13, 17, 19), ]) # another type of subsetting of the dataframe

# remembering how the square brackets [] worked
print("Displaying only the first row of the dataset:- ")
print(my.file[1, ])
is.data.frame(my.file[1, ]) # checking if the extracted subset is a dataframe or not
print("Displaying only the first column of the dataset:- ")
print(my.file[, 1])
is.data.frame(my.file[, 1]) # checking if the extracted column values is a dataframe or not
# changing the non-dataframe column values into a dataframe
print(my.file[, 1, drop=F])

# multiplying the columns
my.file
print("Multiplying 3rd and 4th column values, we get:- ")
print(round(my.file$Birth.rate * my.file$Internet.users), 1)

# adding columns to the dataframe
my.file
my.file$MyCalculation <- round(my.file$Birth.rate * my.file$Internet.users)

# removing columns from the dataframe
my.file$MyCalculation <- NULL
my.file


# ------------------------------------ Filtering the Dataframes ----------------------------
head(my.file)
# finding out the names of countries which have less than 2% of Internet Users
filter.internet.users <- my.file$Internet.users < 2
my.file[filter.internet.users, ]
# finding out the names of countries which have birth rates greater than 40
filter.birth.rate <- my.file$Birth.rate > 40
my.file[filter.birth.rate, ]

# finding the names of countries which have internet users < 2% as well as birth rate > 40
my.file[filter.internet.users & filter.birth.rate, ]

# filtering the dataframe on the basis of the categorical variable, i.e. Income Group
levels(my.file$Income.Group)
print("Names of countries which have High Income Group:- ")
print(my.file[my.file$Income.Group == "High income", ])
print("Names of countries which have Low Income Group:- ")
print(my.file[my.file$Income.Group == "Low income", ])

# find all the informations about the country named MALTA
print("All informations about MALTA is as follows:- ")
print(my.file[my.file$Country.Name == "Malta", ])


# --------------------------------- Introduction to Qplot() ----------------------------------
library(ggplot2)

qplot(data = my.file, x = Internet.users)
qplot(data = my.file, x=Internet.users, y=Birth.rate)
qplot(data = my.file, x=Income.Group, y=Birth.rate)
qplot(data = my.file, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data = my.file, x=Income.Group, y=Birth.rate, size=I(3), colour=I("red"))
qplot(data = my.file, x=Income.Group, y=Birth.rate, geom="boxplot")



# --------------------------------- Visualising what we need ---------------------------------
qplot(data = my.file, x=Internet.users, y=Birth.rate)
qplot(data = my.file, x=Internet.users, y=Birth.rate, size=I(4))
qplot(data = my.file, x=Internet.users, y=Birth.rate, size=I(4), colour=I("red"))
qplot(data = my.file, x=Internet.users, y=Birth.rate, size=I(4), colour=Income.Group)


# --------------------------------- Building Data Frames -------------------------------------

Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
head(mydf)
str(mydf)
# # changing the column-names of this new data frame
# colnames(mydf) <- c("Country", "Code", "Region")
# head(mydf)
rm(mydf)
mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)
head(mydf)
summary(mydf)

# --------------------------------- Merging the Data Frames ----------------------------------

head(my.file)
head(mydf)
merged <- merge(my.file, mydf, by.x = "Country.Code", by.y = "Code")
head(merged)
# removing the duplicate column of Country Names from the merged data frame
merged$Country <- NULL
head(merged)

# ---------------------------------- Visualizing with new split ------------------------------
library(ggplot2)
qplot(data=merged, x=Internet.users, y=Birth.rate)
qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region)

# 1. Changing the SHAPES of the Scatter-plot
qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region, size=I(5), shape=I(17))

#2. Learning about Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region, size=I(5), shape=I(19), alpha=I(0.6)) # alpha is used for transparency measurement,
                                                        # 0 -> Fully Transparent
                                                        # 1 -> Fully Opaque

#3. Adding TITLE to the visualization
qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region, size=I(5), shape=I(19), alpha=I(0.6),
      main="Birth Rate vS Internet Users")             # "main" attribute is used for displaying the 
                                                       # title of the scatter-plot


