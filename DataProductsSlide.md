DataProductsSlide
========================================================
author: Karin
date: 24 October 2015

Introduction
========================================================

For this project I selected to use the Esoph package from the R Datasets Package.

Authors:
Thomas Lumley
Source

Breslow, N. E. and Day, N. E. (1980) Statistical Methods in Cancer Research. Volume 1: The Analysis of Case-Control Studies. IARC Lyon / Oxford University Press. 


Description
========================================================


Data from a case-control study of (o)esophageal cancer in Ille-et-Vilaine, France. 


Format
========================================================

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


Explore Data
========================================================


```r
library(MASS)
y <- as.data.frame(esoph)
```

Plot
========================================================
No of cases comparing number of controls per age group

![plot of chunk unnamed-chunk-2](DataProductsSlide-figure/unnamed-chunk-2-1.png) 