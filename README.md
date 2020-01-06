# Evaluating-print-advertising-impact-using-eye-tracking-data

## Executive Summary
The aim of this project is to determine the effectiveness of the Print ads and identify the key factors that have an influence on the effectiveness. Using Poisson regression and binomial logit model, the team makes the recommendation for L’Oréal that they should adopt 22.14 inch2 of brand size, 73.79 inch2 of picture size on page 55 if increasing attention is needed; adopt 17.43 inch2 of brand size, 57.88 inch2 of picture size on page 78 if increasing recall accuracy is needed.


## Key Findings
L’Oreal in this case was shown on the right side of page5.The brand size is 4.38 inch*inch, the picture size is 52.59 inch*inch. The brand fixation count is around 0.5 and the picture fixation count is 5. Both are far below the average level.18% of viewer can recall accurately and the recall time is around 2.88 seconds. (Refer to Appendix III)
To increase the fixation count of brand and picture, Poisson regression model is used to simulate the variation among related variables including brand fixation, brand size, picture size, page number, page position and picture fixation. To fit the data better and press closer to real business, square of correlated independent variables are added to the model. And PAGE_POS is only contained in BRAND_FIX model since the correlation between PAGE_POS and PIC_FIX is weak. For picture fixation, the link function and linear predictor are as below:
Link Function: Ƞ=ln E [PIC_FIX]
Linear Predictor: Ƞ=α + β1 BRAND_SIZE+ β2 PIC_SIZE + β3 PAGE_NUM + β4 BRAND_SIZE 2 + β5 PIC_SIZE2 +β6 PAGE_NUM2

Here are some findings from this model:

1.The p-value of BRAND_SIZE, PIC_SIZE, PAGE_NUM are all less than 5%, which indicates that the surface size of brand element, pictorial element and page number have significant influence on picture fixation.

2.To go deeper effects of these variables, when brand size increases 1 unit, pictorial fixation will decrease by 3.05%; picture increases 1 unit, pictorial fixation will increase by 10.88%; page number increase 1 unit, pictorial fixation will increase by 1.58%.

3.According to the equation of Appendix V, we can get the optimal values to maximize pictorial fixation. The optimal brand size equals to 22.14 inch*inch, the optimal picture size equals to 73.79 inch*inch, and the page number equals to 55. Under this circumstance, the predicted pictorial fixation is 4.26.

Similarly, for brand fixation, the link function and linear predictor are as below. Since picture fixation will also influence brand fixation, fix fixation is added into the model, the value of which is predicted by the upper equation.
Link Function: Ƞ=ln E [BRAND_FIX]
Linear Predictor: Ƞ=α+β1 BRAND_SIZE+ β2 PIC_SIZE + β3 PAGE_NUM + β4 PIC_FIX +β5 BRAND_SIZE2 + β6 PIC_SIZE2+β7 PAGE_NUM2+β8 PIC_FIX2+ β9 PAGE_POS

Here are some findings from this model.

1.The p-value of BRAND_SIZE, PIC_SIZE, PAGE_NUM, PAGE_POS are all less than 5%, which indicates that the surface size of brand element, pictorial element, page number and page position have significant influence on brand fixation.

2.To go deeper effects of these variables, when brand size increases 1 unit, brand fixation will increase by 27.63%; when picture increases 1 unit, brand fixation will decrease by 8.84%; when page number increase 1 unit, brand fixation will increase by 1.11%; when locating in the right, brand fixation will increase by 101.42% compared to the left position.

3.According to the equation of AppendixV, we can get the optimal values to maximize brand fixation. The optimal brand size equals to 17.43 inch*inch; the optimal picture size equals to 57.88 inch*inch; the optimal page number equals to 78; and the location of an ad should be right. Under this circumstance, the predicted brand fixation is 3.43, and pictorial fixation is 1.62.

To further determine the optimal brand size, picture size, page number and position from the two sets of numbers, Binomial Logit Model is used to compare their effect on recall accuracy. The dummy variable L’Oreal is added in order to identify the spectacular brand effect of L’Oreal. The link function and linear predictor are as below.Link Function: Ƞ=ln{E[RECALL_ACCU]/1-E[RECALL_ACCU]}
Linear Predictor: Ƞ=α+β1 BRAND_FIX+ β2 PIC_FIX + β3 BRAND_SIZE + β4 PIC_SIZE+β5 PAGE_NUM + β6 PAGE_POS+ β7 L’Oreal

Here are some findings from this model:

1.The p-value of BRAND_SIZE, PIC_SIZE, PAGE_NUM, are all less than 5%, which indicates that the surface size of brand element, pictorial element, and page number have significant influence on recall accuracy. When brand size and page number increase 1, the odds of recall accuracy will increase by 2.95% and 0.78% respectively. When picture size increase 1, the odds of recall accuracy will decrease by 1%. However, the p-value of PAGE_POS is larger than 5%, which means that location is statistically insignificant to recall accuracy.

2.The negative parameter of LOREAL indicates L’Oréal’s bad performance on attracting customers. The odds of recall accuracy will decrease by 69.4% when the brand is L’Oréal than it is not.

3.Comparing their parameters, brand fixation outweighs pictorial fixation in terms of affecting recall accuracy. Therefore, the optimal values generated from Poisson Regression of Brand Fixation should be used to calculated the recall accuracy, when brand size equals to 17.43 inch*inch, picture size equals to 57.88 inch*inch, page number equals to 78 in the right position. From the above equations, the pictorial fixation and brand fixation are expected to be 3.43 and 1.62 respectively, and the recall accuracy is 37.36%. This combination of variables should be set up if L’Oréal focus on increasing recall accuracy.

4.Considering recall accuracy under maximum pictorial fixation is also practicable, when brand size equals to 22.14 inch*inch, picture size equals to 73.79 inch*inch, page number equals to 55. From the above equations, the pictorial fixation and brand fixation are expected to be 4.26 and 1.72 respectively, and the recall accuracy is 33.74%. This combination of variables should be set up if L’Oréal focus on increasing attention for ads.
