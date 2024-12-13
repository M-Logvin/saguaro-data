# saguaro-data
Overview and analysis of data records for saguaros on several plots. Raw data is analyized for variance over time, variance between plots, and other factors.
Data from https://doi.org/10.1371/journal.pone.0160899

The column names and description of the data are as follows:

PLOTID     The six 4-hectare plots are labeled B2, B7, C7, F2, F3, and F5.
PLANTID     Saguaros are labeled sequentially starting with 1 in each plot.
SAGUAROID     A unique id assigned to each saguaro by adding 0, 1000, 2000, 3000, 4000, and 5000 to the PLANTID for saguaros in plots B2, B7, C7, F2, F3, and F5 respectively
YRADDED     The year a saguaro was added to the census; -9999 means the plant was part of the original census in 1942
YRFIRSTMEASURED     This is the year the saguaro was first measured. It is equal to YRADDED except for plants not measured in the year they were found.
HTYEARFIRSTMEASURED     Height in inches the year the saguaro was first measured.
SLAGEYEARFIRSTMEASURED     Age in years is assigned based on HTYEARFIRSTMEASURED and Table 2-10 found in Steebergh and Lowe 1983, citation [8] in this paper.
S&LGERMINATIONYEAR     Calculated as YRFIRSTMEASURED-SLAGEYEARFIRSTMEASURED
TNAGEYEARFIRSTMEASURED     Age in years is assigned based on HTYEARFIRSTMEASURED and Table 3 in this paper.
T&NGERMINATIONYEAR     Calculated as YRFIRSTMEASURED-TNAGEYEARFIRSTMEASURED
NURSE PLANT     Genus species of the nurse plant, or description if no nurse plant
COVER CLASS     C1=large trees; C2=small trees or large shrubs;C3=small shrubs, grass or in open, minimal cover 
YRDEAD     The year a plant died; -9999 means the plant is still alive in 2016
AGEDEAD     Calculated as TNAGEYEARFIRSTMEASURED + (YRDEAD-YEARFIRSTMEASURED)
CAUSE     Mortality classified as BN (bacterial necrosis) if the cortical tissue has collapsed; it is classified as Wind/Poria if the saguaro is on the ground with root ball exposed.  BN-F is for bacterial necrosis following freeze of 2011.

Note that for the following fields, named HTxxINCH, a -9 means "not measurable" and a -2,-3,-4, or -5 means height class 2, 3, 4, or 5.  See HT42 below for explanation of height classes.
HT79INCH     Height of plant in inches to the nearest 1/4 inch in 1979
HT80INCH     Height of plant in inches to the nearest 1/4 inch in 1980
HT81INCH     Height of plant in inches to the nearest 1/4 inch in 1981
Note: no height data were taken in 1982
HT83INCH     Height of plant in inches to the nearest 1/4 inch in 1983	
HT84INCH     Height of plant in inches to the nearest 1/4 inch in 1984
HT85INCH     Height of plant in inches to the nearest 1/4 inch in 1985
HT86INCH     Height of plant in inches to the nearest 1/4 inch in 1986 
HT87INCH     Height of plant in inches to the nearest 1/4 inch in 1987
HT88INCH     Height of plant in inches to the nearest 1/4 inch in 1988
HT89INCH     Height of plant in inches to the nearest 1/4 inch in 1989
HT90INCH     Height of plant in inches to the nearest 1/4 inch in 1990
HT91INCH     Height of plant in inches to the nearest 1/4 inch in 1991
HT92INCH     Height of plant in inches to the nearest 1/4 inch in 1992
HT93INCH     Height of plant in inches to the nearest 1/4 inch in 1993
HT94INCH     Height of plant in inches to the nearest 1/4 inch in 1994
HT95INCH     Height of plant in inches to the nearest 1/4 inch in 1995
HT96INCH     Height of plant in inches to the nearest 1/4 inch in 1996
HT97INCH     Height of plant in inches to the nearest 1/4 inch in 1997
HT98INCH     Height of plant in inches to the nearest 1/4 inch in 1998
HT99INCH     Height of plant in inches to the nearest 1/4 inch in 1999
HT00INCH     Height of plant in inches to the nearest 1/4 inch in 2000
HT01INCH     Height of plant in inches to the nearest 1/4 inch in 2001
HT02INCH     Height of plant in inches to the nearest 1/4 inch in 2002
HT03INCH     Height of plant in inches to the nearest 1/4 inch in 2003
HT04INCH     Height of plant in inches to the nearest 1/4 inch in 2004
HT05INCH     Height of plant in inches to the nearest 1/4 inch in 2005
HT06INCH     Height of plant in inches to the nearest 1/4 inch in 2006
HT07INCH     Height of plant in inches to the nearest 1/4 inch in 2007
HT08INCH     Height of plant in inches to the nearest 1/4 inch in 2008
HT09INCH     Height of plant in inches to the nearest 1/4 inch in 2009
HT10INCH     Height of plant in inches to the nearest 1/4 inch in 2010
HT11INCH     Height of plant in inches to the nearest 1/4 inch in 2011
HT12INCH     Height of plant in inches to the nearest 1/4 inch in 2012
HT13INCH     Height of plant in inches to the nearest 1/4 inch in 2013
HT14INCH     Height of plant in inches to the nearest 1/4 inch in 2014
HT15INCH     Height of plant in inches to the nearest 1/4 inch in 2015
HT16INCH     Height of plant in inches to the nearest 1/4 inch in 2016
HT42     Height class in 1942; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT60     Height class in 1960; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT68     Height class in 1968; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT79     Height class in 1979; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT80     Height class in 1980; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT87	 Height class in 1987; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT88	 Height class in 1988; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT93     Height class in 1993; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT98     Height class in 1998; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2000     Height class in 2000; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2003     Height class in 2003; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2006     Height class in 2006; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2007     Height class in 2007; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2008     Height class in 2008; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2010     Height class in 2010; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2013     Height class in 2013; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2015     Height class in 2015; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT2016     Height class in 2016; 1:0-6ft; 2:6-12 ft; 3:12-18 ft; 4:18-24 ft; 5:taller than 24 ft.
HT88FEET     Height in feet calculated from clinometer reading
HT88CL     Placed in height classes based on HT88FEET
HT92FEET     Height in feet calculated from clinometer reading
HT92CL     Placed in height classes based on HT92FEET
ARMS1968     Number of branches greater than 10 cm in diam in 1968
ARMS1979     Number of branches greater than 10 cm in diam in 1979
ARMS1988     Number of branches greater than 10 cm in diam in 1988
ARMS1993     Number of branches greater than 10 cm in diam in 1993
ARMS1998     Number of branches greater than 10 cm in diam in 1998
ARMS2003     Number of branches greater than 10 cm in diam in 2003
ARMS2008     Number of branches greater than 10 cm in diam in 2008
ARMS2010     Number of branches greater than 10 cm in diam in 2010
ARMS2013     Number of branches greater than 10 cm in diam in 2013
ARMS2014     Number of branches greater than 10 cm in diam in 2014
ARMS2015     Number of branches greater than 10 cm in diam in 2015
ARMS2016     Number of branches greater than 10 cm in diam in 2016
