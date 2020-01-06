libname proj2 '/folders/myfolders/Project2/';

data printads;
set proj2.printads;

pagenum2 = page_num*page_num;
brandsize2 = brand_size*brand_size;
picsize2 = pic_size*pic_size;
brand_fix2= brand_fix*brand_fix;
pic_fix2=pic_fix*pic_fix;
loreal = 0;
if brand = 'LOreal' then loreal = 1;
run;

proc genmod data=printads;
     model pic_fix= brand_size pic_size page_num brandsize2 picsize2 pagenum2/
           dist=poisson link=log;
     title 'Poission Regression for pictorial fixation count';
run;

proc genmod data=printads;
     model brand_fix= brand_size pic_size page_num pic_fix brandsize2 picsize2 pagenum2 pic_fix2 page_pos/
           dist=poisson link=log;
     title 'Poission Regression for brand fixation count';
run;

proc corr;
var recall_accu recall_time brand_size pic_size brand_fix pic_fix page_num page_pos pagenum2 brandsize2 picsize2 loreal;

proc genmod data=printads descending;
     model recall_accu=  brand_fix pic_fix page_num page_pos loreal /
           dist= binomial link=logit;
     title 'Binomial Logistic Regression for Recall Accuracy';
run;


proc genmod data=printads descending;
     model recall_accu= brand_fix pic_fix pic_size brand_size page_pos page_num loreal /
           dist= binomial link=logit;
     title 'Binomial Logistic Regression for Recall Accuracy';
run;
