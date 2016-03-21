---
title       : Decoding Health News
subtitle    : Using the Leek score to help
author      : Patrick Barta, patrickbarta <at> patrickbarta.com
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, mathjax]            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: libraries/nvd3}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The problem

Every day, we are all inundated by various health claims in the media:

* Alzheimer's Patients Can Store Memories, Study Suggests
* 1 in 6 Seniors Takes Dangerous Combos of Meds, Supplements: Study
* Michelangelo Likely Had Arthritis, Medical Experts Say

We know that media sometimes sensationalizes things.

*How about a quick and dirty way to evaluate these health claims?*

--- .class #id 

## A Bayesian solution: The Leek score

* In 2014, Jeff Leek proposed a checklist of items to look for, which,
if positive, suggested that we should believe the study.
* However, just because a study has some positive features, that doesn't
mean that we should believe it uncritically.
* The approach is purely Bayesian: we start out with a prior probability
that we believe the study, then adjust that prior by using subjective
likelihood ratios which increase the prior odds when the checklist items are
true, and which decrease them when the items are false.
* Checklist items are things like whether the study was a randomized control trial.

--- .class #id

## Posterior vs. prior by number of positive criteria


In the chart below, the colored number labels refer to the number of checklist items which are true.


<div id = 'chart1d4b7212d0e7' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1d4b7212d0e7()
    });
    function drawchart1d4b7212d0e7(){  
      var opts = {
 "dom": "chart1d4b7212d0e7",
"width":    800,
"height":    400,
"x": "prior",
"y": "posterior",
"type": "lineChart",
"group": "positive",
"id": "chart1d4b7212d0e7" 
},
        data = [
 {
 "prior":              0,
"positive": "0",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "0",
"posterior": 0.0001578033769923 
},
{
 "prior":           0.02,
"positive": "0",
"posterior": 0.0003187759005419 
},
{
 "prior":           0.03,
"positive": "0",
"posterior": 0.0004830140074062 
},
{
 "prior":           0.04,
"positive": "0",
"posterior": 0.0006506180871828 
},
{
 "prior":           0.05,
"positive": "0",
"posterior": 0.0008216926869351 
},
{
 "prior":           0.06,
"positive": "0",
"posterior": 0.0009963467286616 
},
{
 "prior":           0.07,
"positive": "0",
"posterior": 0.00117469374056 
},
{
 "prior":           0.08,
"positive": "0",
"posterior": 0.001356852103121 
},
{
 "prior":           0.09,
"positive": "0",
"posterior": 0.001542945311161 
},
{
 "prior":            0.1,
"positive": "0",
"posterior": 0.001733102253033 
},
{
 "prior":           0.11,
"positive": "0",
"posterior": 0.001927457508323 
},
{
 "prior":           0.12,
"positive": "0",
"posterior": 0.002126151665485 
},
{
 "prior":           0.13,
"positive": "0",
"posterior": 0.002329331660993 
},
{
 "prior":           0.14,
"positive": "0",
"posterior": 0.002537151141718 
},
{
 "prior":           0.15,
"positive": "0",
"posterior": 0.002749770852429 
},
{
 "prior":           0.16,
"positive": "0",
"posterior": 0.002967359050445 
},
{
 "prior":           0.17,
"positive": "0",
"posterior": 0.003190091949709 
},
{
 "prior":           0.18,
"positive": "0",
"posterior": 0.003418154196734 
},
{
 "prior":           0.19,
"positive": "0",
"posterior": 0.003651739381126 
},
{
 "prior":            0.2,
"positive": "0",
"posterior": 0.003891050583658 
},
{
 "prior":           0.21,
"positive": "0",
"posterior": 0.004136300965137 
},
{
 "prior":           0.22,
"positive": "0",
"posterior": 0.004387714399681 
},
{
 "prior":           0.23,
"positive": "0",
"posterior": 0.004645526156332 
},
{
 "prior":           0.24,
"positive": "0",
"posterior": 0.004909983633388 
},
{
 "prior":           0.25,
"positive": "0",
"posterior": 0.005181347150259 
},
{
 "prior":           0.26,
"positive": "0",
"posterior": 0.005459890802184 
},
{
 "prior":           0.27,
"positive": "0",
"posterior": 0.005745903383699 
},
{
 "prior":           0.28,
"positive": "0",
"posterior": 0.006039689387403 
},
{
 "prior":           0.29,
"positive": "0",
"posterior": 0.006341570085283 
},
{
 "prior":            0.3,
"positive": "0",
"posterior": 0.006651884700665 
},
{
 "prior":           0.31,
"positive": "0",
"posterior": 0.006970991679784 
},
{
 "prior":           0.32,
"positive": "0",
"posterior": 0.007299270072993 
},
{
 "prior":           0.33,
"positive": "0",
"posterior": 0.007637121036797 
},
{
 "prior":           0.34,
"positive": "0",
"posterior": 0.007984969469234 
},
{
 "prior":           0.35,
"positive": "0",
"posterior": 0.00834326579261 
},
{
 "prior":           0.36,
"positive": "0",
"posterior": 0.008712487899322 
},
{
 "prior":           0.37,
"positive": "0",
"posterior": 0.009093143278447 
},
{
 "prior":           0.38,
"positive": "0",
"posterior": 0.009485771342986 
},
{
 "prior":           0.39,
"positive": "0",
"posterior": 0.009890945980218 
},
{
 "prior":            0.4,
"positive": "0",
"posterior": 0.01030927835052 
},
{
 "prior":           0.41,
"positive": "0",
"posterior": 0.01074141996332 
},
{
 "prior":           0.42,
"positive": "0",
"posterior": 0.01118806606287 
},
{
 "prior":           0.43,
"positive": "0",
"posterior": 0.01164995936061 
},
{
 "prior":           0.44,
"positive": "0",
"posterior": 0.01212789415656 
},
{
 "prior":           0.45,
"positive": "0",
"posterior": 0.01262272089762 
},
{
 "prior":           0.46,
"positive": "0",
"posterior": 0.01313535122787 
},
{
 "prior":           0.47,
"positive": "0",
"posterior": 0.01366676359407 
},
{
 "prior":           0.48,
"positive": "0",
"posterior": 0.01421800947867 
},
{
 "prior":           0.49,
"positive": "0",
"posterior": 0.0147902203441 
},
{
 "prior":            0.5,
"positive": "0",
"posterior": 0.01538461538462 
},
{
 "prior":           0.51,
"positive": "0",
"posterior": 0.01600251019768 
},
{
 "prior":           0.52,
"positive": "0",
"posterior": 0.01664532650448 
},
{
 "prior":           0.53,
"positive": "0",
"posterior": 0.01731460307089 
},
{
 "prior":           0.54,
"positive": "0",
"posterior": 0.01801200800534 
},
{
 "prior":           0.55,
"positive": "0",
"posterior": 0.01873935264055 
},
{
 "prior":           0.56,
"positive": "0",
"posterior": 0.01949860724234 
},
{
 "prior":           0.57,
"positive": "0",
"posterior": 0.02029191883232 
},
{
 "prior":           0.58,
"positive": "0",
"posterior": 0.02112163146395 
},
{
 "prior":           0.59,
"positive": "0",
"posterior": 0.0219903093552 
},
{
 "prior":            0.6,
"positive": "0",
"posterior": 0.02290076335878 
},
{
 "prior":           0.61,
"positive": "0",
"posterior": 0.02385608134533 
},
{
 "prior":           0.62,
"positive": "0",
"posterior": 0.02485966319166 
},
{
 "prior":           0.63,
"positive": "0",
"posterior": 0.02591526120938 
},
{
 "prior":           0.64,
"positive": "0",
"posterior": 0.02702702702703 
},
{
 "prior":           0.65,
"positive": "0",
"posterior": 0.02819956616052 
},
{
 "prior":           0.66,
"positive": "0",
"posterior": 0.02943800178412 
},
{
 "prior":           0.67,
"positive": "0",
"posterior": 0.03074804956402 
},
{
 "prior":           0.68,
"positive": "0",
"posterior": 0.03213610586011 
},
{
 "prior":           0.69,
"positive": "0",
"posterior": 0.03360935216756 
},
{
 "prior":            0.7,
"positive": "0",
"posterior": 0.03517587939698 
},
{
 "prior":           0.71,
"positive": "0",
"posterior": 0.03684483653347 
},
{
 "prior":           0.72,
"positive": "0",
"posterior": 0.03862660944206 
},
{
 "prior":           0.73,
"positive": "0",
"posterior": 0.04053303720155 
},
{
 "prior":           0.74,
"positive": "0",
"posterior": 0.04257767548907 
},
{
 "prior":           0.75,
"positive": "0",
"posterior": 0.04477611940299 
},
{
 "prior":           0.76,
"positive": "0",
"posterior": 0.04714640198511 
},
{
 "prior":           0.77,
"positive": "0",
"posterior": 0.04970948999354 
},
{
 "prior":           0.78,
"positive": "0",
"posterior": 0.05248990578735 
},
{
 "prior":           0.79,
"positive": "0",
"posterior": 0.05551651440618 
},
{
 "prior":            0.8,
"positive": "0",
"posterior": 0.05882352941176 
},
{
 "prior":           0.81,
"positive": "0",
"posterior": 0.06245181187355 
},
{
 "prior":           0.82,
"positive": "0",
"posterior": 0.06645056726094 
},
{
 "prior":           0.83,
"positive": "0",
"posterior": 0.07087959009394 
},
{
 "prior":           0.84,
"positive": "0",
"posterior": 0.07581227436823 
},
{
 "prior":           0.85,
"positive": "0",
"posterior": 0.08133971291866 
},
{
 "prior":           0.86,
"positive": "0",
"posterior": 0.08757637474542 
},
{
 "prior":           0.87,
"positive": "0",
"posterior": 0.09466811751904 
},
{
 "prior":           0.88,
"positive": "0",
"posterior": 0.1028037383178 
},
{
 "prior":           0.89,
"positive": "0",
"posterior": 0.1122320302648 
},
{
 "prior":            0.9,
"positive": "0",
"posterior": 0.1232876712329 
},
{
 "prior":           0.91,
"positive": "0",
"posterior": 0.1364317841079 
},
{
 "prior":           0.92,
"positive": "0",
"posterior": 0.1523178807947 
},
{
 "prior":           0.93,
"positive": "0",
"posterior": 0.1719038817006 
},
{
 "prior":           0.94,
"positive": "0",
"posterior": 0.1966527196653 
},
{
 "prior":           0.95,
"positive": "0",
"posterior": 0.2289156626506 
},
{
 "prior":           0.96,
"positive": "0",
"posterior": 0.2727272727273 
},
{
 "prior":           0.97,
"positive": "0",
"posterior": 0.3356401384083 
},
{
 "prior":           0.98,
"positive": "0",
"posterior": 0.4336283185841 
},
{
 "prior":           0.99,
"positive": "0",
"posterior": 0.6073619631902 
},
{
 "prior":              1,
"positive": "0",
"posterior":              1 
},
{
 "prior":              0,
"positive": "1",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "1",
"posterior": 0.0006309148264984 
},
{
 "prior":           0.02,
"positive": "1",
"posterior": 0.001273885350318 
},
{
 "prior":           0.03,
"positive": "1",
"posterior": 0.001929260450161 
},
{
 "prior":           0.04,
"positive": "1",
"posterior": 0.002597402597403 
},
{
 "prior":           0.05,
"positive": "1",
"posterior": 0.00327868852459 
},
{
 "prior":           0.06,
"positive": "1",
"posterior": 0.003973509933775 
},
{
 "prior":           0.07,
"positive": "1",
"posterior": 0.004682274247492 
},
{
 "prior":           0.08,
"positive": "1",
"posterior": 0.005405405405405 
},
{
 "prior":           0.09,
"positive": "1",
"posterior": 0.006143344709898 
},
{
 "prior":            0.1,
"positive": "1",
"posterior": 0.006896551724138 
},
{
 "prior":           0.11,
"positive": "1",
"posterior": 0.007665505226481 
},
{
 "prior":           0.12,
"positive": "1",
"posterior": 0.008450704225352 
},
{
 "prior":           0.13,
"positive": "1",
"posterior": 0.009252669039146 
},
{
 "prior":           0.14,
"positive": "1",
"posterior": 0.01007194244604 
},
{
 "prior":           0.15,
"positive": "1",
"posterior": 0.01090909090909 
},
{
 "prior":           0.16,
"positive": "1",
"posterior": 0.01176470588235 
},
{
 "prior":           0.17,
"positive": "1",
"posterior": 0.01263940520446 
},
{
 "prior":           0.18,
"positive": "1",
"posterior": 0.01353383458647 
},
{
 "prior":           0.19,
"positive": "1",
"posterior": 0.01444866920152 
},
{
 "prior":            0.2,
"positive": "1",
"posterior": 0.01538461538462 
},
{
 "prior":           0.21,
"positive": "1",
"posterior": 0.01634241245136 
},
{
 "prior":           0.22,
"positive": "1",
"posterior": 0.01732283464567 
},
{
 "prior":           0.23,
"positive": "1",
"posterior": 0.01832669322709 
},
{
 "prior":           0.24,
"positive": "1",
"posterior": 0.01935483870968 
},
{
 "prior":           0.25,
"positive": "1",
"posterior": 0.02040816326531 
},
{
 "prior":           0.26,
"positive": "1",
"posterior": 0.02148760330579 
},
{
 "prior":           0.27,
"positive": "1",
"posterior": 0.02259414225941 
},
{
 "prior":           0.28,
"positive": "1",
"posterior": 0.02372881355932 
},
{
 "prior":           0.29,
"positive": "1",
"posterior": 0.02489270386266 
},
{
 "prior":            0.3,
"positive": "1",
"posterior": 0.02608695652174 
},
{
 "prior":           0.31,
"positive": "1",
"posterior": 0.0273127753304 
},
{
 "prior":           0.32,
"positive": "1",
"posterior": 0.02857142857143 
},
{
 "prior":           0.33,
"positive": "1",
"posterior": 0.02986425339367 
},
{
 "prior":           0.34,
"positive": "1",
"posterior": 0.03119266055046 
},
{
 "prior":           0.35,
"positive": "1",
"posterior": 0.03255813953488 
},
{
 "prior":           0.36,
"positive": "1",
"posterior": 0.03396226415094 
},
{
 "prior":           0.37,
"positive": "1",
"posterior": 0.03540669856459 
},
{
 "prior":           0.38,
"positive": "1",
"posterior": 0.0368932038835 
},
{
 "prior":           0.39,
"positive": "1",
"posterior": 0.0384236453202 
},
{
 "prior":            0.4,
"positive": "1",
"posterior":           0.04 
},
{
 "prior":           0.41,
"positive": "1",
"posterior": 0.04162436548223 
},
{
 "prior":           0.42,
"positive": "1",
"posterior": 0.04329896907216 
},
{
 "prior":           0.43,
"positive": "1",
"posterior": 0.04502617801047 
},
{
 "prior":           0.44,
"positive": "1",
"posterior": 0.0468085106383 
},
{
 "prior":           0.45,
"positive": "1",
"posterior": 0.04864864864865 
},
{
 "prior":           0.46,
"positive": "1",
"posterior": 0.05054945054945 
},
{
 "prior":           0.47,
"positive": "1",
"posterior": 0.05251396648045 
},
{
 "prior":           0.48,
"positive": "1",
"posterior": 0.05454545454545 
},
{
 "prior":           0.49,
"positive": "1",
"posterior": 0.05664739884393 
},
{
 "prior":            0.5,
"positive": "1",
"posterior": 0.05882352941176 
},
{
 "prior":           0.51,
"positive": "1",
"posterior": 0.06107784431138 
},
{
 "prior":           0.52,
"positive": "1",
"posterior": 0.06341463414634 
},
{
 "prior":           0.53,
"positive": "1",
"posterior": 0.06583850931677 
},
{
 "prior":           0.54,
"positive": "1",
"posterior": 0.06835443037975 
},
{
 "prior":           0.55,
"positive": "1",
"posterior": 0.07096774193548 
},
{
 "prior":           0.56,
"positive": "1",
"posterior": 0.07368421052632 
},
{
 "prior":           0.57,
"positive": "1",
"posterior": 0.07651006711409 
},
{
 "prior":           0.58,
"positive": "1",
"posterior": 0.07945205479452 
},
{
 "prior":           0.59,
"positive": "1",
"posterior": 0.08251748251748 
},
{
 "prior":            0.6,
"positive": "1",
"posterior": 0.08571428571429 
},
{
 "prior":           0.61,
"positive": "1",
"posterior": 0.08905109489051 
},
{
 "prior":           0.62,
"positive": "1",
"posterior": 0.09253731343284 
},
{
 "prior":           0.63,
"positive": "1",
"posterior": 0.09618320610687 
},
{
 "prior":           0.64,
"positive": "1",
"posterior":            0.1 
},
{
 "prior":           0.65,
"positive": "1",
"posterior":          0.104 
},
{
 "prior":           0.66,
"positive": "1",
"posterior": 0.1081967213115 
},
{
 "prior":           0.67,
"positive": "1",
"posterior": 0.1126050420168 
},
{
 "prior":           0.68,
"positive": "1",
"posterior": 0.1172413793103 
},
{
 "prior":           0.69,
"positive": "1",
"posterior": 0.1221238938053 
},
{
 "prior":            0.7,
"positive": "1",
"posterior": 0.1272727272727 
},
{
 "prior":           0.71,
"positive": "1",
"posterior": 0.1327102803738 
},
{
 "prior":           0.72,
"positive": "1",
"posterior": 0.1384615384615 
},
{
 "prior":           0.73,
"positive": "1",
"posterior": 0.1445544554455 
},
{
 "prior":           0.74,
"positive": "1",
"posterior": 0.1510204081633 
},
{
 "prior":           0.75,
"positive": "1",
"posterior": 0.1578947368421 
},
{
 "prior":           0.76,
"positive": "1",
"posterior": 0.1652173913043 
},
{
 "prior":           0.77,
"positive": "1",
"posterior": 0.1730337078652 
},
{
 "prior":           0.78,
"positive": "1",
"posterior": 0.1813953488372 
},
{
 "prior":           0.79,
"positive": "1",
"posterior": 0.1903614457831 
},
{
 "prior":            0.8,
"positive": "1",
"posterior":            0.2 
},
{
 "prior":           0.81,
"positive": "1",
"posterior": 0.2103896103896 
},
{
 "prior":           0.82,
"positive": "1",
"posterior": 0.2216216216216 
},
{
 "prior":           0.83,
"positive": "1",
"posterior": 0.2338028169014 
},
{
 "prior":           0.84,
"positive": "1",
"posterior": 0.2470588235294 
},
{
 "prior":           0.85,
"positive": "1",
"posterior": 0.2615384615385 
},
{
 "prior":           0.86,
"positive": "1",
"posterior": 0.2774193548387 
},
{
 "prior":           0.87,
"positive": "1",
"posterior": 0.2949152542373 
},
{
 "prior":           0.88,
"positive": "1",
"posterior": 0.3142857142857 
},
{
 "prior":           0.89,
"positive": "1",
"posterior": 0.3358490566038 
},
{
 "prior":            0.9,
"positive": "1",
"posterior":           0.36 
},
{
 "prior":           0.91,
"positive": "1",
"posterior": 0.3872340425532 
},
{
 "prior":           0.92,
"positive": "1",
"posterior": 0.4181818181818 
},
{
 "prior":           0.93,
"positive": "1",
"posterior": 0.4536585365854 
},
{
 "prior":           0.94,
"positive": "1",
"posterior": 0.4947368421053 
},
{
 "prior":           0.95,
"positive": "1",
"posterior": 0.5428571428571 
},
{
 "prior":           0.96,
"positive": "1",
"posterior":            0.6 
},
{
 "prior":           0.97,
"positive": "1",
"posterior": 0.6689655172414 
},
{
 "prior":           0.98,
"positive": "1",
"posterior": 0.7538461538462 
},
{
 "prior":           0.99,
"positive": "1",
"posterior": 0.8608695652174 
},
{
 "prior":              1,
"positive": "1",
"posterior":              1 
},
{
 "prior":              0,
"positive": "2",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "2",
"posterior": 0.002518891687657 
},
{
 "prior":           0.02,
"positive": "2",
"posterior": 0.00507614213198 
},
{
 "prior":           0.03,
"positive": "2",
"posterior": 0.0076726342711 
},
{
 "prior":           0.04,
"positive": "2",
"posterior": 0.01030927835052 
},
{
 "prior":           0.05,
"positive": "2",
"posterior": 0.01298701298701 
},
{
 "prior":           0.06,
"positive": "2",
"posterior": 0.01570680628272 
},
{
 "prior":           0.07,
"positive": "2",
"posterior": 0.01846965699208 
},
{
 "prior":           0.08,
"positive": "2",
"posterior": 0.02127659574468 
},
{
 "prior":           0.09,
"positive": "2",
"posterior": 0.02412868632708 
},
{
 "prior":            0.1,
"positive": "2",
"posterior": 0.02702702702703 
},
{
 "prior":           0.11,
"positive": "2",
"posterior": 0.0299727520436 
},
{
 "prior":           0.12,
"positive": "2",
"posterior": 0.03296703296703 
},
{
 "prior":           0.13,
"positive": "2",
"posterior": 0.03601108033241 
},
{
 "prior":           0.14,
"positive": "2",
"posterior": 0.0391061452514 
},
{
 "prior":           0.15,
"positive": "2",
"posterior": 0.04225352112676 
},
{
 "prior":           0.16,
"positive": "2",
"posterior": 0.04545454545455 
},
{
 "prior":           0.17,
"positive": "2",
"posterior": 0.0487106017192 
},
{
 "prior":           0.18,
"positive": "2",
"posterior": 0.05202312138728 
},
{
 "prior":           0.19,
"positive": "2",
"posterior": 0.05539358600583 
},
{
 "prior":            0.2,
"positive": "2",
"posterior": 0.05882352941176 
},
{
 "prior":           0.21,
"positive": "2",
"posterior": 0.06231454005935 
},
{
 "prior":           0.22,
"positive": "2",
"posterior": 0.06586826347305 
},
{
 "prior":           0.23,
"positive": "2",
"posterior": 0.06948640483384 
},
{
 "prior":           0.24,
"positive": "2",
"posterior": 0.07317073170732 
},
{
 "prior":           0.25,
"positive": "2",
"posterior": 0.07692307692308 
},
{
 "prior":           0.26,
"positive": "2",
"posterior": 0.08074534161491 
},
{
 "prior":           0.27,
"positive": "2",
"posterior": 0.0846394984326 
},
{
 "prior":           0.28,
"positive": "2",
"posterior": 0.08860759493671 
},
{
 "prior":           0.29,
"positive": "2",
"posterior": 0.0926517571885 
},
{
 "prior":            0.3,
"positive": "2",
"posterior": 0.09677419354839 
},
{
 "prior":           0.31,
"positive": "2",
"posterior": 0.1009771986971 
},
{
 "prior":           0.32,
"positive": "2",
"posterior": 0.1052631578947 
},
{
 "prior":           0.33,
"positive": "2",
"posterior": 0.109634551495 
},
{
 "prior":           0.34,
"positive": "2",
"posterior": 0.1140939597315 
},
{
 "prior":           0.35,
"positive": "2",
"posterior": 0.1186440677966 
},
{
 "prior":           0.36,
"positive": "2",
"posterior": 0.1232876712329 
},
{
 "prior":           0.37,
"positive": "2",
"posterior": 0.1280276816609 
},
{
 "prior":           0.38,
"positive": "2",
"posterior": 0.1328671328671 
},
{
 "prior":           0.39,
"positive": "2",
"posterior": 0.1378091872792 
},
{
 "prior":            0.4,
"positive": "2",
"posterior": 0.1428571428571 
},
{
 "prior":           0.41,
"positive": "2",
"posterior": 0.1480144404332 
},
{
 "prior":           0.42,
"positive": "2",
"posterior": 0.1532846715328 
},
{
 "prior":           0.43,
"positive": "2",
"posterior": 0.1586715867159 
},
{
 "prior":           0.44,
"positive": "2",
"posterior": 0.1641791044776 
},
{
 "prior":           0.45,
"positive": "2",
"posterior": 0.1698113207547 
},
{
 "prior":           0.46,
"positive": "2",
"posterior": 0.175572519084 
},
{
 "prior":           0.47,
"positive": "2",
"posterior": 0.1814671814672 
},
{
 "prior":           0.48,
"positive": "2",
"posterior":         0.1875 
},
{
 "prior":           0.49,
"positive": "2",
"posterior": 0.1936758893281 
},
{
 "prior":            0.5,
"positive": "2",
"posterior":            0.2 
},
{
 "prior":           0.51,
"positive": "2",
"posterior": 0.2064777327935 
},
{
 "prior":           0.52,
"positive": "2",
"posterior": 0.2131147540984 
},
{
 "prior":           0.53,
"positive": "2",
"posterior": 0.2199170124481 
},
{
 "prior":           0.54,
"positive": "2",
"posterior": 0.2268907563025 
},
{
 "prior":           0.55,
"positive": "2",
"posterior": 0.2340425531915 
},
{
 "prior":           0.56,
"positive": "2",
"posterior": 0.2413793103448 
},
{
 "prior":           0.57,
"positive": "2",
"posterior": 0.2489082969432 
},
{
 "prior":           0.58,
"positive": "2",
"posterior": 0.2566371681416 
},
{
 "prior":           0.59,
"positive": "2",
"posterior": 0.2645739910314 
},
{
 "prior":            0.6,
"positive": "2",
"posterior": 0.2727272727273 
},
{
 "prior":           0.61,
"positive": "2",
"posterior": 0.2811059907834 
},
{
 "prior":           0.62,
"positive": "2",
"posterior": 0.2897196261682 
},
{
 "prior":           0.63,
"positive": "2",
"posterior": 0.2985781990521 
},
{
 "prior":           0.64,
"positive": "2",
"posterior": 0.3076923076923 
},
{
 "prior":           0.65,
"positive": "2",
"posterior": 0.3170731707317 
},
{
 "prior":           0.66,
"positive": "2",
"posterior": 0.3267326732673 
},
{
 "prior":           0.67,
"positive": "2",
"posterior": 0.3366834170854 
},
{
 "prior":           0.68,
"positive": "2",
"posterior": 0.3469387755102 
},
{
 "prior":           0.69,
"positive": "2",
"posterior": 0.3575129533679 
},
{
 "prior":            0.7,
"positive": "2",
"posterior": 0.3684210526316 
},
{
 "prior":           0.71,
"positive": "2",
"posterior": 0.379679144385 
},
{
 "prior":           0.72,
"positive": "2",
"posterior": 0.3913043478261 
},
{
 "prior":           0.73,
"positive": "2",
"posterior": 0.4033149171271 
},
{
 "prior":           0.74,
"positive": "2",
"posterior": 0.4157303370787 
},
{
 "prior":           0.75,
"positive": "2",
"posterior": 0.4285714285714 
},
{
 "prior":           0.76,
"positive": "2",
"posterior": 0.4418604651163 
},
{
 "prior":           0.77,
"positive": "2",
"posterior": 0.4556213017751 
},
{
 "prior":           0.78,
"positive": "2",
"posterior": 0.4698795180723 
},
{
 "prior":           0.79,
"positive": "2",
"posterior": 0.4846625766871 
},
{
 "prior":            0.8,
"positive": "2",
"posterior":            0.5 
},
{
 "prior":           0.81,
"positive": "2",
"posterior": 0.515923566879 
},
{
 "prior":           0.82,
"positive": "2",
"posterior": 0.5324675324675 
},
{
 "prior":           0.83,
"positive": "2",
"posterior": 0.5496688741722 
},
{
 "prior":           0.84,
"positive": "2",
"posterior": 0.5675675675676 
},
{
 "prior":           0.85,
"positive": "2",
"posterior": 0.5862068965517 
},
{
 "prior":           0.86,
"positive": "2",
"posterior": 0.6056338028169 
},
{
 "prior":           0.87,
"positive": "2",
"posterior": 0.6258992805755 
},
{
 "prior":           0.88,
"positive": "2",
"posterior": 0.6470588235294 
},
{
 "prior":           0.89,
"positive": "2",
"posterior": 0.6691729323308 
},
{
 "prior":            0.9,
"positive": "2",
"posterior": 0.6923076923077 
},
{
 "prior":           0.91,
"positive": "2",
"posterior": 0.7165354330709 
},
{
 "prior":           0.92,
"positive": "2",
"posterior": 0.741935483871 
},
{
 "prior":           0.93,
"positive": "2",
"posterior": 0.7685950413223 
},
{
 "prior":           0.94,
"positive": "2",
"posterior": 0.7966101694915 
},
{
 "prior":           0.95,
"positive": "2",
"posterior": 0.8260869565217 
},
{
 "prior":           0.96,
"positive": "2",
"posterior": 0.8571428571429 
},
{
 "prior":           0.97,
"positive": "2",
"posterior": 0.8899082568807 
},
{
 "prior":           0.98,
"positive": "2",
"posterior": 0.9245283018868 
},
{
 "prior":           0.99,
"positive": "2",
"posterior": 0.9611650485437 
},
{
 "prior":              1,
"positive": "2",
"posterior":              1 
},
{
 "prior":              0,
"positive": "3",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "3",
"posterior":           0.01 
},
{
 "prior":           0.02,
"positive": "3",
"posterior":           0.02 
},
{
 "prior":           0.03,
"positive": "3",
"posterior":           0.03 
},
{
 "prior":           0.04,
"positive": "3",
"posterior":           0.04 
},
{
 "prior":           0.05,
"positive": "3",
"posterior":           0.05 
},
{
 "prior":           0.06,
"positive": "3",
"posterior":           0.06 
},
{
 "prior":           0.07,
"positive": "3",
"posterior":           0.07 
},
{
 "prior":           0.08,
"positive": "3",
"posterior":           0.08 
},
{
 "prior":           0.09,
"positive": "3",
"posterior":           0.09 
},
{
 "prior":            0.1,
"positive": "3",
"posterior":            0.1 
},
{
 "prior":           0.11,
"positive": "3",
"posterior":           0.11 
},
{
 "prior":           0.12,
"positive": "3",
"posterior":           0.12 
},
{
 "prior":           0.13,
"positive": "3",
"posterior":           0.13 
},
{
 "prior":           0.14,
"positive": "3",
"posterior":           0.14 
},
{
 "prior":           0.15,
"positive": "3",
"posterior":           0.15 
},
{
 "prior":           0.16,
"positive": "3",
"posterior":           0.16 
},
{
 "prior":           0.17,
"positive": "3",
"posterior":           0.17 
},
{
 "prior":           0.18,
"positive": "3",
"posterior":           0.18 
},
{
 "prior":           0.19,
"positive": "3",
"posterior":           0.19 
},
{
 "prior":            0.2,
"positive": "3",
"posterior":            0.2 
},
{
 "prior":           0.21,
"positive": "3",
"posterior":           0.21 
},
{
 "prior":           0.22,
"positive": "3",
"posterior":           0.22 
},
{
 "prior":           0.23,
"positive": "3",
"posterior":           0.23 
},
{
 "prior":           0.24,
"positive": "3",
"posterior":           0.24 
},
{
 "prior":           0.25,
"positive": "3",
"posterior":           0.25 
},
{
 "prior":           0.26,
"positive": "3",
"posterior":           0.26 
},
{
 "prior":           0.27,
"positive": "3",
"posterior":           0.27 
},
{
 "prior":           0.28,
"positive": "3",
"posterior":           0.28 
},
{
 "prior":           0.29,
"positive": "3",
"posterior":           0.29 
},
{
 "prior":            0.3,
"positive": "3",
"posterior":            0.3 
},
{
 "prior":           0.31,
"positive": "3",
"posterior":           0.31 
},
{
 "prior":           0.32,
"positive": "3",
"posterior":           0.32 
},
{
 "prior":           0.33,
"positive": "3",
"posterior":           0.33 
},
{
 "prior":           0.34,
"positive": "3",
"posterior":           0.34 
},
{
 "prior":           0.35,
"positive": "3",
"posterior":           0.35 
},
{
 "prior":           0.36,
"positive": "3",
"posterior":           0.36 
},
{
 "prior":           0.37,
"positive": "3",
"posterior":           0.37 
},
{
 "prior":           0.38,
"positive": "3",
"posterior":           0.38 
},
{
 "prior":           0.39,
"positive": "3",
"posterior":           0.39 
},
{
 "prior":            0.4,
"positive": "3",
"posterior":            0.4 
},
{
 "prior":           0.41,
"positive": "3",
"posterior":           0.41 
},
{
 "prior":           0.42,
"positive": "3",
"posterior":           0.42 
},
{
 "prior":           0.43,
"positive": "3",
"posterior":           0.43 
},
{
 "prior":           0.44,
"positive": "3",
"posterior":           0.44 
},
{
 "prior":           0.45,
"positive": "3",
"posterior":           0.45 
},
{
 "prior":           0.46,
"positive": "3",
"posterior":           0.46 
},
{
 "prior":           0.47,
"positive": "3",
"posterior":           0.47 
},
{
 "prior":           0.48,
"positive": "3",
"posterior":           0.48 
},
{
 "prior":           0.49,
"positive": "3",
"posterior":           0.49 
},
{
 "prior":            0.5,
"positive": "3",
"posterior":            0.5 
},
{
 "prior":           0.51,
"positive": "3",
"posterior":           0.51 
},
{
 "prior":           0.52,
"positive": "3",
"posterior":           0.52 
},
{
 "prior":           0.53,
"positive": "3",
"posterior":           0.53 
},
{
 "prior":           0.54,
"positive": "3",
"posterior":           0.54 
},
{
 "prior":           0.55,
"positive": "3",
"posterior":           0.55 
},
{
 "prior":           0.56,
"positive": "3",
"posterior":           0.56 
},
{
 "prior":           0.57,
"positive": "3",
"posterior":           0.57 
},
{
 "prior":           0.58,
"positive": "3",
"posterior":           0.58 
},
{
 "prior":           0.59,
"positive": "3",
"posterior":           0.59 
},
{
 "prior":            0.6,
"positive": "3",
"posterior":            0.6 
},
{
 "prior":           0.61,
"positive": "3",
"posterior":           0.61 
},
{
 "prior":           0.62,
"positive": "3",
"posterior":           0.62 
},
{
 "prior":           0.63,
"positive": "3",
"posterior":           0.63 
},
{
 "prior":           0.64,
"positive": "3",
"posterior":           0.64 
},
{
 "prior":           0.65,
"positive": "3",
"posterior":           0.65 
},
{
 "prior":           0.66,
"positive": "3",
"posterior":           0.66 
},
{
 "prior":           0.67,
"positive": "3",
"posterior":           0.67 
},
{
 "prior":           0.68,
"positive": "3",
"posterior":           0.68 
},
{
 "prior":           0.69,
"positive": "3",
"posterior":           0.69 
},
{
 "prior":            0.7,
"positive": "3",
"posterior":            0.7 
},
{
 "prior":           0.71,
"positive": "3",
"posterior":           0.71 
},
{
 "prior":           0.72,
"positive": "3",
"posterior":           0.72 
},
{
 "prior":           0.73,
"positive": "3",
"posterior":           0.73 
},
{
 "prior":           0.74,
"positive": "3",
"posterior":           0.74 
},
{
 "prior":           0.75,
"positive": "3",
"posterior":           0.75 
},
{
 "prior":           0.76,
"positive": "3",
"posterior":           0.76 
},
{
 "prior":           0.77,
"positive": "3",
"posterior":           0.77 
},
{
 "prior":           0.78,
"positive": "3",
"posterior":           0.78 
},
{
 "prior":           0.79,
"positive": "3",
"posterior":           0.79 
},
{
 "prior":            0.8,
"positive": "3",
"posterior":            0.8 
},
{
 "prior":           0.81,
"positive": "3",
"posterior":           0.81 
},
{
 "prior":           0.82,
"positive": "3",
"posterior":           0.82 
},
{
 "prior":           0.83,
"positive": "3",
"posterior":           0.83 
},
{
 "prior":           0.84,
"positive": "3",
"posterior":           0.84 
},
{
 "prior":           0.85,
"positive": "3",
"posterior":           0.85 
},
{
 "prior":           0.86,
"positive": "3",
"posterior":           0.86 
},
{
 "prior":           0.87,
"positive": "3",
"posterior":           0.87 
},
{
 "prior":           0.88,
"positive": "3",
"posterior":           0.88 
},
{
 "prior":           0.89,
"positive": "3",
"posterior":           0.89 
},
{
 "prior":            0.9,
"positive": "3",
"posterior":            0.9 
},
{
 "prior":           0.91,
"positive": "3",
"posterior":           0.91 
},
{
 "prior":           0.92,
"positive": "3",
"posterior":           0.92 
},
{
 "prior":           0.93,
"positive": "3",
"posterior":           0.93 
},
{
 "prior":           0.94,
"positive": "3",
"posterior":           0.94 
},
{
 "prior":           0.95,
"positive": "3",
"posterior":           0.95 
},
{
 "prior":           0.96,
"positive": "3",
"posterior":           0.96 
},
{
 "prior":           0.97,
"positive": "3",
"posterior":           0.97 
},
{
 "prior":           0.98,
"positive": "3",
"posterior":           0.98 
},
{
 "prior":           0.99,
"positive": "3",
"posterior":           0.99 
},
{
 "prior":              1,
"positive": "3",
"posterior":              1 
},
{
 "prior":              0,
"positive": "4",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "4",
"posterior": 0.03883495145631 
},
{
 "prior":           0.02,
"positive": "4",
"posterior": 0.07547169811321 
},
{
 "prior":           0.03,
"positive": "4",
"posterior": 0.1100917431193 
},
{
 "prior":           0.04,
"positive": "4",
"posterior": 0.1428571428571 
},
{
 "prior":           0.05,
"positive": "4",
"posterior": 0.1739130434783 
},
{
 "prior":           0.06,
"positive": "4",
"posterior": 0.2033898305085 
},
{
 "prior":           0.07,
"positive": "4",
"posterior": 0.2314049586777 
},
{
 "prior":           0.08,
"positive": "4",
"posterior": 0.258064516129 
},
{
 "prior":           0.09,
"positive": "4",
"posterior": 0.2834645669291 
},
{
 "prior":            0.1,
"positive": "4",
"posterior": 0.3076923076923 
},
{
 "prior":           0.11,
"positive": "4",
"posterior": 0.3308270676692 
},
{
 "prior":           0.12,
"positive": "4",
"posterior": 0.3529411764706 
},
{
 "prior":           0.13,
"positive": "4",
"posterior": 0.3741007194245 
},
{
 "prior":           0.14,
"positive": "4",
"posterior": 0.3943661971831 
},
{
 "prior":           0.15,
"positive": "4",
"posterior": 0.4137931034483 
},
{
 "prior":           0.16,
"positive": "4",
"posterior": 0.4324324324324 
},
{
 "prior":           0.17,
"positive": "4",
"posterior": 0.4503311258278 
},
{
 "prior":           0.18,
"positive": "4",
"posterior": 0.4675324675325 
},
{
 "prior":           0.19,
"positive": "4",
"posterior": 0.484076433121 
},
{
 "prior":            0.2,
"positive": "4",
"posterior":            0.5 
},
{
 "prior":           0.21,
"positive": "4",
"posterior": 0.5153374233129 
},
{
 "prior":           0.22,
"positive": "4",
"posterior": 0.5301204819277 
},
{
 "prior":           0.23,
"positive": "4",
"posterior": 0.5443786982249 
},
{
 "prior":           0.24,
"positive": "4",
"posterior": 0.5581395348837 
},
{
 "prior":           0.25,
"positive": "4",
"posterior": 0.5714285714286 
},
{
 "prior":           0.26,
"positive": "4",
"posterior": 0.5842696629213 
},
{
 "prior":           0.27,
"positive": "4",
"posterior": 0.5966850828729 
},
{
 "prior":           0.28,
"positive": "4",
"posterior": 0.6086956521739 
},
{
 "prior":           0.29,
"positive": "4",
"posterior": 0.620320855615 
},
{
 "prior":            0.3,
"positive": "4",
"posterior": 0.6315789473684 
},
{
 "prior":           0.31,
"positive": "4",
"posterior": 0.6424870466321 
},
{
 "prior":           0.32,
"positive": "4",
"posterior": 0.6530612244898 
},
{
 "prior":           0.33,
"positive": "4",
"posterior": 0.6633165829146 
},
{
 "prior":           0.34,
"positive": "4",
"posterior": 0.6732673267327 
},
{
 "prior":           0.35,
"positive": "4",
"posterior": 0.6829268292683 
},
{
 "prior":           0.36,
"positive": "4",
"posterior": 0.6923076923077 
},
{
 "prior":           0.37,
"positive": "4",
"posterior": 0.7014218009479 
},
{
 "prior":           0.38,
"positive": "4",
"posterior": 0.7102803738318 
},
{
 "prior":           0.39,
"positive": "4",
"posterior": 0.7188940092166 
},
{
 "prior":            0.4,
"positive": "4",
"posterior": 0.7272727272727 
},
{
 "prior":           0.41,
"positive": "4",
"posterior": 0.7354260089686 
},
{
 "prior":           0.42,
"positive": "4",
"posterior": 0.7433628318584 
},
{
 "prior":           0.43,
"positive": "4",
"posterior": 0.7510917030568 
},
{
 "prior":           0.44,
"positive": "4",
"posterior": 0.7586206896552 
},
{
 "prior":           0.45,
"positive": "4",
"posterior": 0.7659574468085 
},
{
 "prior":           0.46,
"positive": "4",
"posterior": 0.7731092436975 
},
{
 "prior":           0.47,
"positive": "4",
"posterior": 0.7800829875519 
},
{
 "prior":           0.48,
"positive": "4",
"posterior": 0.7868852459016 
},
{
 "prior":           0.49,
"positive": "4",
"posterior": 0.7935222672065 
},
{
 "prior":            0.5,
"positive": "4",
"posterior":            0.8 
},
{
 "prior":           0.51,
"positive": "4",
"posterior": 0.8063241106719 
},
{
 "prior":           0.52,
"positive": "4",
"posterior":         0.8125 
},
{
 "prior":           0.53,
"positive": "4",
"posterior": 0.8185328185328 
},
{
 "prior":           0.54,
"positive": "4",
"posterior": 0.824427480916 
},
{
 "prior":           0.55,
"positive": "4",
"posterior": 0.8301886792453 
},
{
 "prior":           0.56,
"positive": "4",
"posterior": 0.8358208955224 
},
{
 "prior":           0.57,
"positive": "4",
"posterior": 0.8413284132841 
},
{
 "prior":           0.58,
"positive": "4",
"posterior": 0.8467153284672 
},
{
 "prior":           0.59,
"positive": "4",
"posterior": 0.8519855595668 
},
{
 "prior":            0.6,
"positive": "4",
"posterior": 0.8571428571429 
},
{
 "prior":           0.61,
"positive": "4",
"posterior": 0.8621908127208 
},
{
 "prior":           0.62,
"positive": "4",
"posterior": 0.8671328671329 
},
{
 "prior":           0.63,
"positive": "4",
"posterior": 0.8719723183391 
},
{
 "prior":           0.64,
"positive": "4",
"posterior": 0.8767123287671 
},
{
 "prior":           0.65,
"positive": "4",
"posterior": 0.8813559322034 
},
{
 "prior":           0.66,
"positive": "4",
"posterior": 0.8859060402685 
},
{
 "prior":           0.67,
"positive": "4",
"posterior": 0.890365448505 
},
{
 "prior":           0.68,
"positive": "4",
"posterior": 0.8947368421053 
},
{
 "prior":           0.69,
"positive": "4",
"posterior": 0.8990228013029 
},
{
 "prior":            0.7,
"positive": "4",
"posterior": 0.9032258064516 
},
{
 "prior":           0.71,
"positive": "4",
"posterior": 0.9073482428115 
},
{
 "prior":           0.72,
"positive": "4",
"posterior": 0.9113924050633 
},
{
 "prior":           0.73,
"positive": "4",
"posterior": 0.9153605015674 
},
{
 "prior":           0.74,
"positive": "4",
"posterior": 0.9192546583851 
},
{
 "prior":           0.75,
"positive": "4",
"posterior": 0.9230769230769 
},
{
 "prior":           0.76,
"positive": "4",
"posterior": 0.9268292682927 
},
{
 "prior":           0.77,
"positive": "4",
"posterior": 0.9305135951662 
},
{
 "prior":           0.78,
"positive": "4",
"posterior": 0.9341317365269 
},
{
 "prior":           0.79,
"positive": "4",
"posterior": 0.9376854599407 
},
{
 "prior":            0.8,
"positive": "4",
"posterior": 0.9411764705882 
},
{
 "prior":           0.81,
"positive": "4",
"posterior": 0.9446064139942 
},
{
 "prior":           0.82,
"positive": "4",
"posterior": 0.9479768786127 
},
{
 "prior":           0.83,
"positive": "4",
"posterior": 0.9512893982808 
},
{
 "prior":           0.84,
"positive": "4",
"posterior": 0.9545454545455 
},
{
 "prior":           0.85,
"positive": "4",
"posterior": 0.9577464788732 
},
{
 "prior":           0.86,
"positive": "4",
"posterior": 0.9608938547486 
},
{
 "prior":           0.87,
"positive": "4",
"posterior": 0.9639889196676 
},
{
 "prior":           0.88,
"positive": "4",
"posterior": 0.967032967033 
},
{
 "prior":           0.89,
"positive": "4",
"posterior": 0.9700272479564 
},
{
 "prior":            0.9,
"positive": "4",
"posterior": 0.972972972973 
},
{
 "prior":           0.91,
"positive": "4",
"posterior": 0.9758713136729 
},
{
 "prior":           0.92,
"positive": "4",
"posterior": 0.9787234042553 
},
{
 "prior":           0.93,
"positive": "4",
"posterior": 0.9815303430079 
},
{
 "prior":           0.94,
"positive": "4",
"posterior": 0.9842931937173 
},
{
 "prior":           0.95,
"positive": "4",
"posterior": 0.987012987013 
},
{
 "prior":           0.96,
"positive": "4",
"posterior": 0.9896907216495 
},
{
 "prior":           0.97,
"positive": "4",
"posterior": 0.9923273657289 
},
{
 "prior":           0.98,
"positive": "4",
"posterior": 0.994923857868 
},
{
 "prior":           0.99,
"positive": "4",
"posterior": 0.9974811083123 
},
{
 "prior":              1,
"positive": "4",
"posterior":              1 
},
{
 "prior":              0,
"positive": "5",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "5",
"posterior": 0.1391304347826 
},
{
 "prior":           0.02,
"positive": "5",
"posterior": 0.2461538461538 
},
{
 "prior":           0.03,
"positive": "5",
"posterior": 0.3310344827586 
},
{
 "prior":           0.04,
"positive": "5",
"posterior":            0.4 
},
{
 "prior":           0.05,
"positive": "5",
"posterior": 0.4571428571429 
},
{
 "prior":           0.06,
"positive": "5",
"posterior": 0.5052631578947 
},
{
 "prior":           0.07,
"positive": "5",
"posterior": 0.5463414634146 
},
{
 "prior":           0.08,
"positive": "5",
"posterior": 0.5818181818182 
},
{
 "prior":           0.09,
"positive": "5",
"posterior": 0.6127659574468 
},
{
 "prior":            0.1,
"positive": "5",
"posterior":           0.64 
},
{
 "prior":           0.11,
"positive": "5",
"posterior": 0.6641509433962 
},
{
 "prior":           0.12,
"positive": "5",
"posterior": 0.6857142857143 
},
{
 "prior":           0.13,
"positive": "5",
"posterior": 0.7050847457627 
},
{
 "prior":           0.14,
"positive": "5",
"posterior": 0.7225806451613 
},
{
 "prior":           0.15,
"positive": "5",
"posterior": 0.7384615384615 
},
{
 "prior":           0.16,
"positive": "5",
"posterior": 0.7529411764706 
},
{
 "prior":           0.17,
"positive": "5",
"posterior": 0.7661971830986 
},
{
 "prior":           0.18,
"positive": "5",
"posterior": 0.7783783783784 
},
{
 "prior":           0.19,
"positive": "5",
"posterior": 0.7896103896104 
},
{
 "prior":            0.2,
"positive": "5",
"posterior":            0.8 
},
{
 "prior":           0.21,
"positive": "5",
"posterior": 0.8096385542169 
},
{
 "prior":           0.22,
"positive": "5",
"posterior": 0.8186046511628 
},
{
 "prior":           0.23,
"positive": "5",
"posterior": 0.8269662921348 
},
{
 "prior":           0.24,
"positive": "5",
"posterior": 0.8347826086957 
},
{
 "prior":           0.25,
"positive": "5",
"posterior": 0.8421052631579 
},
{
 "prior":           0.26,
"positive": "5",
"posterior": 0.8489795918367 
},
{
 "prior":           0.27,
"positive": "5",
"posterior": 0.8554455445545 
},
{
 "prior":           0.28,
"positive": "5",
"posterior": 0.8615384615385 
},
{
 "prior":           0.29,
"positive": "5",
"posterior": 0.8672897196262 
},
{
 "prior":            0.3,
"positive": "5",
"posterior": 0.8727272727273 
},
{
 "prior":           0.31,
"positive": "5",
"posterior": 0.8778761061947 
},
{
 "prior":           0.32,
"positive": "5",
"posterior": 0.8827586206897 
},
{
 "prior":           0.33,
"positive": "5",
"posterior": 0.8873949579832 
},
{
 "prior":           0.34,
"positive": "5",
"posterior": 0.8918032786885 
},
{
 "prior":           0.35,
"positive": "5",
"posterior":          0.896 
},
{
 "prior":           0.36,
"positive": "5",
"posterior":            0.9 
},
{
 "prior":           0.37,
"positive": "5",
"posterior": 0.9038167938931 
},
{
 "prior":           0.38,
"positive": "5",
"posterior": 0.9074626865672 
},
{
 "prior":           0.39,
"positive": "5",
"posterior": 0.9109489051095 
},
{
 "prior":            0.4,
"positive": "5",
"posterior": 0.9142857142857 
},
{
 "prior":           0.41,
"positive": "5",
"posterior": 0.9174825174825 
},
{
 "prior":           0.42,
"positive": "5",
"posterior": 0.9205479452055 
},
{
 "prior":           0.43,
"positive": "5",
"posterior": 0.9234899328859 
},
{
 "prior":           0.44,
"positive": "5",
"posterior": 0.9263157894737 
},
{
 "prior":           0.45,
"positive": "5",
"posterior": 0.9290322580645 
},
{
 "prior":           0.46,
"positive": "5",
"posterior": 0.9316455696203 
},
{
 "prior":           0.47,
"positive": "5",
"posterior": 0.9341614906832 
},
{
 "prior":           0.48,
"positive": "5",
"posterior": 0.9365853658537 
},
{
 "prior":           0.49,
"positive": "5",
"posterior": 0.9389221556886 
},
{
 "prior":            0.5,
"positive": "5",
"posterior": 0.9411764705882 
},
{
 "prior":           0.51,
"positive": "5",
"posterior": 0.9433526011561 
},
{
 "prior":           0.52,
"positive": "5",
"posterior": 0.9454545454545 
},
{
 "prior":           0.53,
"positive": "5",
"posterior": 0.9474860335196 
},
{
 "prior":           0.54,
"positive": "5",
"posterior": 0.9494505494505 
},
{
 "prior":           0.55,
"positive": "5",
"posterior": 0.9513513513514 
},
{
 "prior":           0.56,
"positive": "5",
"posterior": 0.9531914893617 
},
{
 "prior":           0.57,
"positive": "5",
"posterior": 0.9549738219895 
},
{
 "prior":           0.58,
"positive": "5",
"posterior": 0.9567010309278 
},
{
 "prior":           0.59,
"positive": "5",
"posterior": 0.9583756345178 
},
{
 "prior":            0.6,
"positive": "5",
"posterior":           0.96 
},
{
 "prior":           0.61,
"positive": "5",
"posterior": 0.9615763546798 
},
{
 "prior":           0.62,
"positive": "5",
"posterior": 0.9631067961165 
},
{
 "prior":           0.63,
"positive": "5",
"posterior": 0.9645933014354 
},
{
 "prior":           0.64,
"positive": "5",
"posterior": 0.9660377358491 
},
{
 "prior":           0.65,
"positive": "5",
"posterior": 0.9674418604651 
},
{
 "prior":           0.66,
"positive": "5",
"posterior": 0.9688073394495 
},
{
 "prior":           0.67,
"positive": "5",
"posterior": 0.9701357466063 
},
{
 "prior":           0.68,
"positive": "5",
"posterior": 0.9714285714286 
},
{
 "prior":           0.69,
"positive": "5",
"posterior": 0.9726872246696 
},
{
 "prior":            0.7,
"positive": "5",
"posterior": 0.9739130434783 
},
{
 "prior":           0.71,
"positive": "5",
"posterior": 0.9751072961373 
},
{
 "prior":           0.72,
"positive": "5",
"posterior": 0.9762711864407 
},
{
 "prior":           0.73,
"positive": "5",
"posterior": 0.9774058577406 
},
{
 "prior":           0.74,
"positive": "5",
"posterior": 0.9785123966942 
},
{
 "prior":           0.75,
"positive": "5",
"posterior": 0.9795918367347 
},
{
 "prior":           0.76,
"positive": "5",
"posterior": 0.9806451612903 
},
{
 "prior":           0.77,
"positive": "5",
"posterior": 0.9816733067729 
},
{
 "prior":           0.78,
"positive": "5",
"posterior": 0.9826771653543 
},
{
 "prior":           0.79,
"positive": "5",
"posterior": 0.9836575875486 
},
{
 "prior":            0.8,
"positive": "5",
"posterior": 0.9846153846154 
},
{
 "prior":           0.81,
"positive": "5",
"posterior": 0.9855513307985 
},
{
 "prior":           0.82,
"positive": "5",
"posterior": 0.9864661654135 
},
{
 "prior":           0.83,
"positive": "5",
"posterior": 0.9873605947955 
},
{
 "prior":           0.84,
"positive": "5",
"posterior": 0.9882352941176 
},
{
 "prior":           0.85,
"positive": "5",
"posterior": 0.9890909090909 
},
{
 "prior":           0.86,
"positive": "5",
"posterior": 0.989928057554 
},
{
 "prior":           0.87,
"positive": "5",
"posterior": 0.9907473309609 
},
{
 "prior":           0.88,
"positive": "5",
"posterior": 0.9915492957746 
},
{
 "prior":           0.89,
"positive": "5",
"posterior": 0.9923344947735 
},
{
 "prior":            0.9,
"positive": "5",
"posterior": 0.9931034482759 
},
{
 "prior":           0.91,
"positive": "5",
"posterior": 0.9938566552901 
},
{
 "prior":           0.92,
"positive": "5",
"posterior": 0.9945945945946 
},
{
 "prior":           0.93,
"positive": "5",
"posterior": 0.9953177257525 
},
{
 "prior":           0.94,
"positive": "5",
"posterior": 0.9960264900662 
},
{
 "prior":           0.95,
"positive": "5",
"posterior": 0.9967213114754 
},
{
 "prior":           0.96,
"positive": "5",
"posterior": 0.9974025974026 
},
{
 "prior":           0.97,
"positive": "5",
"posterior": 0.9980707395498 
},
{
 "prior":           0.98,
"positive": "5",
"posterior": 0.9987261146497 
},
{
 "prior":           0.99,
"positive": "5",
"posterior": 0.9993690851735 
},
{
 "prior":              1,
"positive": "5",
"posterior":              1 
},
{
 "prior":              0,
"positive": "6",
"posterior":              0 
},
{
 "prior":           0.01,
"positive": "6",
"posterior": 0.3926380368098 
},
{
 "prior":           0.02,
"positive": "6",
"posterior": 0.5663716814159 
},
{
 "prior":           0.03,
"positive": "6",
"posterior": 0.6643598615917 
},
{
 "prior":           0.04,
"positive": "6",
"posterior": 0.7272727272727 
},
{
 "prior":           0.05,
"positive": "6",
"posterior": 0.7710843373494 
},
{
 "prior":           0.06,
"positive": "6",
"posterior": 0.8033472803347 
},
{
 "prior":           0.07,
"positive": "6",
"posterior": 0.8280961182994 
},
{
 "prior":           0.08,
"positive": "6",
"posterior": 0.8476821192053 
},
{
 "prior":           0.09,
"positive": "6",
"posterior": 0.8635682158921 
},
{
 "prior":            0.1,
"positive": "6",
"posterior": 0.8767123287671 
},
{
 "prior":           0.11,
"positive": "6",
"posterior": 0.8877679697352 
},
{
 "prior":           0.12,
"positive": "6",
"posterior": 0.8971962616822 
},
{
 "prior":           0.13,
"positive": "6",
"posterior": 0.905331882481 
},
{
 "prior":           0.14,
"positive": "6",
"posterior": 0.9124236252546 
},
{
 "prior":           0.15,
"positive": "6",
"posterior": 0.9186602870813 
},
{
 "prior":           0.16,
"positive": "6",
"posterior": 0.9241877256318 
},
{
 "prior":           0.17,
"positive": "6",
"posterior": 0.9291204099061 
},
{
 "prior":           0.18,
"positive": "6",
"posterior": 0.9335494327391 
},
{
 "prior":           0.19,
"positive": "6",
"posterior": 0.9375481881264 
},
{
 "prior":            0.2,
"positive": "6",
"posterior": 0.9411764705882 
},
{
 "prior":           0.21,
"positive": "6",
"posterior": 0.9444834855938 
},
{
 "prior":           0.22,
"positive": "6",
"posterior": 0.9475100942127 
},
{
 "prior":           0.23,
"positive": "6",
"posterior": 0.9502905100065 
},
{
 "prior":           0.24,
"positive": "6",
"posterior": 0.9528535980149 
},
{
 "prior":           0.25,
"positive": "6",
"posterior": 0.955223880597 
},
{
 "prior":           0.26,
"positive": "6",
"posterior": 0.9574223245109 
},
{
 "prior":           0.27,
"positive": "6",
"posterior": 0.9594669627984 
},
{
 "prior":           0.28,
"positive": "6",
"posterior": 0.9613733905579 
},
{
 "prior":           0.29,
"positive": "6",
"posterior": 0.9631551634665 
},
{
 "prior":            0.3,
"positive": "6",
"posterior": 0.964824120603 
},
{
 "prior":           0.31,
"positive": "6",
"posterior": 0.9663906478324 
},
{
 "prior":           0.32,
"positive": "6",
"posterior": 0.9678638941399 
},
{
 "prior":           0.33,
"positive": "6",
"posterior": 0.969251950436 
},
{
 "prior":           0.34,
"positive": "6",
"posterior": 0.9705619982159 
},
{
 "prior":           0.35,
"positive": "6",
"posterior": 0.9718004338395 
},
{
 "prior":           0.36,
"positive": "6",
"posterior": 0.972972972973 
},
{
 "prior":           0.37,
"positive": "6",
"posterior": 0.9740847387906 
},
{
 "prior":           0.38,
"positive": "6",
"posterior": 0.9751403368083 
},
{
 "prior":           0.39,
"positive": "6",
"posterior": 0.9761439186547 
},
{
 "prior":            0.4,
"positive": "6",
"posterior": 0.9770992366412 
},
{
 "prior":           0.41,
"positive": "6",
"posterior": 0.9780096906448 
},
{
 "prior":           0.42,
"positive": "6",
"posterior": 0.9788783685361 
},
{
 "prior":           0.43,
"positive": "6",
"posterior": 0.9797080811677 
},
{
 "prior":           0.44,
"positive": "6",
"posterior": 0.9805013927577 
},
{
 "prior":           0.45,
"positive": "6",
"posterior": 0.9812606473595 
},
{
 "prior":           0.46,
"positive": "6",
"posterior": 0.9819879919947 
},
{
 "prior":           0.47,
"positive": "6",
"posterior": 0.9826853969291 
},
{
 "prior":           0.48,
"positive": "6",
"posterior": 0.9833546734955 
},
{
 "prior":           0.49,
"positive": "6",
"posterior": 0.9839974898023 
},
{
 "prior":            0.5,
"positive": "6",
"posterior": 0.9846153846154 
},
{
 "prior":           0.51,
"positive": "6",
"posterior": 0.9852097796559 
},
{
 "prior":           0.52,
"positive": "6",
"posterior": 0.9857819905213 
},
{
 "prior":           0.53,
"positive": "6",
"posterior": 0.9863332364059 
},
{
 "prior":           0.54,
"positive": "6",
"posterior": 0.9868646487721 
},
{
 "prior":           0.55,
"positive": "6",
"posterior": 0.9873772791024 
},
{
 "prior":           0.56,
"positive": "6",
"posterior": 0.9878721058434 
},
{
 "prior":           0.57,
"positive": "6",
"posterior": 0.9883500406394 
},
{
 "prior":           0.58,
"positive": "6",
"posterior": 0.9888119339371 
},
{
 "prior":           0.59,
"positive": "6",
"posterior": 0.9892585800367 
},
{
 "prior":            0.6,
"positive": "6",
"posterior": 0.9896907216495 
},
{
 "prior":           0.61,
"positive": "6",
"posterior": 0.9901090540198 
},
{
 "prior":           0.62,
"positive": "6",
"posterior": 0.990514228657 
},
{
 "prior":           0.63,
"positive": "6",
"posterior": 0.9909068567216 
},
{
 "prior":           0.64,
"positive": "6",
"posterior": 0.9912875121007 
},
{
 "prior":           0.65,
"positive": "6",
"posterior": 0.9916567342074 
},
{
 "prior":           0.66,
"positive": "6",
"posterior": 0.9920150305308 
},
{
 "prior":           0.67,
"positive": "6",
"posterior": 0.9923628789632 
},
{
 "prior":           0.68,
"positive": "6",
"posterior": 0.992700729927 
},
{
 "prior":           0.69,
"positive": "6",
"posterior": 0.9930290083202 
},
{
 "prior":            0.7,
"positive": "6",
"posterior": 0.9933481152993 
},
{
 "prior":           0.71,
"positive": "6",
"posterior": 0.9936584299147 
},
{
 "prior":           0.72,
"positive": "6",
"posterior": 0.9939603106126 
},
{
 "prior":           0.73,
"positive": "6",
"posterior": 0.9942540966163 
},
{
 "prior":           0.74,
"positive": "6",
"posterior": 0.9945401091978 
},
{
 "prior":           0.75,
"positive": "6",
"posterior": 0.9948186528497 
},
{
 "prior":           0.76,
"positive": "6",
"posterior": 0.9950900163666 
},
{
 "prior":           0.77,
"positive": "6",
"posterior": 0.9953544738437 
},
{
 "prior":           0.78,
"positive": "6",
"posterior": 0.9956122856003 
},
{
 "prior":           0.79,
"positive": "6",
"posterior": 0.9958636990349 
},
{
 "prior":            0.8,
"positive": "6",
"posterior": 0.9961089494163 
},
{
 "prior":           0.81,
"positive": "6",
"posterior": 0.9963482606189 
},
{
 "prior":           0.82,
"positive": "6",
"posterior": 0.9965818458033 
},
{
 "prior":           0.83,
"positive": "6",
"posterior": 0.9968099080503 
},
{
 "prior":           0.84,
"positive": "6",
"posterior": 0.9970326409496 
},
{
 "prior":           0.85,
"positive": "6",
"posterior": 0.9972502291476 
},
{
 "prior":           0.86,
"positive": "6",
"posterior": 0.9974628488583 
},
{
 "prior":           0.87,
"positive": "6",
"posterior": 0.997670668339 
},
{
 "prior":           0.88,
"positive": "6",
"posterior": 0.9978738483345 
},
{
 "prior":           0.89,
"positive": "6",
"posterior": 0.9980725424917 
},
{
 "prior":            0.9,
"positive": "6",
"posterior": 0.998266897747 
},
{
 "prior":           0.91,
"positive": "6",
"posterior": 0.9984570546888 
},
{
 "prior":           0.92,
"positive": "6",
"posterior": 0.9986431478969 
},
{
 "prior":           0.93,
"positive": "6",
"posterior": 0.9988253062594 
},
{
 "prior":           0.94,
"positive": "6",
"posterior": 0.9990036532713 
},
{
 "prior":           0.95,
"positive": "6",
"posterior": 0.9991783073131 
},
{
 "prior":           0.96,
"positive": "6",
"posterior": 0.9993493819128 
},
{
 "prior":           0.97,
"positive": "6",
"posterior": 0.9995169859926 
},
{
 "prior":           0.98,
"positive": "6",
"posterior": 0.9996812240995 
},
{
 "prior":           0.99,
"positive": "6",
"posterior": 0.999842196623 
},
{
 "prior":              1,
"positive": "6",
"posterior":              1 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        chart
  .useInteractiveGuideline(true)
          
        chart.xAxis
  .axisLabel("Prior probability")

        
        
        chart.yAxis
  .axisLabel("Posterior probability")
  .width(    40)
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

Notice how really improbable things stay improbable, and really probable things stay probable. "Extraordinary claims require extraordinary proof."

---

## More information?

Leek's original article is at:

* http://fivethirtyeight.com/features/a-formula-for-decoding-health-news/

This article also contains more detail of Leek's Bayesian approach.

There is an interactive demo at:

* https://patrickbarta.shinyapps.io/LeekScore/

Code for app is on GitHub:

* https://github.com/patrickbarta/LeekScore

This presentation is at:

* http://patrickbarta.github.io/LeekScore

Source for presentation is at:

* http://patrickbarta.github.io/LeekScorePitch.
