# DataProducts
Karin  
24 October 2015  
#Introduction
For this project I selected to use the Esoph package from the R Datasets Package.

##Description

Data from a case-control study of (o)esophageal cancer in Ille-et-Vilaine, France. 

###Format

A data frame with records for 88 age/alcohol/tobacco combinations.

[,1] 	"agegp" - Age group 

            1 25--34 years
			2 35--44
			3 45--54
			4 55--64
			5 65--74
			6 75+
			
[,2] 	"alcgp" - Alcohol consumption 	

            1 0--39 gm/day
			2 40--79
			3 80--119
			4 120+
			
[,3] 	"tobgp" - Tobacco consumption 	

            1 0-- 9 gm/day
			2 10--19
			3 20--29
			4 30+
			
[,4] 	"ncases" 	Number of cases 	

[,5] 	"ncontrols" 	Number of controls 	

###Author(s)

Thomas Lumley
Source

Breslow, N. E. and Day, N. E. (1980) Statistical Methods in Cancer Research. Volume 1: The Analysis of Case-Control Studies. IARC Lyon / Oxford University Press. 


```r
library(MASS)
y <- as.data.frame(esoph)

library(dplyr)

library(ggplot2)
ggplot(y, aes(x = agegp)) + 
    geom_line(aes(y = ncontrols), colour="blue", size = 10) + 
    geom_line(aes(y = ncases), colour = "red", size = 10) + 
    ylab(label="Number of Cases vs Controls") + 
    xlab("Age groups")
```

![](DataProducts_files/figure-html/unnamed-chunk-1-1.png) 

The plot above shows the relationship between the number of cases versus all control cases per age group.

The application will allow the user of the application to interrogate the data based on all the variables available in the dataset. Refer to the server.R and ui.R code for more detail on the application itself.


I have run out of time to change the column headings to more meaningful descriptions and get the application to work on that, so I included the descriptions of the variables in the format section in the beginning of this document to make the use of this application easier.