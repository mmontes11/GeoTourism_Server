DELETE FROM city CASCADE;
DELETE FROM region CASCADE;
DELETE FROM Country CASCADE;

INSERT INTO country(id,name,domain)
VALUES(1,'España','es');

INSERT INTO region(id,name,domain,countryid)
VALUES(1,'Galicia','gl',1);

INSERT INTO city(id,name,geom,regionid)
VALUES(
1,
'A Coruña',
ST_GeomFromText('MULTIPOLYGON(((-8.4690523 43.3577327,-8.4690854 43.3577196,-8.4689611 43.3568883,-8.4686408 43.3563456,-8.467909 43.3554804,-8.4672159 43.3538123,-8.4654278 43.3529978,-8.4602555 43.3501706,-8.4594468 43.3497284,-8.4552532 43.3491148,-8.4518825 43.3490947,-8.4498011 43.3491103,-8.4486419 43.3490783,-8.4478238 43.3491255,-8.4469971 43.3489237,-8.4462579 43.348815,-8.4436375 43.348315,-8.4434564 43.347988,-8.4433282 43.3473168,-8.4428564 43.3464568,-8.4428245 43.3457956,-8.4426734 43.345043,-8.4425711 43.3440704,-8.4424402 43.3437345,-8.4421929 43.3432195,-8.4433639 43.3420815,-8.4444288 43.3412037,-8.4400524 43.3400598,-8.4397335 43.3374643,-8.4488753 43.3333729,-8.4540119 43.3312458,-8.4561044 43.3235119,-8.4492663 43.3140805,-8.4467647 43.31246,-8.4464324 43.3122412,-8.4458807 43.3118442,-8.4446801 43.3103422,-8.4440723 43.3097744,-8.4434417 43.3097104,-8.4430923 43.3096913,-8.4408381 43.3095527,-8.4398151 43.3094253,-8.4401002 43.3091637,-8.4396665 43.3088534,-8.4393406 43.3091222,-8.4389512 43.3086561,-8.4385282 43.3081803,-8.4382259 43.3076576,-8.4378762 43.3071033,-8.4375769 43.3067526,-8.4150942 43.3012329,-8.4148583 43.301386,-8.4149355 43.3021906,-8.4150176 43.3028285,-8.4155342 43.3040239,-8.4152123 43.3042351,-8.414832 43.3042733,-8.4144989 43.3049915,-8.4148758 43.3051285,-8.4150106 43.3063935,-8.415126 43.307155,-8.4156683 43.3079939,-8.4163619 43.3086805,-8.4171542 43.3092989,-8.4189006 43.3093365,-8.4197976 43.3093795,-8.4202122 43.3096201,-8.4201656 43.3099992,-8.419653 43.3106678,-8.419418 43.3112557,-8.4193596 43.3120621,-8.419455 43.313164,-8.4157402 43.3140733,-8.4157209 43.3143329,-8.4159279 43.3150457,-8.4162981 43.3153568,-8.4171587 43.316115,-8.4173561 43.3163353,-8.4174839 43.3165022,-8.4177294 43.3168197,-8.4091956 43.3222181,-8.4075069 43.3222862,-8.4059557 43.3221982,-8.404274 43.3217738,-8.4029242 43.3215466,-8.4027089 43.3216046,-8.4022902 43.3217,-8.401577 43.32156,-8.4010494 43.3214863,-8.4008206 43.3214481,-8.4004699 43.3213929,-8.4003432 43.321375,-8.399902 43.3213324,-8.3988304 43.3212735,-8.3986789 43.321375,-8.3980781 43.3212741,-8.3976709 43.3216763,-8.3966629 43.3218714,-8.3958502 43.3220872,-8.3952457 43.3222576,-8.3945625 43.3224451,-8.3938641 43.3226615,-8.3933198 43.3228432,-8.3930213 43.3229946,-8.3916869 43.3231977,-8.3901749 43.3236772,-8.3904083 43.3239353,-8.3900993 43.3241328,-8.3898225 43.3239056,-8.3895495 43.3240748,-8.3897326 43.3243168,-8.3895841 43.324706,-8.3897297 43.3248868,-8.3897875 43.3250672,-8.3897325 43.3252318,-8.3894555 43.3252225,-8.3896054 43.3256013,-8.3896276 43.3258891,-8.3893099 43.3259512,-8.3890477 43.3259331,-8.3888333 43.325863,-8.3886057 43.3260758,-8.3884096 43.3259881,-8.3881741 43.3262908,-8.3880687 43.3264405,-8.3879562 43.3266005,-8.3875995 43.3269285,-8.3870902 43.3273211,-8.3867443 43.3272288,-8.38616 43.3274646,-8.3852684 43.3278853,-8.3852834 43.3281391,-8.3848197 43.3284031,-8.384234 43.3288264,-8.3837197 43.3287068,-8.3833087 43.3286149,-8.3831536 43.3285667,-8.3831403 43.3286779,-8.3828124 43.3289154,-8.3829266 43.329024,-8.382698 43.3291645,-8.3820444 43.3294739,-8.378182 43.3302567,-8.3792191 43.3305499,-8.3809341 43.3311171,-8.3812341 43.331301,-8.3814005 43.3315092,-8.3817136 43.3322596,-8.3819478 43.3325366,-8.3826298 43.3334137,-8.3840635 43.3351194,-8.3847139 43.336196,-8.3850147 43.3376402,-8.385195 43.3393961,-8.3863032 43.3391719,-8.3866095 43.3393017,-8.3870607 43.339646,-8.3873173 43.3400265,-8.3873485 43.3404072,-8.3872987 43.3408156,-8.3871661 43.34124,-8.3870412 43.3415438,-8.3869692 43.341556,-8.3869523 43.341329,-8.3869281 43.3413347,-8.3869067 43.3413395,-8.3869235 43.3416608,-8.3868019 43.3418365,-8.3868178 43.3418963,-8.3867016 43.3420592,-8.38654 43.3419623,-8.3865116 43.341985,-8.3866477 43.3420901,-8.3865513 43.3422262,-8.3862582 43.3422696,-8.3864659 43.3423852,-8.3862368 43.3427527,-8.3861288 43.3429489,-8.3858647 43.343011,-8.3856282 43.343135,-8.385455 43.343017,-8.3853147 43.343063,-8.3855265 43.343215,-8.3854357 43.343283,-8.3851911 43.3431129,-8.3851415 43.343225,-8.3850452 43.3432509,-8.3848115 43.343215,-8.384438 43.34323,-8.383732 43.343483,-8.3830271 43.3437349,-8.3828501 43.3438629,-8.382989 43.3443518,-8.3831299 43.3446841,-8.3830182 43.3447407,-8.383117 43.3449378,-8.3831039 43.3450707,-8.3831653 43.3452353,-8.3830894 43.3457648,-8.3829819 43.3458052,-8.3816461 43.3457092,-8.3815195 43.3456889,-8.3814101 43.3457326,-8.381335 43.345834,-8.3813243 43.3459433,-8.381099 43.3461227,-8.3811943 43.3460981,-8.3813737 43.3459954,-8.3815593 43.345906,-8.3818048 43.3458635,-8.382038 43.3458575,-8.3822412 43.3458857,-8.3825965 43.3463464,-8.382819 43.346943,-8.3828796 43.3477203,-8.3818582 43.3479266,-8.3818045 43.3478516,-8.3816025 43.3478311,-8.3814641 43.3479208,-8.3815298 43.3481138,-8.3817417 43.3482266,-8.3835461 43.3477989,-8.3837909 43.3477988,-8.3840308 43.347906,-8.3844543 43.3479628,-8.3845427 43.3481001,-8.3848389 43.3485604,-8.3849953 43.3485131,-8.3850273 43.3485637,-8.384842 43.3486383,-8.3849919 43.3488744,-8.385065 43.3489898,-8.3854942 43.3488623,-8.3855377 43.3489103,-8.385327 43.3489761,-8.3853388 43.3489925,-8.3859799 43.3487864,-8.3862326 43.3492507,-8.3858571 43.3493713,-8.3862563 43.3499955,-8.3866101 43.3498963,-8.3867481 43.3501261,-8.3861467 43.3503197,-8.3860553 43.3504103,-8.3857633 43.3505316,-8.3862478 43.3512788,-8.3854727 43.3515281,-8.3856107 43.3517549,-8.3853869 43.35185,-8.3850745 43.3519828,-8.3847823 43.352107,-8.3845611 43.3522011,-8.3834465 43.351132,-8.3832064 43.3512689,-8.3843281 43.3523435,-8.3833566 43.3528879,-8.38185 43.3514624,-8.3815512 43.3516295,-8.3830591 43.3530493,-8.3819067 43.3537178,-8.3797312 43.3516346,-8.3795008 43.3487633,-8.3802067 43.3485814,-8.3801874 43.3485304,-8.3799414 43.3485907,-8.379862 43.348521,-8.3789375 43.3487044,-8.37891 43.3483414,-8.3787378 43.3482752,-8.3785893 43.3483747,-8.378881 43.3518189,-8.3789575 43.3519681,-8.3817605 43.3545907,-8.3821772 43.3546527,-8.3823366 43.354639,-8.3824839 43.3545977,-8.3840678 43.3536843,-8.3844412 43.3536629,-8.3848639 43.3536811,-8.3849712 43.3537697,-8.3858381 43.3545639,-8.3863822 43.3550587,-8.3862273 43.3551526,-8.386089 43.3552102,-8.386081 43.3552537,-8.3860922 43.3552926,-8.3860515 43.3553147,-8.3859628 43.3552357,-8.3858342 43.3553048,-8.3857383 43.3552154,-8.3858517 43.3551515,-8.3857822 43.3550841,-8.3856096 43.3551811,-8.3856784 43.355245,-8.3857063 43.3552305,-8.3858078 43.3553246,-8.3857802 43.355341,-8.3862105 43.3557365,-8.3863143 43.3556767,-8.3863319 43.3556906,-8.386393 43.3556555,-8.3861977 43.3554652,-8.3862987 43.3554594,-8.386645 43.3552753,-8.3870312 43.3556685,-8.3883789 43.356476,-8.3882544 43.3565809,-8.3882312 43.3566128,-8.3882304 43.3566872,-8.3882192 43.356711,-8.3881074 43.3566471,-8.3880059 43.3567354,-8.3878805 43.3566657,-8.3879756 43.3565844,-8.3878813 43.3565303,-8.3877447 43.3566518,-8.3878357 43.3567075,-8.3878597 43.356686,-8.3879836 43.3567598,-8.3879615 43.3567778,-8.3885108 43.3571081,-8.3885935 43.3570345,-8.388615 43.3570472,-8.3886728 43.3569974,-8.3884079 43.3568316,-8.3885101 43.3568134,-8.3886878 43.3566482,-8.3896777 43.3572391,-8.3895241 43.3573727,-8.3893625 43.3572731,-8.3893141 43.3573165,-8.394453 43.3605394,-8.394205 43.3607667,-8.394132 43.3608989,-8.3935133 43.3617883,-8.3893232 43.3601609,-8.389226 43.3603035,-8.3886619 43.3600901,-8.3886475 43.3601168,-8.3873004 43.3596149,-8.3872478 43.3596194,-8.3872109 43.3596439,-8.3864942 43.3606502,-8.3865222 43.3606884,-8.3879099 43.3612473,-8.3877673 43.361461,-8.3947354 43.3641393,-8.3956432 43.3636723,-8.3960436 43.363466,-8.3962666 43.3633441,-8.396376 43.3633095,-8.3964943 43.3632236,-8.3966936 43.3631383,-8.3970666 43.3620727,-8.3969452 43.3620502,-8.3976732 43.3598032,-8.4021003 43.3596521,-8.4039901 43.3636368,-8.403933 43.3636941,-8.399698 43.3638744,-8.3988552 43.3639081,-8.3988116 43.3639133,-8.3987761 43.3639289,-8.3987545 43.3639437,-8.3987401 43.3639577,-8.3987258 43.3639808,-8.398791 43.3647518,-8.3988039 43.3647742,-8.3988262 43.364794,-8.3988622 43.3648131,-8.3989181 43.3648201,-8.4015129 43.3647091,-8.4015269 43.3649104,-8.4018714 43.3648971,-8.4017561 43.3668611,-8.4011639 43.3671712,-8.3952219 43.3668962,-8.3951952 43.3672115,-8.3984558 43.3673614,-8.3983726 43.3683473,-8.3981646 43.368337,-8.3979834 43.3683281,-8.3974353 43.3683047,-8.3971293 43.3682934,-8.397107 43.3685727,-8.3982517 43.3686222,-8.398339 43.3686258,-8.3982484 43.3696593,-8.39823 43.3696704,-8.3959032 43.3695613,-8.3952533 43.368455,-8.3956133 43.3684809,-8.3956113 43.3683569,-8.3958522 43.3683687,-8.3966422 43.3684074,-8.3966504 43.3682634,-8.3954225 43.3682042,-8.3952315 43.3681972,-8.3950028 43.3681889,-8.3947274 43.3677477,-8.3945912 43.367793,-8.3944338 43.3675311,-8.3943675 43.3673336,-8.3943464 43.3672106,-8.3943512 43.3669344,-8.394487 43.366938,-8.394492 43.3668619,-8.3939499 43.3668374,-8.3939425 43.3669189,-8.3940016 43.3669189,-8.3939632 43.3672593,-8.3939201 43.3675892,-8.3938875 43.3676395,-8.3938254 43.3677207,-8.3937483 43.3677646,-8.3936825 43.3677819,-8.3935887 43.3677741,-8.3934757 43.3677716,-8.3932639 43.367768,-8.3932622 43.3677232,-8.3931449 43.3677197,-8.393143 43.367756,-8.3929221 43.3677396,-8.3927266 43.3677125,-8.3923983 43.3676542,-8.3924147 43.3676033,-8.3922972 43.3675798,-8.3922809 43.3676287,-8.3918972 43.3675306,-8.3915763 43.3674238,-8.3915972 43.3673848,-8.3914814 43.3673486,-8.3914622 43.3673761,-8.3911955 43.3672607,-8.3908164 43.3670911,-8.3908385 43.3670591,-8.3907428 43.367019,-8.3907119 43.3670488,-8.3904317 43.3669203,-8.390195 43.3668077,-8.389965 43.3667026,-8.389713 43.3666258,-8.3895566 43.366611,-8.3893797 43.3666163,-8.3892137 43.3666369,-8.3891312 43.3666311,-8.3890296 43.366562,-8.3889888 43.3665544,-8.3886912 43.3660593,-8.3888728 43.3660541,-8.3889718 43.3660414,-8.3890022 43.3659333,-8.3890755 43.3659167,-8.3890309 43.3658705,-8.3888935 43.3658775,-8.3888688 43.3658793,-8.3888576 43.3658711,-8.388856 43.3658502,-8.3888696 43.3658438,-8.388991 43.3658351,-8.3888863 43.3657643,-8.3888248 43.3657515,-8.388784 43.365709,-8.3885675 43.3655998,-8.3881665 43.3654785,-8.3879308 43.3653885,-8.3875034 43.3652847,-8.3870729 43.3652508,-8.3868873 43.3653356,-8.3868609 43.3653844,-8.3867131 43.3654546,-8.3867115 43.3655568,-8.3866743 43.3656131,-8.3867019 43.3656672,-8.3871295 43.3659146,-8.3872325 43.3659502,-8.3874546 43.3659873,-8.3878341 43.3660303,-8.3882415 43.3660335,-8.3884271 43.3662199,-8.3887111 43.3667456,-8.3887331 43.3668183,-8.3887104 43.3668772,-8.3886864 43.3669333,-8.3883907 43.3673306,-8.3883611 43.3673728,-8.3883463 43.3673936,-8.3881863 43.367331,-8.3880279 43.3675557,-8.3878518 43.3678154,-8.3876993 43.3680415,-8.3875326 43.368294,-8.3875244 43.3683052,-8.3877879 43.368402,-8.3877399 43.3684787,-8.387895 43.3685399,-8.3878031 43.3686735,-8.3873007 43.3694046,-8.3871536 43.3696184,-8.3859556 43.3691581,-8.3858381 43.3691115,-8.3859231 43.3689835,-8.3856642 43.3688866,-8.3858446 43.3686256,-8.3857858 43.3686047,-8.3856772 43.3687637,-8.3853166 43.3686115,-8.3852672 43.3686021,-8.3852226 43.3686031,-8.3851779 43.3686193,-8.3851305 43.3686603,-8.3850353 43.3688151,-8.3824883 43.3678479,-8.37559 43.3652287,-8.3750922 43.3649353,-8.3747403 43.364773,-8.374354 43.3647357,-8.3741739 43.3649602,-8.3742338 43.3651663,-8.3747145 43.3654658,-8.3754699 43.365709,-8.3763501 43.3659859,-8.377051 43.366246,-8.3780963 43.36662,-8.3790232 43.3670007,-8.3803622 43.3675435,-8.3818384 43.3679866,-8.3828599 43.3683858,-8.3837782 43.3687541,-8.3842961 43.3688029,-8.3847963 43.3689862,-8.3849631 43.3690342,-8.3849854 43.3691103,-8.3849507 43.369215,-8.3854827 43.3694862,-8.3858801 43.3695277,-8.385989 43.369458,-8.3867323 43.3697148,-8.3874088 43.3700331,-8.3880097 43.3702889,-8.3884303 43.3705135,-8.3887049 43.370707,-8.388732 43.370841,-8.3890654 43.3711624,-8.3893573 43.3714369,-8.389649 43.3717801,-8.389946 43.372644,-8.3902584 43.3732338,-8.3903186 43.3734833,-8.3904387 43.3736705,-8.3905764 43.3738224,-8.3911087 43.3741102,-8.3914758 43.3742722,-8.3919292 43.3745178,-8.3925844 43.3747935,-8.3929279 43.3751678,-8.3931853 43.3754549,-8.3933483 43.3760538,-8.3931252 43.3764655,-8.3934231 43.3767679,-8.3937261 43.3771206,-8.3936651 43.3775095,-8.3936573 43.3778006,-8.3940006 43.3781063,-8.394138 43.3786615,-8.3944814 43.3790357,-8.3952709 43.3796971,-8.3958803 43.3800651,-8.3960349 43.3802584,-8.39661 43.3807138,-8.396548 43.380891,-8.3964468 43.3810695,-8.3968932 43.3813501,-8.3966871 43.3816746,-8.3961464 43.3819428,-8.3956829 43.3818243,-8.3954856 43.3817805,-8.3949534 43.381606,-8.3943525 43.3815935,-8.3936058 43.3818181,-8.3932197 43.382186,-8.393356 43.38344,-8.393354 43.383697,-8.393494 43.3837836,-8.3934297 43.3838693,-8.3931761 43.3838239,-8.3924711 43.3839489,-8.3924244 43.3841816,-8.3925499 43.3842748,-8.392507 43.3844541,-8.3923527 43.3845378,-8.3921836 43.3846975,-8.3919004 43.3847411,-8.3917202 43.3848721,-8.3919347 43.385053,-8.3915227 43.3850094,-8.3914001 43.3851054,-8.3917116 43.3852713,-8.3918832 43.3854585,-8.3919863 43.3856642,-8.3921751 43.3857704,-8.39219 43.3859737,-8.3924078 43.3861424,-8.3929155 43.3861955,-8.393303 43.3863051,-8.3934898 43.3862409,-8.3937102 43.3860658,-8.3937738 43.3861077,-8.3939232 43.3862059,-8.3940655 43.3862233,-8.3941887 43.3861561,-8.3943183 43.3862518,-8.3944696 43.3863678,-8.3948725 43.386359,-8.3948145 43.3862713,-8.3951764 43.3862845,-8.3953931 43.3862163,-8.3956184 43.3862007,-8.3959079 43.3863021,-8.3958436 43.3864112,-8.3960904 43.386575,-8.3961652 43.386912,-8.396135 43.387048,-8.3962919 43.3871767,-8.3963156 43.3872321,-8.3964601 43.3872929,-8.3965566 43.3874071,-8.3965097 43.3874933,-8.3966834 43.3875294,-8.396834 43.3871941,-8.3969068 43.3875234,-8.3970971 43.3876837,-8.397166 43.3877779,-8.3973287 43.387828,-8.397348 43.3878841,-8.3972377 43.3879282,-8.3970833 43.3879683,-8.3970585 43.3880805,-8.3971908 43.3881666,-8.3972019 43.3882548,-8.397178 43.388336,-8.397527 43.3885949,-8.3978771 43.3888529,-8.3978539 43.3890494,-8.39805 43.389111,-8.3982275 43.3889446,-8.3981695 43.3888877,-8.3980791 43.3888368,-8.3982976 43.3887642,-8.3984473 43.3886545,-8.3984918 43.3889357,-8.3986954 43.3890994,-8.3992321 43.3892043,-8.399224 43.3893591,-8.3993805 43.3894296,-8.3995423 43.3894081,-8.399754 43.3892983,-8.3997297 43.3892141,-8.3999861 43.3891704,-8.4002379 43.3893811,-8.4002646 43.3897636,-8.4006345 43.3899992,-8.4007947 43.3898439,-8.4002244 43.3889886,-8.4009244 43.38937,-8.4013554 43.3894476,-8.4016028 43.3894064,-8.4017368 43.389431,-8.4018474 43.3892258,-8.4016628 43.3890758,-8.4013625 43.3889197,-8.4012252 43.388795,-8.4010878 43.3886641,-8.4009848 43.3885144,-8.4008905 43.3881151,-8.4001573 43.3876479,-8.3997145 43.3874852,-8.399292 43.3872348,-8.3995513 43.3871077,-8.3998534 43.3872896,-8.400363 43.3874962,-8.4005126 43.3874325,-8.4005107 43.3873689,-8.4004451 43.3873291,-8.399859 43.3869127,-8.3997564 43.3868124,-8.3998691 43.386668,-8.4003885 43.3867935,-8.4005436 43.3869062,-8.4007424 43.3868651,-8.4009333 43.3867991,-8.4013879 43.3871283,-8.4015775 43.3871733,-8.4018961 43.3872212,-8.4018825 43.38723,-8.4026313 43.3878351,-8.40275 43.3878501,-8.4028338 43.387897,-8.4029087 43.3878792,-8.4029203 43.3878136,-8.4028532 43.3877601,-8.4027719 43.3877236,-8.4027319 43.3876748,-8.4027681 43.3875745,-8.4028764 43.3875286,-8.4029525 43.3875642,-8.4032301 43.3876228,-8.4036039 43.3877583,-8.4037651 43.3878389,-8.4039702 43.3878708,-8.4041121 43.3878098,-8.4041055 43.3876604,-8.4036568 43.3874546,-8.4037458 43.3873786,-8.4040837 43.3874489,-8.4042207 43.3874228,-8.4051031 43.3874789,-8.405455 43.387481,-8.406583 43.387715,-8.4064572 43.387548,-8.4065602 43.3875354,-8.4066469 43.3877342,-8.4069296 43.3878913,-8.4071512 43.3879317,-8.4072324 43.387941,-8.4073182 43.3879357,-8.4073911 43.3879178,-8.4076182 43.3878436,-8.4080013 43.3877766,-8.4081719 43.38777,-8.4083542 43.387785,-8.4084137 43.38772,-8.4082886 43.387656,-8.4085467 43.3876872,-8.4086151 43.3876037,-8.4086239 43.3874257,-8.408335 43.3871951,-8.4084511 43.3871894,-8.4090161 43.387435,-8.4092263 43.3874491,-8.409327 43.387373,-8.4095593 43.3863063,-8.4091474 43.3857324,-8.4087525 43.3855391,-8.4082117 43.385221,-8.4079371 43.3850524,-8.4075921 43.3847979,-8.4069207 43.3844375,-8.4065997 43.3843404,-8.4062654 43.3842507,-8.4062311 43.3840674,-8.4062798 43.3838837,-8.4063958 43.3837034,-8.4065441 43.3836035,-8.4066784 43.3836659,-8.4070976 43.3837379,-8.408295 43.3839217,-8.409355 43.384422,-8.4096503 43.3846475,-8.4097532 43.3848784,-8.4099763 43.3850218,-8.4101833 43.3850508,-8.4102862 43.3848449,-8.4107145 43.3851341,-8.4110664 43.3851715,-8.4111866 43.3850593,-8.4112466 43.384947,-8.4116701 43.3851688,-8.4114561 43.3847843,-8.411276 43.3845971,-8.410938 43.384559,-8.411033 43.3842336,-8.4108184 43.3839841,-8.4106254 43.3838658,-8.410741 43.3836711,-8.4107727 43.3833911,-8.4109977 43.3834437,-8.4112209 43.3834187,-8.4112991 43.3833478,-8.4110416 43.3830858,-8.411281 43.3831817,-8.4113925 43.383113,-8.4112991 43.3829111,-8.4116586 43.3830694,-8.411814 43.3830359,-8.4116758 43.3827762,-8.4117101 43.3825516,-8.4116297 43.3823965,-8.4116329 43.3822584,-8.4114793 43.3821065,-8.4112991 43.3821252,-8.4113153 43.3820027,-8.4114536 43.3818506,-8.4114011 43.3816284,-8.4113496 43.3815535,-8.4112342 43.3813834,-8.4111436 43.3816284,-8.4110664 43.3817719,-8.4110578 43.3818904,-8.4111179 43.3819652,-8.4109386 43.3823061,-8.4107413 43.3822748,-8.4108012 43.3820379,-8.410614 43.381734,-8.4106372 43.3814724,-8.4106544 43.3812167,-8.4105601 43.3810606,-8.4104142 43.3809546,-8.4107941 43.3808318,-8.4107486 43.3804419,-8.410434 43.379998,-8.4103138 43.3797209,-8.4100349 43.3796584,-8.4097997 43.3795866,-8.4101851 43.3792535,-8.4092387 43.3793283,-8.4090025 43.3792095,-8.4087799 43.3790729,-8.4081103 43.3788926,-8.4079774 43.3787378,-8.4079279 43.3786096,-8.4079806 43.3784788,-8.4080625 43.378434,-8.40809 43.3782923,-8.4081826 43.3781598,-8.4081492 43.3780257,-8.4079628 43.3778787,-8.4078295 43.377841,-8.407807 43.3777964,-8.4079668 43.3777546,-8.407665 43.377356,-8.4072378 43.3769792,-8.4068595 43.3766615,-8.4070016 43.3765622,-8.4067783 43.3764001,-8.4066067 43.3762629,-8.4063235 43.3760943,-8.4056247 43.3758703,-8.4048351 43.3758142,-8.4041995 43.3758261,-8.4038962 43.3751096,-8.4039525 43.3750372,-8.4039858 43.3749908,-8.4039786 43.3749445,-8.403896 43.3749255,-8.4038264 43.3748771,-8.4038612 43.3747991,-8.4038684 43.3747117,-8.4038322 43.3746148,-8.4036559 43.3745633,-8.4038199 43.3736531,-8.4041027 43.3727593,-8.4047749 43.3719996,-8.4055249 43.3711803,-8.4065783 43.3703132,-8.4079177 43.3696916,-8.4080206 43.3696948,-8.4080974 43.3696758,-8.4081076 43.3696,-8.4085061 43.369383,-8.4093683 43.3691165,-8.4103508 43.3689037,-8.4108579 43.3688542,-8.4112347 43.368929,-8.4114506 43.3689005,-8.4116506 43.3688499,-8.412236 43.3688152,-8.4130939 43.3690659,-8.4131403 43.3691639,-8.4130113 43.3693503,-8.4128635 43.3695347,-8.412849 43.369699,-8.4129997 43.3696874,-8.4131809 43.3697769,-8.4134533 43.3696821,-8.4135127 43.3696137,-8.4135431 43.3694599,-8.4136648 43.3693809,-8.4140938 43.3694767,-8.4142981 43.36966,-8.4143834 43.3699196,-8.4141573 43.3701173,-8.4139427 43.3703856,-8.4138723 43.370701,-8.4134793 43.3708411,-8.4138728 43.3711274,-8.4144062 43.3710595,-8.4146808 43.3709846,-8.414904 43.3710345,-8.4149383 43.3710969,-8.4153074 43.371072,-8.4153675 43.371309,-8.415728 43.3712716,-8.415934 43.3713964,-8.4156593 43.3714775,-8.4159683 43.3716397,-8.4162086 43.3716335,-8.4165863 43.3717271,-8.4166206 43.3715524,-8.4170584 43.3714525,-8.417539 43.3712966,-8.4177107 43.3712841,-8.4177697 43.3712949,-8.4177898 43.3712639,-8.4178526 43.3711945,-8.4179455 43.3712274,-8.4180409 43.371315,-8.4180183 43.3714118,-8.4178601 43.3715049,-8.4179907 43.3716254,-8.4180761 43.3716345,-8.4182343 43.3716327,-8.4183448 43.3716619,-8.41839 43.3717039,-8.4183122 43.3717367,-8.418159 43.3717458,-8.4180007 43.3717604,-8.4179957 43.3718791,-8.4179204 43.3719905,-8.4179354 43.3721201,-8.4179982 43.3721767,-8.4181338 43.3722095,-8.4182544 43.3722406,-8.4183743 43.3723421,-8.4184986 43.372326,-8.4185625 43.3723337,-8.4186335 43.3723415,-8.4186939 43.3724344,-8.4186691 43.3725506,-8.4188289 43.3726564,-8.4188253 43.3727261,-8.4188182 43.3729198,-8.4187543 43.373005,-8.4187401 43.3731676,-8.4187756 43.3732709,-8.418836 43.3733819,-8.4187841 43.3735639,-8.4190597 43.3737769,-8.4193805 43.3738377,-8.4194063 43.3740124,-8.4192947 43.3741372,-8.4190371 43.3741248,-8.4186939 43.3740124,-8.4186938 43.3741123,-8.418917 43.374237,-8.4190372 43.3743556,-8.4191402 43.3744803,-8.4192003 43.3745989,-8.4192346 43.3746987,-8.419063 43.3747112,-8.4190887 43.3748359,-8.4192947 43.3748609,-8.419372 43.3749857,-8.419269 43.3750668,-8.4193891 43.3751916,-8.4196637 43.3752291,-8.4198526 43.3753787,-8.41982 43.375622,-8.4202387 43.3758592,-8.420462 43.3758716,-8.4202474 43.3759839,-8.420462 43.3761461,-8.4206594 43.3761835,-8.4206337 43.3763021,-8.420516 43.376395,-8.4205992 43.3764831,-8.4208311 43.3764955,-8.4206079 43.3766078,-8.4206594 43.3766764,-8.4209512 43.3767575,-8.4212345 43.3768573,-8.4213891 43.3770409,-8.4215686 43.3773167,-8.4218696 43.3774063,-8.4220155 43.3774312,-8.4220584 43.3775498,-8.422788 43.3776434,-8.4231431 43.3775629,-8.4232343 43.3774312,-8.4234484 43.3774414,-8.423494 43.377694,-8.4236421 43.3779046,-8.4238866 43.3780239,-8.4244875 43.3781799,-8.4250325 43.3781417,-8.4252514 43.3781549,-8.4254488 43.3780925,-8.4254144 43.3779553,-8.4252247 43.3776621,-8.4249762 43.3774908,-8.4252212 43.3771224,-8.4258015 43.3772584,-8.4260238 43.3774749,-8.4263071 43.377687,-8.4267361 43.3777869,-8.4271654 43.3778804,-8.427234 43.3777744,-8.427013 43.377583,-8.4272855 43.3776309,-8.4274056 43.3776185,-8.4275259 43.3775435,-8.4277061 43.3776309,-8.4278005 43.3775997,-8.4277748 43.3774936,-8.4281353 43.3774812,-8.4284013 43.3776434,-8.4286588 43.3777868,-8.4288219 43.3778305,-8.4289335 43.3777557,-8.4289335 43.3775997,-8.4292076 43.3776348,-8.429825 43.377853,-8.430174 43.3781119,-8.4305214 43.3783733,-8.4311644 43.3788576,-8.431572 43.3791449,-8.4319211 43.3794039,-8.4324096 43.3797414,-8.4328975 43.3797433,-8.4329583 43.3802862,-8.4337118 43.3802085,-8.4340231 43.3804399,-8.434372 43.380699,-8.4348208 43.3809662,-8.43507 43.381344,-8.4357731 43.3813479,-8.435652 43.381515,-8.435419 43.381603,-8.435417 43.381859,-8.4357691 43.3818609,-8.435891 43.381692,-8.436124 43.3814769,-8.4371163 43.3813366,-8.437654 43.3814702,-8.438587 43.381489,-8.4394651 43.3815683,-8.4398585 43.3815272,-8.4401874 43.3813401,-8.4404526 43.3811575,-8.4409277 43.3806857,-8.4413382 43.3805974,-8.4420226 43.3811686,-8.442276 43.3804863,-8.4426303 43.379925,-8.4425526 43.3797428,-8.4430129 43.3797651,-8.443177 43.379715,-8.443531 43.3794609,-8.443884 43.379334,-8.4441711 43.3791952,-8.4442215 43.3788541,-8.4446793 43.3784164,-8.4445165 43.3782502,-8.4448281 43.3782519,-8.4449155 43.3780289,-8.4449379 43.3779285,-8.4449886 43.3779448,-8.4450099 43.3781009,-8.4450778 43.3784392,-8.445299 43.3784429,-8.4455103 43.3786122,-8.4456826 43.3785247,-8.4458681 43.3782182,-8.4461524 43.3779723,-8.4463483 43.3779671,-8.4465259 43.3778831,-8.446894 43.377296,-8.4472481 43.3770409,-8.447602 43.376786,-8.447961 43.376018,-8.4481333 43.3751321,-8.4479091 43.3748005,-8.4472359 43.3746816,-8.4471897 43.3743874,-8.4470915 43.3740366,-8.447292 43.3737439,-8.4469525 43.3734321,-8.4467894 43.3732494,-8.4465086 43.3732071,-8.4465119 43.3728436,-8.4465928 43.3727149,-8.4468695 43.3728076,-8.4469305 43.3727391,-8.4465288 43.372613,-8.4466831 43.3724397,-8.4469494 43.3726317,-8.4475882 43.3728268,-8.4476974 43.3729521,-8.4481606 43.3725836,-8.44887 43.372686,-8.4491987 43.3729692,-8.4499221 43.3730759,-8.4502761 43.3728209,-8.450629 43.372695,-8.4508265 43.3721413,-8.4509053 43.3719662,-8.4513861 43.3718431,-8.452045 43.371675,-8.452226 43.371163,-8.4525801 43.3709079,-8.4528085 43.3705852,-8.453112 43.370397,-8.4538171 43.3702719,-8.4545211 43.3701469,-8.4548567 43.3703834,-8.4545877 43.3707222,-8.4553936 43.3707651,-8.456277 43.3705399,-8.4571943 43.3699042,-8.4577093 43.3700989,-8.457155 43.370673,-8.4567763 43.371265,-8.4573429 43.3714645,-8.4579437 43.3713647,-8.4582955 43.3712775,-8.4587933 43.3710903,-8.459317 43.3708032,-8.4592134 43.3702254,-8.4599521 43.3693308,-8.459377 43.36905,-8.4585382 43.3698225,-8.4580159 43.3699484,-8.4573409 43.3696658,-8.4573952 43.3694785,-8.4575738 43.3692893,-8.4574349 43.3690178,-8.4574302 43.3686819,-8.45712 43.3681996,-8.4572837 43.3678521,-8.457532 43.367852,-8.457891 43.3676717,-8.4583193 43.3672497,-8.4584136 43.3662804,-8.4583058 43.3661775,-8.4587236 43.3656436,-8.4586752 43.3655228,-8.4584363 43.3657355,-8.4582875 43.3655987,-8.4587018 43.3650998,-8.4585036 43.3650002,-8.458894 43.3645409,-8.4586286 43.3643011,-8.4587656 43.3641466,-8.4591303 43.3642086,-8.4594158 43.3637605,-8.4594997 43.3634051,-8.4593863 43.363171,-8.4588502 43.3634024,-8.4591818 43.3630013,-8.4587035 43.3627402,-8.4583057 43.3629714,-8.4584305 43.3626235,-8.4582508 43.3624132,-8.4581151 43.3621961,-8.457866 43.3620598,-8.4576682 43.3619094,-8.4574131 43.3614359,-8.4569498 43.3612454,-8.4567634 43.3611021,-8.4566309 43.3609041,-8.4565411 43.3606609,-8.456476 43.3604448,-8.456546 43.360148,-8.4567359 43.3599377,-8.4571839 43.3597309,-8.4575755 43.3600878,-8.4589704 43.360649,-8.4596316 43.360609,-8.4598863 43.3605372,-8.4601062 43.3602906,-8.4601825 43.3598386,-8.460839 43.3601503,-8.4621683 43.3604516,-8.4629193 43.3602626,-8.4632 43.3605093,-8.4635223 43.3604879,-8.4636519 43.3603358,-8.464171 43.3602652,-8.4647704 43.3606264,-8.465029 43.3602643,-8.4648629 43.3596081,-8.4655237 43.3597789,-8.4655876 43.3595252,-8.4652278 43.3592063,-8.4657878 43.3592757,-8.4666627 43.3590953,-8.4669601 43.3588028,-8.4667591 43.3586559,-8.4669132 43.3584098,-8.4674361 43.3582557,-8.4677124 43.3579651,-8.4678492 43.3572787,-8.4689025 43.3576638,-8.4690523 43.3577327)),((-8.4530892 43.3759903,-8.4527906 43.3757367,-8.4524109 43.3756943,-8.4518909 43.3760238,-8.4517591 43.3762394,-8.4514671 43.3764078,-8.4511432 43.3765338,-8.4507075 43.3770836,-8.4499907 43.3774205,-8.4509181 43.3778424,-8.4511631 43.3778704,-8.451351 43.3777046,-8.4516391 43.3777029,-8.4521366 43.3776079,-8.452343 43.377707,-8.4525801 43.3777414,-8.4529603 43.3776631,-8.4527385 43.3774559,-8.453399 43.377584,-8.4536129 43.3773592,-8.453228 43.37707,-8.453822 43.3772625,-8.4540437 43.3769309,-8.4531091 43.3763017,-8.4530892 43.3759903)),((-8.4495085 43.3778313,-8.4492798 43.3780069,-8.448995 43.378333,-8.448817 43.3784599,-8.4486411 43.3785879,-8.4484631 43.3787149,-8.447759 43.37884,-8.447933 43.379097,-8.448008 43.3792794,-8.4494115 43.3797863,-8.4497604 43.3800122,-8.449897 43.380004,-8.450564 43.37988,-8.4508378 43.3800946,-8.4511419 43.3800992,-8.451332 43.379915,-8.4510405 43.3794821,-8.4505681 43.3793669,-8.4504071 43.3791762,-8.4505691 43.3789819,-8.4505751 43.3785969,-8.4513827 43.3786993,-8.450816 43.378069,-8.4501979 43.3779026,-8.4498177 43.3778473,-8.4495085 43.3778313)),((-8.4478183 43.3794605,-8.4472201 43.3801199,-8.447039 43.380633,-8.446687 43.3806309,-8.446682 43.381144,-8.4459791 43.3811409,-8.4459721 43.3819109,-8.446674 43.382042,-8.447378 43.382046,-8.4483034 43.382305,-8.4485294 43.3821169,-8.448031 43.3818215,-8.4480753 43.3815452,-8.4479251 43.3812725,-8.44844 43.381281,-8.449395 43.3814772,-8.4490194 43.3808452,-8.4490762 43.3806483,-8.4490891 43.3803801,-8.4491436 43.3800312,-8.4486877 43.379715,-8.4478183 43.3794605)))'),
1
);