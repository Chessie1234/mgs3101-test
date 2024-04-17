'Binary Logistic Regression
---------------------------'

# Example: Cereal Purchase
'-------------------------'
# Load the data
CerealPur<-read.csv(file.choose(), header = TRUE)
# CerealPur<-read.csv("CerealPurchase.csv", header = TRUE)

# View the data
View(CerealPur)

# Fit the Model-1
BLG1 <- glm(Bought ~ Income + Children + ViewAd, family = "binomial", 
            data = CerealPur)

# Get the Results
summary(BLG1)

# Assessing the goodness of model fit
'------------------------------------'
# Fit the Null Model
BLG1_null <- glm(Bought ~ 1, data = CerealPur, family = "binomial")

# Get the Results
summary(BLG1_null)

# Fit the Model-2:
BLG2 <- glm(Bought ~ Children + ViewAd, family = "binomial", 
            data = CerealPur)
summary(BLG2)

# Models Comparison (Model-1 Vs Model-2) 
'---------------------------------------'
anova(BLG1, BLG2, test = "Chisq")


# Model Parameters & Odds Ratio
coef(BLG2) 
exp(coef(BLG2)) # odds ratio










