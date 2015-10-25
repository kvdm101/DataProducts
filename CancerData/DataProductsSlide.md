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


Variable descriptions
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

Using the application
========================================================
Select any available variable for the X axis. These are the descriptive variables in the data-set.

X-Axis:

agegp - Age group 

alcgp - Alcohol consumption 

tobgp - Tobacco consumption 

The quantitative variables will be available for the y axis.

Y-Axis:

ncases = No of cases

ncontrols = No of Controls

The data can be explored in the graph by choosing different variables to display in the graph. It is interactive to allow the user to explore and analyse the data as per individual requirements.

The same variables can also be used to display the data in colour category and/or factors per row and columns.

Add new % column to dataset
========================================================
The variable 'Add % to dataset?' will do a calculation between no of cases as a % of no of controls. You can select if this column must be added or not.

This piece of the app does not work due to Shiny being the shittest tool I have ever encountered.


Explore Data
========================================================


```r
library(MASS)
y <- as.data.frame(esoph)
y$percent <- round(y$ncases / y$ncontrols * 100)
y
```

```
   agegp     alcgp    tobgp ncases ncontrols percent
1  25-34 0-39g/day 0-9g/day      0        40       0
2  25-34 0-39g/day    10-19      0        10       0
3  25-34 0-39g/day    20-29      0         6       0
4  25-34 0-39g/day      30+      0         5       0
5  25-34     40-79 0-9g/day      0        27       0
6  25-34     40-79    10-19      0         7       0
7  25-34     40-79    20-29      0         4       0
8  25-34     40-79      30+      0         7       0
9  25-34    80-119 0-9g/day      0         2       0
10 25-34    80-119    10-19      0         1       0
11 25-34    80-119      30+      0         2       0
12 25-34      120+ 0-9g/day      0         1       0
13 25-34      120+    10-19      1         1     100
14 25-34      120+    20-29      0         1       0
15 25-34      120+      30+      0         2       0
16 35-44 0-39g/day 0-9g/day      0        60       0
17 35-44 0-39g/day    10-19      1        14       7
18 35-44 0-39g/day    20-29      0         7       0
19 35-44 0-39g/day      30+      0         8       0
20 35-44     40-79 0-9g/day      0        35       0
21 35-44     40-79    10-19      3        23      13
22 35-44     40-79    20-29      1        14       7
23 35-44     40-79      30+      0         8       0
24 35-44    80-119 0-9g/day      0        11       0
25 35-44    80-119    10-19      0         6       0
26 35-44    80-119    20-29      0         2       0
27 35-44    80-119      30+      0         1       0
28 35-44      120+ 0-9g/day      2         3      67
29 35-44      120+    10-19      0         3       0
30 35-44      120+    20-29      2         4      50
31 45-54 0-39g/day 0-9g/day      1        46       2
32 45-54 0-39g/day    10-19      0        18       0
33 45-54 0-39g/day    20-29      0        10       0
34 45-54 0-39g/day      30+      0         4       0
35 45-54     40-79 0-9g/day      6        38      16
36 45-54     40-79    10-19      4        21      19
37 45-54     40-79    20-29      5        15      33
38 45-54     40-79      30+      5         7      71
39 45-54    80-119 0-9g/day      3        16      19
40 45-54    80-119    10-19      6        14      43
41 45-54    80-119    20-29      1         5      20
42 45-54    80-119      30+      2         4      50
43 45-54      120+ 0-9g/day      4         4     100
44 45-54      120+    10-19      3         4      75
45 45-54      120+    20-29      2         3      67
46 45-54      120+      30+      4         4     100
47 55-64 0-39g/day 0-9g/day      2        49       4
48 55-64 0-39g/day    10-19      3        22      14
49 55-64 0-39g/day    20-29      3        12      25
50 55-64 0-39g/day      30+      4         6      67
51 55-64     40-79 0-9g/day      9        40      22
52 55-64     40-79    10-19      6        21      29
53 55-64     40-79    20-29      4        17      24
54 55-64     40-79      30+      3         6      50
55 55-64    80-119 0-9g/day      9        18      50
56 55-64    80-119    10-19      8        15      53
57 55-64    80-119    20-29      3         6      50
58 55-64    80-119      30+      4         4     100
59 55-64      120+ 0-9g/day      5        10      50
60 55-64      120+    10-19      6         7      86
61 55-64      120+    20-29      2         3      67
62 55-64      120+      30+      5         6      83
63 65-74 0-39g/day 0-9g/day      5        48      10
64 65-74 0-39g/day    10-19      4        14      29
65 65-74 0-39g/day    20-29      2         7      29
66 65-74 0-39g/day      30+      0         2       0
67 65-74     40-79 0-9g/day     17        34      50
68 65-74     40-79    10-19      3        10      30
69 65-74     40-79    20-29      5         9      56
70 65-74    80-119 0-9g/day      6        13      46
71 65-74    80-119    10-19      4        12      33
72 65-74    80-119    20-29      2         3      67
73 65-74    80-119      30+      1         1     100
74 65-74      120+ 0-9g/day      3         4      75
75 65-74      120+    10-19      1         2      50
76 65-74      120+    20-29      1         1     100
77 65-74      120+      30+      1         1     100
78   75+ 0-39g/day 0-9g/day      1        18       6
79   75+ 0-39g/day    10-19      2         6      33
80   75+ 0-39g/day      30+      1         3      33
81   75+     40-79 0-9g/day      2         5      40
82   75+     40-79    10-19      1         3      33
83   75+     40-79    20-29      0         3       0
84   75+     40-79      30+      1         1     100
85   75+    80-119 0-9g/day      1         1     100
86   75+    80-119    10-19      1         1     100
87   75+      120+ 0-9g/day      2         2     100
88   75+      120+    10-19      1         1     100
```



