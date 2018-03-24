.class public Lcom/fiio/music/widget/PointerTable2;
.super Landroid/view/View;
.source "PointerTable2.java"


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Z

.field private E:I

.field private F:Landroid/graphics/Path;

.field private G:Landroid/graphics/PathMeasure;

.field private H:F

.field private I:I

.field private J:I

.field private K:I

.field private L:F

.field a:I

.field b:I

.field c:I

.field d:I

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:[D

.field public p:[D

.field public q:[D

.field public r:[D

.field public s:[D

.field t:D

.field u:D

.field private v:Z

.field private w:Landroid/graphics/Paint;

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v6, p0, Lcom/fiio/music/widget/PointerTable2;->v:Z

    .line 35
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->x:[F

    .line 36
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->y:[F

    .line 37
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->z:[F

    .line 50
    const/16 v0, 0x11f

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->E:I

    .line 54
    iput v5, p0, Lcom/fiio/music/widget/PointerTable2;->I:I

    .line 55
    iput v5, p0, Lcom/fiio/music/widget/PointerTable2;->J:I

    .line 56
    iput v6, p0, Lcom/fiio/music/widget/PointerTable2;->K:I

    .line 81
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->L:F

    .line 82
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    .line 83
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    .line 84
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->g:F

    .line 85
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->h:F

    .line 86
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->i:F

    .line 87
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->j:F

    .line 129
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->k:F

    .line 130
    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->l:F

    .line 142
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    iget-object v2, p0, Lcom/fiio/music/widget/PointerTable2;->y:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/fiio/music/widget/PointerTable2;->y:[F

    aget v3, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/widget/PointerTable2;->a(FFFF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->m:F

    .line 143
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    iget-object v2, p0, Lcom/fiio/music/widget/PointerTable2;->z:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/fiio/music/widget/PointerTable2;->z:[F

    aget v3, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/widget/PointerTable2;->a(FFFF)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->n:F

    .line 164
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    .line 166
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->p:[D

    .line 167
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->q:[D

    .line 168
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->r:[D

    .line 169
    new-array v0, v4, [D

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->s:[D

    .line 170
    iput-wide v8, p0, Lcom/fiio/music/widget/PointerTable2;->t:D

    .line 171
    iput-wide v8, p0, Lcom/fiio/music/widget/PointerTable2;->u:D

    .line 62
    invoke-virtual {p0}, Lcom/fiio/music/widget/PointerTable2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->w:Landroid/graphics/Paint;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->A:Landroid/graphics/Paint;

    .line 68
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->A:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0x8c

    invoke-static {v2, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->A:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->B:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->B:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->B:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->B:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    const v1, 0x7f020630

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->C:Landroid/graphics/drawable/Drawable;

    .line 78
    iput v5, p0, Lcom/fiio/music/widget/PointerTable2;->c:I

    .line 79
    iput v5, p0, Lcom/fiio/music/widget/PointerTable2;->d:I

    .line 80
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    const/16 v0, 0x3ff

    .line 326
    const/16 v1, 0x400

    new-array v2, v1, [D

    fill-array-data v2, :array_0

    .line 391
    double-to-int v1, p0

    .line 392
    if-gtz v1, :cond_0

    const/4 v1, 0x0

    .line 393
    :cond_0
    if-lt v1, v0, :cond_1

    .line 394
    :goto_0
    aget-wide v0, v2, v0

    return-wide v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 326
    :array_0
    .array-data 8
        -0x3fae800000000000L    # -70.0
        -0x3fb1e5a1d323fee3L    # -60.205999
        -0x3fb4e844d87724fbL    # -54.185399
        -0x3fb6ab1001d5c316L    # -50.663574
        -0x3fb7eae7ddca4b12L    # -48.164799
        -0x3fb8e2fecdd0d8cbL    # -46.226599
        -0x3fb9adb30728e92dL    # -44.642974
        -0x3fba59154866a11fL    # -43.304038
        -0x3fbaed8ae31d712aL    # -42.144199
        -0x3fbb707e30878748L    # -41.121149
        -0x3fbbe5a1d323fee3L    # -40.205999
        -0x3fbc4f98f1d3ed52L    # -39.378145
        -0x3fbcb0560c7c0f45L    # -38.622374
        -0x3fbd0953bd167664L    # -37.927132
        -0x3fbd5bb84db9c737L    # -37.283438
        -0x3fbda86cfc829cfeL    # -36.684174
        -0x3fbdf02de8709742L    # -36.123599
        -0x3fbe3394d0dcfcc6L    # -35.597021
        -0x3fbe732135daad60L    # -35.100549
        -0x3fbeaf3dc8b86b16L    # -34.630927
        -0x3fbee844d87724fbL    # -34.185399
        -0x3fbf1e8377186552L    # -33.761613
        -0x3fbf523beec3979aL    # -33.357546
        -0x3fbf83a7c9de0503L    # -32.971442
        -0x3fbfb2f911cf355dL    # -32.601774
        -0x3fbfe05bc87db2b3L    # -32.247199
        -0x3fc017ed84d338f8L    # -31.906532
        -0x3fc06bd8be7296f6L    # -31.578724
        -0x3fc0bcb69552e2fcL    # -31.262839
        -0x3fc10abdf4c2b51cL    # -30.958039
        -0x3fc1562003ab862bL    # -30.663574
        -0x3fc19f0941c8216cL    # -30.378765
        -0x3fc1e5a1cac08312L    # -30.103
        -0x3fc22a0e410b630bL    # -29.83572
        -0x3fc26c6fac6045bbL    # -29.576421
        -0x3fc2ace48626f60eL    # -29.324638
        -0x3fc2eb88765ba6f0L    # -29.079949
        -0x3fc32874fb549f95L    # -28.841965
        -0x3fc363c19c17225bL    # -28.610327
        -0x3fc39d83d790752eL    # -28.384707
        -0x3fc3d5cfbb949625L    # -28.164799
        -0x3fc40cb7b28954a8L    # -27.950322
        -0x3fc4424cf8d716d3L    # -27.741013
        -0x3fc4769f6a93f291L    # -27.53663
        -0x3fc4a9bde82d7b63L    # -27.336946
        -0x3fc4dbb65668c261L    # -27.141749
        -0x3fc50c959e625636L    # -26.950842
        -0x3fc53c67be553ac5L    # -26.764042
        -0x3fc56b382e44b6e9L    # -26.581174
        -0x3fc599116a8b8f15L    # -26.402078
        -0x3fc5c5fd9ba1b196L    # -26.226599
        -0x3fc5f205ff1d81f1L    # -26.054596
        -0x3fc61d338f798527L    # -25.885932
        -0x3fc6478e7ddca4b1L    # -25.720482
        -0x3fc6711ec918e326L    # -25.558124
        -0x3fc699ebd9018e75L    # -25.398745
        -0x3fc6c1fc9ff92f2bL    # -25.242239
        -0x3fc6e957eed45e92L    # -25.088502
        -0x3fc71003ff69014bL    # -24.937439
        -0x3fc73606c8711d7aL    # -24.788959
        -0x3fc75b660e51d25bL    # -24.642974
        -0x3fc7802730c67169L    # -24.499402
        -0x3fc7a44f4c6e6d9cL    # -24.358165
        -0x3fc7c7e34b945309L    # -24.219188
        -0x3fc7eae7d566cf42L    # -24.0824
        -0x3fc80d616f86a099L    # -23.947732
        -0x3fc82f544bb1af3aL    # -23.81512
        -0x3fc850c46950fc72L    # -23.684503
        -0x3fc871b5b70691eaL    # -23.555821
        -0x3fc8922bf11f926cL    # -23.429017
        -0x3fc8b22a90cd423eL    # -23.304038
        -0x3fc8d1b4fe79ee03L    # -23.180832
        -0x3fc8f0ce8101f31fL    # -23.059349
        -0x3fc90f7a2cecc815L    # -22.939542
        -0x3fc92dbb05faebc4L    # -22.821365
        -0x3fc94b93ee5eedccL    # -22.704774
        -0x3fc96907a6bd6e8bL    # -22.589727
        -0x3fc98618bd66277cL    # -22.476185
        -0x3fc9a2c9e236c15dL    # -22.364107
        -0x3fc9bf1d712a0ec7L    # -22.253457
        -0x3fc9db15c63ae254L    # -22.144199
        -0x3fc9f6b51bd61f5cL    # -22.036299
        -0x3fca11fdbd2fa0d7L    # -21.929722
        -0x3fca2cf1b25f633dL    # -21.824437
        -0x3fca4793037d6302L    # -21.720413
        -0x3fca61e39713ad5cL    # -21.617621
        -0x3fca7be5753a3ec0L    # -21.51603
        -0x3fca959a52263d81L    # -21.415614
        -0x3fcaaf03f2d3c793L    # -21.316346
        -0x3fcac8241c3efae8L    # -21.218199
        -0x3fcae0fc610f0e91L    # -21.121149
        -0x3fcaf98e64b23140L    # -21.025171
        -0x3fcb11db9841aac5L    # -20.930243
        -0x3fcb29e59f2ba9d2L    # -20.83634
        -0x3fcb41adc8fb86f4L    # -20.743442
        -0x3fcb593586ca89fcL    # -20.651527
        -0x3fcb707e38eb0319L    # -20.560574
        -0x3fcb87891e215337L    # -20.470564
        -0x3fcb9e577531db44L    # -20.381478
        -0x3fcbb4ea9e6eeb70L    # -20.293295
        -0x3fcbcb43a647fdc6L    # -20.205999
        -0x3fcbe163baba7b91L    # -20.119572
        -0x3fcbf74c09c3ce21L    # -20.033996
        -0x3fcc0cfd9fd36f7eL    # -19.949255
        -0x3fcc22799a1fd157L    # -19.865332
        -0x3fcc37c0e38a7e74L    # -19.782213
        -0x3fcc4cd48882f0e1L    # -19.699882
        -0x3fcc61b584b1ab08L    # -19.618324
        -0x3fcc7664d3bf2f55L    # -19.537524
        -0x3fcc8ae34fc610f1L    # -19.457469
        -0x3fcc9f31e3a7daa5L    # -19.378145
        -0x3fccb35158b827faL    # -19.29954
        -0x3fccc742aa9f7b5bL    # -19.221639
        -0x3fccdb06a2b17050L    # -19.14443
        -0x3fccee9df97aaac1L    # -19.067902
        -0x3fcd02098915bdd7L    # -18.992042
        -0x3fcd154a0a0f4d7bL    # -18.916839
        -0x3fcd286034f3fd93L    # -18.842282
        -0x3fcd3b4cd31769a9L    # -18.768359
        -0x3fcd4e108c3f3e03L    # -18.69506
        -0x3fcd60ac18f81e8aL    # -18.622374
        -0x3fcd73201040bfe4L    # -18.550292
        -0x3fcd856d2aa5c5f8L    # -18.478803
        -0x3fcd97940fecdd0eL    # -18.407897
        -0x3fcda9955714b9cbL    # -18.337565
        -0x3fcdbb7186551937L    # -18.267799
        -0x3fcdcd29563a9f38L    # -18.198588
        -0x3fcddebd3c361134L    # -18.129925
        -0x3fcdf02de00d1b71L    # -18.0618
        -0x3fce017bc7f77af6L    # -17.994205
        -0x3fce12a77a2cecc8L    # -17.927132
        -0x3fce23b17ce52dedL    # -17.860573
        -0x3fce349a459103c9L    # -17.794521
        -0x3fce45627bf61aa4L    # -17.728966
        -0x3fce560a73f748a1L    # -17.663903
        -0x3fce6692b3cc4ac7L    # -17.599324
        -0x3fce76fbc1acde1aL    # -17.535221
        -0x3fce87460242d05fL    # -17.471588
        -0x3fce9771fbc5de9cL    # -17.408417
        -0x3fcea7800218def4L    # -17.345703
        -0x3fceb7709b738e6dL    # -17.283438
        -0x3fcec7441bb8c32bL    # -17.221617
        -0x3fced6fb09203a32L    # -17.160232
        -0x3fcee695b78cc9a7L    # -17.099278
        -0x3fcef6148ba83f4fL    # -17.038749
        -0x3fcf0577ea1c68ecL    # -16.978639
        -0x3fcf14c037931444L    # -16.918942
        -0x3fcf23edd8b60f1bL    # -16.859652
        -0x3fcf330110a137f4L    # -16.800765
        -0x3fcf41fa54c55433L    # -16.742274
        -0x3fcf50d9f90539fcL    # -16.684174
        -0x3fcf5fa05143bf72L    # -16.62646
        -0x3fcf6e4db163babaL    # -16.569127
        -0x3fcf7ce25c810a57L    # -16.512171
        -0x3fcf8b5ec80c73acL    # -16.455585
        -0x3fcf99c33721d53dL    # -16.399365
        -0x3fcfa80fecdd0d8dL    # -16.343507
        -0x3fcfb6453d20f2bfL    # -16.288006
        -0x3fcfc4637bd05af7L    # -16.232857
        -0x3fcfd26adb402d17L    # -16.178057
        -0x3fcfe05bd0e12e84L    # -16.123599
        -0x3fcfee366d7a56deL    # -16.069482
        -0x3fcffbfb267c6b8bL    # -16.015699
        -0x3fd013545c78a6dbL    # -15.962247
        -0x3fd02e878fabda0eL    # -15.909122
        -0x3fd049906cca2db6L    # -15.85632
        -0x3fd0646f7a0b5ed9L    # -15.803837
        -0x3fd07f251c193b3aL    # -15.75167
        -0x3fd099b21c475e63L    # -15.699813
        -0x3fd0b4169c23b795L    # -15.648265
        -0x3fd0ce534373f317L    # -15.597021
        -0x3fd0e868986fcdeeL    # -15.546077
        -0x3fd10256ffc115dfL    # -15.49543
        -0x3fd11c1ede1198afL    # -15.445077
        -0x3fd135c0b9991362L    # -15.395014
        -0x3fd14f3cf70153bdL    # -15.345238
        -0x3fd16893faf42785L    # -15.295746
        -0x3fd181c64ba94bbeL    # -15.246534
        -0x3fd19ad44dca8e2eL    # -15.197599
        -0x3fd1b3be4473cd57L    # -15.148939
        -0x3fd1cc84d76ab580L    # -15.100549
        -0x3fd1e528283d35ebL    # -15.052428
        -0x3fd1fda8deb0fadfL    # -15.004571
        -0x3fd216071c53f39dL    # -14.956977
        -0x3fd22e4345cfede9L    # -14.909643
        -0x3fd2465de15ca6caL    # -14.862565
        -0x3fd25e5753a3ec03L    # -14.81574
        -0x3fd2762fbe33acd6L    # -14.769167
        -0x3fd28de7a743a648L    # -14.722842
        -0x3fd2a57f51efb6ddL    # -14.676763
        -0x3fd2bcf722e1ac58L    # -14.630927
        -0x3fd2d44f5d35653dL    # -14.585332
        -0x3fd2eb886594af4fL    # -14.539975
        -0x3fd302a2a0a95853L    # -14.494853
        -0x3fd3199e30014f8bL    # -14.449965
        -0x3fd3307b99d451fcL    # -14.405307
        -0x3fd3473affb04ee8L    # -14.360878
        -0x3fd35ddcc63f1412L    # -14.316675
        -0x3fd37461522a6f3fL    # -14.272695
        -0x3fd38ac8a3726070L    # -14.228938
        -0x3fd3a11361dc93eaL    # -14.185399
        -0x3fd3b7418d6909afL    # -14.142078
        -0x3fd3cd538ac18f82L    # -14.098972
        -0x3fd3e349be8ff328L    # -14.056078
        -0x3fd3f92428d434a0L    # -14.013396
        -0x3fd40ee34fc610f1L    # -13.970922
        -0x3fd4248754f3775cL    # -13.928655
        -0x3fd43a109d0635a4L    # -13.886592
        -0x3fd44f7f498c3b0cL    # -13.844732
        -0x3fd464d39da16617L    # -13.803073
        -0x3fd47a0ddc619546L    # -13.761613
        -0x3fd48f2e48e8a71eL    # -13.72035
        -0x3fd4a43526527a20L    # -13.679282
        -0x3fd4b922b7baecd0L    # -13.638407
        -0x3fd4cdf71eafee70L    # -13.597724
        -0x3fd4e2b2bfdb4cc2L    # -13.55723
        -0x3fd4f755bccaf70aL    # -13.516924
        -0x3fd50be0589acbc9L    # -13.476804
        -0x3fd52052b4d8ba41L    # -13.436869
        -0x3fd534ad14a0a0f5L    # -13.397117
        -0x3fd548efbb0e5e68L    # -13.357546
        -0x3fd55d1aeb3dd11cL    # -13.318154
        -0x3fd5712ec6bce853L    # -13.27894
        -0x3fd5852b90a78290L    # -13.239902
        -0x3fd599116a8b8f15L    # -13.201039
        -0x3fd5ace09784ec63L    # -13.162349
        -0x3fd5c0995aaf78ffL    # -13.12383
        -0x3fd5d43bb40b34e7L    # -13.085482
        -0x3fd5e7c80841ede1L    # -13.047302
        -0x3fd5fb3e78e1932dL    # -13.009289
        -0x3fd60e9f2778140eL    # -12.971442
        -0x3fd621ea35935fc4L    # -12.93376
        -0x3fd63520296b3355L    # -12.896239
        -0x3fd64840bfe3b03eL    # -12.858881
        -0x3fd65b4c7f349386L    # -12.821682
        -0x3fd66e43675ddd2bL    # -12.784642
        -0x3fd68125bb7b6bb1L    # -12.747759
        -0x3fd693f39d1b2e5aL    # -12.711032
        -0x3fd6a6ad2dcb1466L    # -12.67446
        -0x3fd6b952b0a6fc59L    # -12.638041
        -0x3fd6cbe4473cd573L    # -12.601774
        -0x3fd6de62131a8ef7L    # -12.565658
        -0x3fd6f0cc35ce1826L    # -12.529692
        -0x3fd70322f2734f83L    # -12.493874
        -0x3fd715666a98244fL    # -12.458203
        -0x3fd72796e158750cL    # -12.422677
        -0x3fd739b43526527aL    # -12.387297
        -0x3fd74bbecaab8a5dL    # -12.35206
        -0x3fd75db6a1e81cb4L    # -12.316966
        -0x3fd76f9c1f85d745L    # -12.282012
        -0x3fd7816f21f6cacdL    # -12.247199
        -0x3fd7932fec56d5d0L    # -12.212525
        -0x3fd7a4dec1c1d6d0L    # -12.177988
        -0x3fd7b67b80a9de8bL    # -12.143589
        -0x3fd7c8068db8bac7L    # -12.109325
        -0x3fd7d97fe8ee6b83L    # -12.075196
        -0x3fd7eae7d566cf42L    # -12.0412
        -0x3fd7fc3e5321e604L    # -12.007337
        -0x3fd80d83a53b8e4cL    # -11.973605
        -0x3fd81eb7cbb3c819L    # -11.940004
        -0x3fd82fdb09a671efL    # -11.906532
        -0x3fd840ed5f138bceL    # -11.873189
        -0x3fd851ef0f16f438L    # -11.839973
        -0x3fd862e019b0ab2eL    # -11.806884
        -0x3fd873c0a06e9ff1L    # -11.773921
        -0x3fd88490e66cb103L    # -11.741082
        -0x3fd895510d38cda7L    # -11.708366
        -0x3fd8a600f345069aL    # -11.675774
        -0x3fd8b6a0fd3b29a2L    # -11.643303
        -0x3fd8c731098d477cL    # -11.610954
        -0x3fd8d7b17ce52dedL    # -11.578724
        -0x3fd8e8225742dcf4L    # -11.546613
        -0x3fd8f88398a65493L    # -11.514621
        -0x3fd908d5842b734bL    # -11.482746
        -0x3fd9191819d2391dL    # -11.450988
        -0x3fd9294b9cb6848cL    # -11.419345
        -0x3fd939700cd85597L    # -11.387817
        -0x3fd949856a37ac3fL    # -11.356404
        -0x3fd9598c197e5647L    # -11.325103
        -0x3fd96983f91e646fL    # -11.293915
        -0x3fd9796d2aa5c5f8L    # -11.262839
        -0x3fd98947f1305964L    # -11.231873
        -0x3fd999144cbe1eb4L    # -11.201017
        -0x3fd9a8d25edd0529L    # -11.17027
        -0x3fd9b882278d0cc3L    # -11.139632
        -0x3fd9c823c85c24c4L    # -11.109102
        -0x3fd9d7b784662baeL    # -11.078678
        -0x3fd9e73d3a1d3240L    # -11.048361
        -0x3fd9f6b52c9d16fdL    # -11.018149
        -0x3fda061f5be5d9e4L    # -10.988042
        -0x3fda157be9856a38L    # -10.958039
        -0x3fda24caf709b739L    # -10.928139
        -0x3fda340c8472c0e8L    # -10.898342
        -0x3fda4340b34e7686L    # -10.868647
        -0x3fda5267a52ac754L    # -10.839053
        -0x3fda61817b95a294L    # -10.809559
        -0x3fda708e368f0846L    # -10.780165
        -0x3fda7f8df7a4e7abL    # -10.75087
        -0x3fda8e80bed740c4L    # -10.721674
        -0x3fda9d66cf41f213L    # -10.692575
        -0x3fdaac4007570c56L    # -10.663574
        -0x3fdabb0caa326e11L    # -10.634669
        -0x3fdac9ccb7d41744L    # -10.60586
        -0x3fdad880303c07eeL    # -10.577147
        -0x3fdae72778140dd4L    # -10.548527
        -0x3fdaf5c24c404a73L    # -10.520002
        -0x3fdb0450ce4ead0cL    # -10.491571
        -0x3fdb12d3415b1423L    # -10.463232
        -0x3fdb2149a5657fb7L    # -10.434985
        -0x3fdb2fb3fa6defc8L    # -10.40683
        -0x3fdb3e12839042d9L    # -10.378765
        -0x3fdb4c651f3e89a9L    # -10.350791
        -0x3fdb5aabef06b378L    # -10.322907
        -0x3fdb68e71476af8aL    # -10.295112
        -0x3fdb77168f8e7dddL    # -10.267406
        -0x3fdb853a81dc0db2L    # -10.239788
        -0x3fdb93530ced4e4dL    # -10.212257
        -0x3fdba1600f34506aL    # -10.184814
        -0x3fdbaf61cbccf28cL    # -10.157457
        -0x3fdbbd58644523f6L    # -10.130185
        -0x3fdbcb4395810625L    # -10.103
        -0x3fdbd923e5b8561dL    # -10.075898
        -0x3fdbe6f8f041461bL    # -10.048882
        -0x3fdbf4c319c5a3e4L    # -10.021949
        -0x3fdc028262456f76L    # -9.995099
        -0x3fdc1036c9c0a8d2L    # -9.968332
        -0x3fdc1de071c53f3aL    # -9.941647
        -0x3fdc2b7f5a5332adL    # -9.915044
        -0x3fdc3913a4f8726dL    # -9.888522
        -0x3fdc469d51b4fe7aL    # -9.862081
        -0x3fdc541c8216c615L    # -9.83572
        -0x3fdc6191361dc93fL    # -9.809439
        -0x3fdc6efb8f57f738L    # -9.783237
        -0x3fdc7c5b8dc55001L    # -9.757114
        -0x3fdc89b13165d399L    # -9.73107
        -0x3fdc96fcbd556085L    # -9.705103
        -0x3fdca43e10060781L    # -9.679214
        -0x3fdcb1756c93a711L    # -9.653401
        -0x3fdcbea2b1704ff4L    # -9.627665
        -0x3fdccbc60029f16bL    # -9.602005
        -0x3fdcd8df58c08b76L    # -9.576421
        -0x3fdce5eedcc20d56L    # -9.550912
        -0x3fdcf2f4adbc664dL    # -9.525477
        -0x3fdcfff0aa21a71aL    # -9.500117
        -0x3fdd0ce3150dae3eL    # -9.47483
        -0x3fdd19cbccf28c7aL    # -9.449617
        -0x3fdd26aaf35e310eL    # -9.424477
        -0x3fdd338088509bfaL    # -9.39941
        -0x3fdd404ccee5abc1L    # -9.374414
        -0x3fdd4d0f840181e0L    # -9.349491
        -0x3fdd59c90c4dec1cL    # -9.324638
        -0x3fdd667924af0bf2L    # -9.299857
        -0x3fdd73201040bfe4L    # -9.275146
        -0x3fdd7fbdcf0307f2L    # -9.250505
        -0x3fdd8c5260f5e41dL    # -9.225934
        -0x3fdd98dde7a743a6L    # -9.201432
        -0x3fdda5606317268dL    # -9.176999
        -0x3fddb1d9d3458cd2L    # -9.152635
        -0x3fddbe4a59c065b6L    # -9.128339
        -0x3fddcab21815a07bL    # -9.10411
        -0x3fddd710ecb74de0L    # -9.079949
        -0x3fdde366f9335d25L    # -9.055855
        -0x3fddefb43d89ce4aL    # -9.031828
        -0x3fddfbf8db489093L    # -9.007867
        -0x3fde0834f3fd933eL    # -8.983971
        -0x3fde1468448cf7cbL    # -8.960142
        -0x3fde209331a08bfcL    # -8.936377
        -0x3fde2cb5781c7150L    # -8.912678
        -0x3fde38cf5b1c8649L    # -8.889043
        -0x3fde44e0daa0cae6L    # -8.865472
        -0x3fde50e9f6a93f29L    # -8.841965
        -0x3fde5cead0c3d252L    # -8.818521
        -0x3fde68e368f08462L    # -8.79514
        -0x3fde74d3bf2f5558L    # -8.771822
        -0x3fde80bbd3804535L    # -8.748567
        -0x3fde8c9bc7714339L    # -8.725374
        -0x3fde9873bc903ea7L    # -8.702242
        -0x3fdea443914f483dL    # -8.679172
        -0x3fdeb00b673c4f3cL    # -8.656163
        -0x3fdebbcb3e5753a4L    # -8.633215
        -0x3fdec783382e44b7L    # -8.610327
        -0x3fded33333333333L    # -8.5875
        -0x3fdededb7281fd9cL    # -8.564732
        -0x3fdeea7bd48cb4afL    # -8.542024
        -0x3fdef6147ae147aeL    # -8.519375
        -0x3fdf01a5657fb69aL    # -8.496785
        -0x3fdf0d2eb5f5f0b3L    # -8.474253
        -0x3fdf18b04ab606b8L    # -8.45178
        -0x3fdf242a454de7eaL    # -8.429365
        -0x3fdf2f9cc74b838cL    # -8.407007
        -0x3fdf3b07af20ea5bL    # -8.384707
        -0x3fdf466b1e5c0b9aL    # -8.362464
        -0x3fdf51c714fce747L    # -8.340278
        -0x3fdf5d1bb4916ca4L    # -8.318148
        -0x3fdf6868db8bac71L    # -8.296075
        -0x3fdf73aecd07852fL    # -8.274057
        -0x3fdf7eed6777079eL    # -8.252095
        -0x3fdf8a24aada33beL    # -8.230189
        -0x3fdf9554b8bef8cfL    # -8.208338
        -0x3fdfa07db2b34613L    # -8.186541
        -0x3fdfab9f77292c49L    # -8.164799
        -0x3fdfb6ba0620ab71L    # -8.143112
        -0x3fdfc1cda2b5a20eL    # -8.121478
        -0x3fdfccda2b5a20deL    # -8.099898
        -0x3fdfd7dfa00e27e1L    # -8.078372
        -0x3fdfe2de225fa659L    # -8.056899
        -0x3fdfedd5d3dc8b87L    # -8.035478
        -0x3fdff8c67168f8e8L    # -8.014111
        -0x3fe007607c4199feL    # -7.992796
        -0x3fe01d2674080f99L    # -7.971533
        -0x3fe032deca2552a0L    # -7.950322
        -0x3fe048897e996313L    # -7.929163
        -0x3fe05e26d4801f75L    # -7.908055
        -0x3fe073b6cbd987c6L    # -7.886998
        -0x3fe0893964a59c06L    # -7.865992
        -0x3fe09eae9ee45c36L    # -7.845037
        -0x3fe0b4167a95c854L    # -7.824133
        -0x3fe0c9717df19d67L    # -7.803278
        -0x3fe0debf65dbfcebL    # -7.782473
        -0x3fe0f3ffef39085fL    # -7.761719
        -0x3fe10933e35c5b4bL    # -7.741013
        -0x3fe11e5abc0e38a8L    # -7.720357
        -0x3fe13374bc6a7efaL    # -7.69975
        -0x3fe14881e4712e41L    # -7.679192
        -0x3fe15d82773e24ffL    # -7.658682
        -0x3fe1727631b584b2L    # -7.638221
        -0x3fe1875d9a0f0a5fL    # -7.617807
        -0x3fe19c382a12f901L    # -7.597442
        -0x3fe1b10667f90d9dL    # -7.577124
        -0x3fe1c5c853c14834L    # -7.556853
        -0x3fe1da7daa4fca43L    # -7.53663
        -0x3fe1ef26aec0724bL    # -7.516454
        -0x3fe203c3a42f1ed1L    # -7.496324
        -0x3fe21854477ff152L    # -7.476241
        -0x3fe22cd898b2e9cdL    # -7.456205
        -0x3fe241511dffc548L    # -7.436214
        -0x3fe255bd944aa540L    # -7.416269
        -0x3fe26a1dfb9389b5L    # -7.39637
        -0x3fe27e7253da72a8L    # -7.376517
        -0x3fe292bae03b3e9aL    # -7.356709
        -0x3fe2a6f7a0b5ed8dL    # -7.336946
        -0x3fe2bb28d8665e03L    # -7.317227
        -0x3fe2cf4e0114d2f6L    # -7.297554
        -0x3fe2e367a0f9096cL    # -7.277925
        -0x3fe2f775b8130165L    # -7.25834
        -0x3fe30b784662bae0L    # -7.238799
        -0x3fe31f6f4be835dfL    # -7.219302
        -0x3fe3335ac8a37260L    # -7.199849
        -0x3fe3473affb04ee8L    # -7.180439
        -0x3fe35b0ff10ecb75L    # -7.161072
        -0x3fe36ed959a30985L    # -7.141749
        -0x3fe38297bfa4c61eL    # -7.122468
        -0x3fe3964adff822bcL    # -7.10323
        -0x3fe3a9f2ba9d1f60L    # -7.084035
        -0x3fe3bd8f92af9a8dL    # -7.064882
        -0x3fe3d121682f9442L    # -7.045771
        -0x3fe3e4a83b1d0c80L    # -7.026702
        -0x3fe3f8240b780347L    # -7.007675
        -0x3fe40b94d9407896L    # -6.98869
        -0x3fe41efb2aae2974L    # -6.969745
        -0x3fe43256798958daL    # -6.950842
        -0x3fe445a6c5d206c8L    # -6.931981
        -0x3fe458ec95bff045L    # -6.91316
        -0x3fe46c27e9531551L    # -6.894379
        -0x3fe47f583a53b8e5L    # -6.87564
        -0x3fe4927e5215768aL    # -6.85694
        -0x3fe4a599aa60913aL    # -6.838281
        -0x3fe4b8aa8650e779L    # -6.819662
        -0x3fe4cbb1290257c9L    # -6.801082
        -0x3fe4dead4f5903a7L    # -6.782542
        -0x3fe4f19ef954eb14L    # -6.764042
        -0x3fe504866a11ec92L    # -6.745581
        -0x3fe51763a1900820L    # -6.727159
        -0x3fe52a369fcf3dc0L    # -6.708776
        -0x3fe53cff64cf8d71L    # -6.690432
        -0x3fe54fbdf090f734L    # -6.672127
        -0x3fe56272862f598aL    # -6.65386
        -0x3fe5751ce28ed5f1L    # -6.635632
        -0x3fe587bd8be7296fL    # -6.617441
        -0x3fe59a53fc0096ffL    # -6.599289
        -0x3fe5ace0b912dba5L    # -6.581174
        -0x3fe5bf633ce63a5cL    # -6.563098
        -0x3fe5d1dc50ce4eadL    # -6.545058
        -0x3fe5e44b2b777d0fL    # -6.527057
        -0x3fe5f6b09635610bL    # -6.509092
        -0x3fe6090c4dec1c1dL    # -6.491164
        -0x3fe61b5e0f7fcfc4L    # -6.473274
        -0x3fe62da661283904L    # -6.45542
        -0x3fe63fe4ffc9795bL    # -6.437603
        -0x3fe6521a2e7f6f4cL    # -6.419822
        -0x3fe66445aa2e3c53L    # -6.402078
        -0x3fe67667f90d9d77L    # -6.384369
        -0x3fe6888094e5d5b2L    # -6.366697
        -0x3fe69a8fc0d2c387L    # -6.349061
        -0x3fe6ac95bff04578L    # -6.33146
        -0x3fe6be924f227d03L    # -6.313895
        -0x3fe6d0856e696a27L    # -6.296366
        -0x3fe6e26fa3fcc9ebL    # -6.278871
        -0x3fe6f45069a4df48L    # -6.261412
        -0x3fe70628027d88c2L    # -6.243988
        -0x3fe717f66e86c658L    # -6.226599
        -0x3fe729bbadc0980bL    # -6.209245
        -0x3fe73b780346dc5dL    # -6.191925
        -0x3fe74d2b6f19934fL    # -6.174639
        -0x3fe75ed5ae1cde5dL    # -6.157388
        -0x3fe77076c050bd88L    # -6.140172
        -0x3fe7820f2becedd5L    # -6.122989
        -0x3fe7939eadd590c1L    # -6.10584
        -0x3fe7a525460aa64cL    # -6.088725
        -0x3fe7b6a337a80cfaL    # -6.071643
        -0x3fe7c817fc7607c4L    # -6.054596
        -0x3fe7d9845dc83233L    # -6.037581
        -0x3fe7eae7d566cf42L    # -6.0206
        -0x3fe7fc42a66dbd73L    # -6.003652
        -0x3fe80d94d0dcfcc6L    # -5.986737
        -0x3fe81ede54b48d3bL    # -5.969855
        -0x3fe8301f75104d55L    # -5.953005
        -0x3fe84157eed45e92L    # -5.936188
        -0x3fe85287c200c0f0L    # -5.919404
        -0x3fe863af31b152f4L    # -5.902652
        -0x3fe874ce3de6149cL    # -5.885932
        -0x3fe885e4a3832767L    # -5.869245
        -0x3fe896f2e8c0485aL    # -5.852589
        -0x3fe8a7f8ca8198f2L    # -5.835965
        -0x3fe8b8f648c7192fL    # -5.819373
        -0x3fe8c9eb6390c910L    # -5.802813
        -0x3fe8dad85dfa871aL    # -5.786284
        -0x3fe8ebbcf4e874c9L    # -5.769787
        -0x3fe8fc996b7670a0L    # -5.753321
        -0x3fe90d6dc1a47a9eL    # -5.736886
        -0x3fe91e39f77292c5L    # -5.720482
        -0x3fe92efe0ce0b913L    # -5.704109
        -0x3fe93fba450acc0cL    # -5.687766
        -0x3fe9506e19b90eaaL    # -5.671455
        -0x3fe9611a11233df3L    # -5.655174
        -0x3fe971be2b4959e6L    # -5.638923
        -0x3fe9825a250f8402L    # -5.622703
        -0x3fe992ee41919ac8L    # -5.606513
        -0x3fe9a37a3db3bfb6L    # -5.590354
        -0x3fe9b3fe9fadafd1L    # -5.574224
        -0x3fe9c47b24638c97L    # -5.558124
        -0x3fe9d4efcbd55608L    # -5.542054
        -0x3fe9e55cd91eeaa7L    # -5.526013
        -0x3fe9f5c1c6088d6dL    # -5.510003
        -0x3fea061f5be5d9e4L    # -5.494021
        -0x3fea1675147f1306L    # -5.478069
        -0x3fea26c332f01755L    # -5.462146
        -0x3fea3709741d084fL    # -5.446253
        -0x3fea47485e3da2f9L    # -5.430388
        -0x3fea577fae3608d1L    # -5.414552
        -0x3fea67af640639d6L    # -5.398745
        -0x3fea77d77fae3609L    # -5.382967
        -0x3fea87f8012dfd69L    # -5.367218
        -0x3fea98112ba16e7aL    # -5.351497
        -0x3feaa822ff08893bL    # -5.335804
        -0x3feab82d7b634dadL    # -5.320139
        -0x3feac8305d95dd4cL    # -5.304503
        -0x3fead82be8bc169cL    # -5.288895
        -0x3feae8201cd5f99cL    # -5.273315
        -0x3feaf80cf9e3864dL    # -5.257763
        -0x3feb07f27fe4bcaeL    # -5.242239
        -0x3feb17d0f1f57b42L    # -5.226742
        -0x3feb27a80cf9e386L    # -5.211273
        -0x3feb3778140dd3feL    # -5.195831
        -0x3feb4740c4156e26L    # -5.180417
        -0x3feb5702602c9082L    # -5.16503
        -0x3feb66bca5375c8eL    # -5.149671
        -0x3feb7670196d8f50L    # -5.134338
        -0x3feb861c79b34a45L    # -5.119032
        -0x3feb95c182ecaeeaL    # -5.103754
        -0x3feba55fbb517a46L    # -5.088502
        -0x3febb4f6dfc5cdd5L    # -5.073277
        -0x3febc486f049a997L    # -5.058079
        -0x3febd4102ff8ec10L    # -5.042907
        -0x3febe3929ed3953eL    # -5.027761
        -0x3febf30df9bdc6a0L    # -5.012642
        -0x3fec028283d35eb7L    # -4.997549
        -0x3fec11eff9f87f02L    # -4.982483
        -0x3fec2156e264e486L    # -4.967442
        -0x3fec30b6b6e0d23dL    # -4.952428
        -0x3fec400ffda4052dL    # -4.937439
        -0x3fec4f6273929ed4L    # -4.922476
        -0x3fec5eae18ac9f30L    # -4.907539
        -0x3fec6df2ecf20642L    # -4.892628
        -0x3fec7d31337eb28eL    # -4.877742
        -0x3fec8c68a936c58fL    # -4.862882
        -0x3fec9b9991361dc9L    # -4.848047
        -0x3fecaac3eb7cbb3dL    # -4.833237
        -0x3fecb9e774eebf66L    # -4.818453
        -0x3fecc904b3c3e74bL    # -4.803693
        -0x3fecd81b21c475e6L    # -4.788959
        -0x3fece72b020c49baL    # -4.77425
        -0x3fecf63497b7414aL    # -4.759565
        -0x3fed05379fa97e13L    # -4.744905
        -0x3fed143419e30015L    # -4.73027
        -0x3fed232a0663c750L    # -4.71566
        -0x3fed3219a847b246L    # -4.701074
        -0x3fed4102bc72e276L    # -4.686513
        -0x3fed4fe5c91d14e4L    # -4.671975
        -0x3fed5ec204f2ae08L    # -4.657463
        -0x3fed6d983947496bL    # -4.642974
        -0x3fed7c67dfe32a06L    # -4.62851
        -0x3fed8b317efe0ce1L    # -4.614069
        -0x3fed99f4906034f4L    # -4.599653
        -0x3feda8b19a415f46L    # -4.58526
        -0x3fedb7681669ced1L    # -4.570892
        -0x3fedc6188b11409aL    # -4.556547
        -0x3fedd4c2f837b4a2L    # -4.542225
        -0x3fede366d7a56de3L    # -4.527928
        -0x3fedf204f2ae07e6L    # -4.513653
        -0x3fee009cc319c5a4L    # -4.499402
        -0x3fee0f2e48e8a71eL    # -4.485175
        -0x3fee1db9c7368ad7L    # -4.470971
        -0x3fee2c3f3e0370ceL    # -4.45679
        -0x3fee3abead4f5904L    # -4.442632
        -0x3fee4938151a4378L    # -4.428497
        -0x3fee57ab7564302bL    # -4.414385
        -0x3fee6618ce2d1f1dL    # -4.400296
        -0x3fee74801f75104dL    # -4.38623
        -0x3fee82e1ac57e23fL    # -4.372186
        -0x3fee913d31b9b670L    # -4.358165
        -0x3fee9f92af9a8cdfL    # -4.344167
        -0x3feeade26916440fL    # -4.330191
        -0x3feebc2c1b10fd7eL    # -4.316238
        -0x3feeca7008a697afL    # -4.302307
        -0x3feed8adeebb341eL    # -4.288399
        -0x3feee6e653868fd2L    # -4.274512
        -0x3feef518b0d0edc4L    # -4.260648
        -0x3fef034549b62c77L    # -4.246806
        -0x3fef116c1e364becL    # -4.232986
        -0x3fef1f8d2e514c23L    # -4.219188
        -0x3fef2da87a072d1bL    # -4.205412
        -0x3fef3bbe0157eed4L    # -4.191658
        -0x3fef49ce075f6fd2L    # -4.177925
        -0x3fef57d84901d191L    # -4.164214
        -0x3fef65dcc63f1412L    # -4.150525
        -0x3fef73dbc23315d7L    # -4.136857
        -0x3fef81d53cddd6e0L    # -4.12321
        -0x3fef8fc8b0079a28L    # -4.109586
        -0x3fef9db6e503fb37L    # -4.095982
        -0x3fefab9f559b3d08L    # -4.0824
        -0x3fefb98244e93e1dL    # -4.068839
        -0x3fefc75fb2edfe76L    # -4.055299
        -0x3fefd5379fa97e13L    # -4.04178
        -0x3fefe30a0b1bbcf5L    # -4.028282
        -0x3feff0d6f544bb1bL    # -4.014805
        -0x3feffe9e5e247885L    # -4.001349
        -0x3ff018c08b75ea68L    # -3.987914
        -0x3ff03439de481f54L    # -3.974499
        -0x3ff04fa82e87d2c8L    # -3.961105
        -0x3ff06b0b7c3504c5L    # -3.947732
        -0x3ff086644d877250L    # -3.934379
        -0x3ff0a1b21c475e63L    # -3.921047
        -0x3ff0bcf4e874c900L    # -3.907736
        -0x3ff0d82dbe7f2c30L    # -3.894444
        -0x3ff0f35b91f70de9L    # -3.881173
        -0x3ff10e7ee9142b30L    # -3.867922
        -0x3ff129973d9ec700L    # -3.854692
        -0x3ff144a59c065b64L    # -3.841481
        -0x3ff15fa8f7db6e50L    # -3.828291
        -0x3ff17aa25d8d79d1L    # -3.81512
        -0x3ff19590c0ad03daL    # -3.80197
        -0x3ff1b0752da98677L    # -3.788839
        -0x3ff1cb4e9813879cL    # -3.775729
        -0x3ff1e61e0c5a8156L    # -3.762638
        -0x3ff200e38a7e73a3L    # -3.749566
        -0x3ff21b9e060fe47aL    # -3.736515
        -0x3ff2364f11b60ae9L    # -3.723482
        -0x3ff250f51ac9afe2L    # -3.71047
        -0x3ff26b912dba4d6eL    # -3.697477
        -0x3ff286234a87e38fL    # -3.684503
        -0x3ff2a0aaeafab53dL    # -3.671549
        -0x3ff2bb28954a7f80L    # -3.658614
        -0x3ff2d59c49774257L    # -3.645698
        -0x3ff2f0060780fdc1L    # -3.632801
        -0x3ff30a65492ff4baL    # -3.619924
        -0x3ff324bb1af3a14dL    # -3.607065
        -0x3ff33f06705c896eL    # -3.594226
        -0x3ff3594855da2728L    # -3.581405
        -0x3ff3737fbefd0071L    # -3.568604
        -0x3ff38dadb8348f54L    # -3.555821
        -0x3ff3a7d1bb4916caL    # -3.543057
        -0x3ff3c1ebc83a96d5L    # -3.530312
        -0x3ff3dbfc6540cc79L    # -3.517585
        -0x3ff3f6030c23fab1L    # -3.504877
        -0x3ff40fffbce4217dL    # -3.492188
        -0x3ff429f2fdb8fde3L    # -3.479517
        -0x3ff443dccea28fe2L    # -3.466864
        -0x3ff45dbca9691a76L    # -3.45423
        -0x3ff477928e0c9d9dL    # -3.441615
        -0x3ff4915f88fc9364L    # -3.429017
        -0x3ff4ab228dc981bfL    # -3.416438
        -0x3ff4c4dc22ab25b3L    # -3.403877
        -0x3ff4de8c47a17f41L    # -3.391334
        -0x3ff4f8327674d163L    # -3.37881
        -0x3ff511cfbb949625L    # -3.366303
        -0x3ff52b6390c91080L    # -3.353814
        -0x3ff544ed6fda836fL    # -3.341344
        -0x3ff55e6e653868fdL    # -3.328891
        -0x3ff577e5eaab0425L    # -3.316456
        -0x3ff59154866a11edL    # -3.304038
        -0x3ff5aab92c061848L    # -3.291639
        -0x3ff5c414e7ee9143L    # -3.279257
        -0x3ff5dd6733ebbfd7L    # -3.266893
        -0x3ff5f6b09635610bL    # -3.254546
        -0x3ff60ff08893b7d8L    # -3.242217
        -0x3ff62927913e8145L    # -3.229905
        -0x3ff6425529fe004bL    # -3.217611
        -0x3ff65b79d909f1f1L    # -3.205334
        -0x3ff674959e625636L    # -3.193074
        -0x3ff68da7f3cf7015L    # -3.180832
        -0x3ff6a6b15f88fc93L    # -3.168607
        -0x3ff6bfb1e18efbb1L    # -3.156399
        -0x3ff6d8a8f3a9b068L    # -3.144209
        -0x3ff6f197a24894c4L    # -3.132035
        -0x3ff70a7d6733ebc0L    # -3.119878
        -0x3ff72359bc33f855L    # -3.107739
        -0x3ff73c2dadb8348fL    # -3.095616
        -0x3ff754f8b588e369L    # -3.08351
        -0x3ff76dbad3a604e2L    # -3.071421
        -0x3ff78674080f98faL    # -3.059349
        -0x3ff79f2452c59fb2L    # -3.047294
        -0x3ff7b7cc39ffd60fL    # -3.035255
        -0x3ff7d06b37867f0bL    # -3.023233
        -0x3ff7e9014b599aa6L    # -3.011228
        -0x3ff8018efbb0e5e6L    # -2.999239
        -0x3ff81a13c254a3c6L    # -2.987267
        -0x3ff83290257c914bL    # -2.975311
        -0x3ff84b039ef0f16fL    # -2.963372
        -0x3ff8636eb4e98138L    # -2.951449
        -0x3ff87bd1676640a7L    # -2.939542
        -0x3ff8942b302f72b4L    # -2.927652
        -0x3ff8ac7c957cd467L    # -2.915778
        -0x3ff8c4c5974e65bfL    # -2.90392
        -0x3ff8dd0635a426bbL    # -2.892078
        -0x3ff8f53e707e175dL    # -2.880252
        -0x3ff90d6dc1a47a9eL    # -2.868443
        -0x3ff925953586ca8aL    # -2.856649
        -0x3ff93db3bfb58d15L    # -2.844872
        -0x3ff955ca6ca03c4bL    # -2.83311
        -0x3ff96dd82fd75e20L    # -2.821365
        -0x3ff985de15ca6ca0L    # -2.809635
        -0x3ff99ddb9841aac5L    # -2.797921
        -0x3ff9b5d0b73d188fL    # -2.786223
        -0x3ff9cdbdf8f47304L    # -2.77454
        -0x3ff9e5a250f84018L    # -2.762874
        -0x3ff9fd7ecbb7f9d7L    # -2.751223
        -0x3ffa15536933a040L    # -2.739587
        -0x3ffa2d1fa333764fL    # -2.727967
        -0x3ffa44e379b77c03L    # -2.716363
        -0x3ffa5c9f72f76e61L    # -2.704774
        -0x3ffa74538ef34d6aL    # -2.6932
        -0x3ffa8bff47735c18L    # -2.681642
        -0x3ffaa3a29c779a6bL    # -2.6701
        -0x3ffabb3e9a6f826fL    # -2.658572
        -0x3ffad2d234eb9a17L    # -2.64706
        -0x3ffaea5df2239e6bL    # -2.635563
        -0x3ffb01e14bdfd263L    # -2.624082
        -0x3ffb195d4e8fb00cL    # -2.612615
        -0x3ffb30d0edc3bd5aL    # -2.601164
        -0x3ffb483d35eb7458L    # -2.589727
        -0x3ffb5fa11a975afbL    # -2.578306
        -0x3ffb76fd21ff2e49L    # -2.5669
        -0x3ffb8e51d25aab47L    # -2.555508
        -0x3ffba59e1f3a57ebL    # -2.544132
        -0x3ffbbce3150dae3eL    # -2.53277
        -0x3ffbd41fa7653437L    # -2.521424
        -0x3ffbeb54e2b063e0L    # -2.510092
        -0x3ffc028240b78034L    # -2.498775
        -0x3ffc19a847b24639L    # -2.487472
        -0x3ffc30c5eb313be2L    # -2.476185
        -0x3ffc47dc37a3db3cL    # -2.464912
        -0x3ffc5eeb2d0a2446L    # -2.453653
        -0x3ffc75f2452c59fbL    # -2.442409
        -0x3ffc8cf1800a7c5bL    # -2.43118
        -0x3ffca3e963dc486bL    # -2.419965
        -0x3ffcbad96a6a0126L    # -2.408765
        -0x3ffcd1c219eb6391L    # -2.397579
        -0x3ffce8a372606facL    # -2.386407
        -0x3ffcff7ced916873L    # -2.37525
        -0x3ffd164f11b60ae9L    # -2.364107
        -0x3ffd2d19dece5711L    # -2.352978
        -0x3ffd43dccea28fe2L    # -2.341864
        -0x3ffd5a98676a7265L    # -2.330764
        -0x3ffd714ca925fe97L    # -2.319678
        -0x3ffd87f993d5347aL    # -2.308606
        -0x3ffd9e9f2778140eL    # -2.297548
        -0x3ffdb53d640e9d52L    # -2.286504
        -0x3ffdcbd3c3611340L    # -2.275475
        -0x3ffde26351deefe5L    # -2.264459
        -0x3ffdf8eb8950763aL    # -2.253457
        -0x3ffe0f6c69b5a640L    # -2.242469
        -0x3ffe25e56cd6c2f0L    # -2.231496
        -0x3ffe3c58255b035cL    # -2.220535
        -0x3ffe52c3009b3073L    # -2.209589
        -0x3ffe692684cf073aL    # -2.198657
        -0x3ffe7f83382e44b7L    # -2.187738
        -0x3ffe95d894812be5L    # -2.176833
        -0x3ffeac271fff79c8L    # -2.165941
        -0x3ffec26dce39b457L    # -2.155064
        -0x3ffed8ae31d712a1L    # -2.144199
        -0x3ffeeee6b8305d96L    # -2.133349
        -0x3fff05186db50f41L    # -2.122512
        -0x3fff1b43526527a2L    # -2.111688
        -0x3fff3166e008e9b4L    # -2.100878
        -0x3fff478316a05575L    # -2.090082
        -0x3fff5d99029ae4f3L    # -2.079298
        -0x3fff73a797891e21L    # -2.068528
        -0x3fff89aed56b0100L    # -2.057772
        -0x3fff9faf42784a94L    # -2.047029
        -0x3fffb5a8deb0fadfL    # -2.036299
        -0x3fffcb9baa1511e0L    # -2.025582
        -0x3fffe1871e6cd291L    # -2.014879
        -0x3ffff76c4827b6feL    # -2.004188
        -0x40001a9435ac8a37L    # -1.993511
        -0x40004642396073deL    # -1.982847
        -0x400071e29b6b2af1L    # -1.972196
        -0x40009d755bccaf71L    # -1.961558
        -0x4000c8fa7a85015cL    # -1.950933
        -0x4000f471f79420b4L    # -1.940321
        -0x40011fdbd2fa0d78L    # -1.929722
        -0x40014b380cb6c7a8L    # -1.919136
        -0x40017686a4ca4f44L    # -1.908563
        -0x4001a1c8a7a41e58L    # -1.898002
        -0x4001ccfbfc6540ccL    # -1.887455
        -0x4001f822bbecaab9L    # -1.87692
        -0x4002233bd9cae211L    # -1.866398
        -0x40024e4755ffe6d6L    # -1.855889
        -0x400279463cfb3312L    # -1.845392
        -0x4002a43675ddd2afL    # -1.834909
        -0x4002cf1b25f633ceL    # -1.824437
        -0x4002f9f127f5e84fL    # -1.813979
        -0x400324ba94bbe447L    # -1.803533
        -0x40034f776c4827b7L    # -1.793099
        -0x40037a26a22b3893L    # -1.782678
        -0x4003a4c8366516dbL    # -1.77227
        -0x4003cf5d35653c9bL    # -1.761874
        -0x4003f9e59f2ba9d2L    # -1.75149
        -0x400424606748e475L    # -1.741119
        -0x40044ece9a2c6690L    # -1.73076
        -0x4004793037d63023L    # -1.720413
        -0x4004a38433d6c722L    # -1.710079
        -0x4004cdcb9a9da598L    # -1.699757
        -0x4004f8055fbb517aL    # -1.689448
        -0x400522339c0ebee0L    # -1.67915
        -0x40054c5436b8f9b1L    # -1.668865
        -0x400576683c297bfaL    # -1.658592
        -0x4005a06fac6045bbL    # -1.648331
        -0x4005ca6a875d56f3L    # -1.638082
        -0x4005f458cd20afa3L    # -1.627845
        -0x40061e39713ad5bfL    # -1.617621
        -0x4006480e8c8abd5eL    # -1.607408
        -0x400671d712a0ec74L    # -1.597207
        -0x40069b91f70de8f7L    # -1.587019
        -0x4006c54152b0a6fcL    # -1.576842
        -0x4006eee41919ac79L    # -1.566677
        -0x4007187a4a48f96eL    # -1.556524
        -0x40074203e63e8ddaL    # -1.546383
        -0x40076b81f969e3c9L    # -1.536253
        -0x400794f26aec0725L    # -1.526136
        -0x4007be5753a3ec03L    # -1.51603
        -0x4007e7afa7221859L    # -1.505936
        -0x400810fb65668c26L    # -1.495854
        -0x40083a3b9ae0c176L    # -1.485783
        -0x4008636f3b213e3eL    # -1.475724
        -0x40088c964628027eL    # -1.465677
        -0x4008b5b1c8648840L    # -1.455641
        -0x4008dec0b567557aL    # -1.445617
        -0x400907c30d306a2bL    # -1.435605
        -0x400930b9dc2f405fL    # -1.425604
        -0x400959a52263d817L    # -1.415614
        -0x40098283d35eb745L    # -1.405636
        -0x4009ab56fb8f57f7L    # -1.395669
        -0x4009d41d8e864021L    # -1.385714
        -0x4009fcd898b2e9cdL    # -1.37577
        -0x400a25870da5daf0L    # -1.365838
        -0x400a4e29f9ce8d97L    # -1.355917
        -0x400a76c15d2d01c1L    # -1.346007
        -0x400a9f4c2b51bd62L    # -1.336109
        -0x400ac7cb70ac3a86L    # -1.326222
        -0x400af03f2d3c792dL    # -1.316346
        -0x400b18a761027957L    # -1.306481
        -0x400b41040bfe3b04L    # -1.296627
        -0x400b695421c04428L    # -1.286785
        -0x400b9198aeb80ed0L    # -1.276954
        -0x400bb9d1b2e59afaL    # -1.267134
        -0x400be1ff2e48e8a7L    # -1.257325
        -0x400c0a2120e1f7d7L    # -1.247527
        -0x400c32378ab0c88aL    # -1.23774
        -0x400c5a426bb55ac0L    # -1.227964
        -0x400c8241c3efae79L    # -1.218199
        -0x400caa35935fc3b5L    # -1.208445
        -0x400cd21dda059a74L    # -1.198702
        -0x400cf9fa97e132b5L    # -1.18897
        -0x400d21cbccf28c7aL    # -1.179249
        -0x400d499285a921cdL    # -1.169538
        -0x400d714ca925fe97L    # -1.159839
        -0x400d98fc504816f0L    # -1.15015
        -0x400dc0a06e9ff0ccL    # -1.140472
        -0x400de839042d8c2aL    # -1.130805
        -0x400e0fc610f0e90cL    # -1.121149
        -0x400e3748a159817cL    # -1.111503
        -0x400e5ebfa8f7db6eL    # -1.101868
        -0x400e862b27cbf6e4L    # -1.092244
        -0x400ead8b1dd5d3ddL    # -1.082631
        -0x400ed4e09784ec63L    # -1.073028
        -0x400efc2b94d94079L    # -1.063435
        -0x400f236b09635611L    # -1.053853
        -0x400f4a9ef5232d2cL    # -1.044282
        -0x400f71c864883fd5L    # -1.034721
        -0x400f98e64b231401L    # -1.025171
        -0x400fbff8a8f3a9b0L    # -1.015632
        -0x400fe70196d8f4f9L    # -1.006102
        -0x40101bfbdf090f73L    # -0.996584
        -0x401069e1b089a027L    # -0.987075
        -0x4010b7b07075b3e1L    # -0.977577
        -0x401105681ecd4aa1L    # -0.96809
        -0x4011530ced4e4c94L    # -0.958612
        -0x4011a098915bdd76L    # -0.949146
        -0x4011ee115592d98cL    # -0.939689
        -0x40123b73083558a7L    # -0.930243
        -0x401288bfc2224edfL    # -0.920807
        -0x4012d5f78359bc34L    # -0.911381
        -0x4013231a4bdba0a5L    # -0.901965
        -0x4013702602c9081cL    # -0.89256
        -0x4013bd1ed9dfdac7L    # -0.883164
        -0x40140a009f623077L    # -0.873779
        -0x401456cd6c2efd44L    # -0.864404
        -0x4014a38327674d16L    # -0.85504
        -0x4014f02602c9081cL    # -0.845685
        -0x40153cb3e5753a3fL    # -0.83634
        -0x4015892ab68cef67L    # -0.827006
        -0x4015d58ea7ce0fc3L    # -0.817681
        -0x401621dda059a73bL    # -0.808366
        -0x40166e158750c1b9L    # -0.799062
        -0x4016ba3a8e71476bL    # -0.789767
        -0x4017064a9cdc4439L    # -0.780482
        -0x40175245b291b824L    # -0.771207
        -0x40179e2bcf91a32bL    # -0.761942
        -0x4017e9fcf3dc054fL    # -0.752687
        -0x401835b91f70de8fL    # -0.743442
        -0x4018816052502eecL    # -0.734207
        -0x4018ccf4a558ea7dL    # -0.724981
        -0x40191873ffac1d2aL    # -0.715765
        -0x401963de6149c6f3L    # -0.706559
        -0x4019af33ca31e7daL    # -0.697363
        -0x4019fa76534373f3L    # -0.688176
        -0x401a45a1cac08312L    # -0.679
        -0x401a90bc7b45f17cL    # -0.669832
        -0x401adbc01a36e2ebL    # -0.660675
        -0x401b26b0d9513f8eL    # -0.651527
        -0x401b718c9fb6134dL    # -0.642389
        -0x401bbc558644523fL    # -0.63326
        -0x401c0709741d084fL    # -0.624141
        -0x401c51a86940357aL    # -0.615032
        -0x401c9c347e8ccdd9L    # -0.605932
        -0x401ce6adb402d16cL    # -0.596841
        -0x401d3111f0c34c1bL    # -0.58776
        -0x401d7b6134ce3de6L    # -0.578689
        -0x401dc59d99029ae5L    # -0.569627
        -0x401e0fc71d606317L    # -0.560574
        -0x401e59dba908a266L    # -0.551531
        -0x401ea3db3bfb58d1L    # -0.542498
        -0x401eedca07f66e87L    # -0.533473
        -0x401f37a3db3bfb59L    # -0.524458
        -0x401f8168b5cbff47L    # -0.515453
        -0x401fcb1ab0856e69L    # -0.506457
        -0x4020297396d0917dL    # -0.49747
        -0x4020bc8c0ce91c8fL    # -0.488492
        -0x40214f7a919695d9L    # -0.479524
        -0x4021e2478854cdb8L    # -0.470564
        -0x402274e65bea0ba2L    # -0.461615
        -0x40230763a1900820L    # -0.452674
        -0x402399bb2788db05L    # -0.443742
        -0x40242be8bc169c24L    # -0.43482
        -0x4024bdf090f733a9L    # -0.425907
        -0x40254fd2a62aa194L    # -0.417003
        -0x4025e18efbb0e5e6L    # -0.408108
        -0x40267325918a009fL    # -0.399222
        -0x4027049667b5f1bfL    # -0.390345
        -0x402795dd4c76d118L    # -0.381478
        -0x40282702a3486f05L    # -0.372619
        -0x4028b8023a6ce358L    # -0.363769
        -0x402948d7e02645e5L    # -0.354929
        -0x4029d98bf7f06706L    # -0.346097
        -0x402a6a161e4f7660L    # -0.337275
        -0x402afa7eb6bf444eL    # -0.328461
        -0x402b8ac18f81e8a3L    # -0.319656
        -0x402c1adea897635eL    # -0.31086
        -0x402caad601ffb481L    # -0.302073
        -0x402d3aa79bbadc0aL    # -0.293295
        -0x402dca5375c8d9f9L    # -0.284526
        -0x402e59d99029ae4fL    # -0.275766
        -0x402ee93e1c9b413aL    # -0.267014
        -0x402f787ce95faa8bL    # -0.258271
        -0x40300f2389720429L    # -0.249538
        -0x40312d1287c200c1L    # -0.240812
        -0x40324aada33bd9cbL    # -0.232096
        -0x40336805a2d72ffdL    # -0.223388
        -0x40348512231832fdL    # -0.214689
        -0x4035a1d323fee2caL    # -0.205999
        -0x4036be48a58b3f64L    # -0.197318
        -0x4037da7b0b391926L    # -0.188645
        -0x4038f66a55087011L    # -0.17998
        -0x403a1205bc01a36eL    # -0.171325
        -0x403b2d5e071c53f4L    # -0.162678
        -0x403c486ad2dcb146L    # -0.15404
        -0x403d633482be8bc1L    # -0.14541
        -0x403e7dbb16c1e365L    # -0.136788
        -0x403f97edc7ef177aL    # -0.128176
        -0x404163baba7b9171L    # -0.119572
        -0x40439713ad5bee3dL    # -0.110976
        -0x4045c9d5a187a4a5L    # -0.102389
        -0x4047fc115df6555cL    # -0.09381
        -0x404a2db61bb05fafL    # -0.08524
        -0x404c5ed4a1ad6452L    # -0.076678
        -0x404e8f5c28f5c28fL    # -0.068125
        -0x40517ebaf102363bL    # -0.05958
        -0x4055dd8f92af9a8dL    # -0.051044
        -0x405a3b7952d234ecL    # -0.042515
        -0x405e9813879c4114L    # -0.033996
        -0x4065e785b5b70692L    # -0.025484
        -0x406e9c886162f167L    # -0.016981
        -0x407e9ee45c358afcL    # -0.008486
    .end array-data
.end method

.method private a(DI)D
    .locals 21

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v4

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    aget-wide v2, v2, p3

    sub-double v2, v6, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    aput-wide v6, v2, p3

    .line 225
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    aget-wide v2, v2, p3

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->r:[D

    aget-wide v4, v2, p3

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->s:[D

    aget-wide v8, v2, p3

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->q:[D

    aget-wide v10, v2, p3

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->p:[D

    aget-wide v2, v2, p3

    .line 241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    aget-wide v12, v12, p3

    sub-double v12, v6, v12

    .line 243
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fiio/music/widget/PointerTable2;->t:D

    neg-double v14, v14

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    mul-double/2addr v14, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fiio/music/widget/PointerTable2;->u:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    add-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v4, v14

    sub-double v4, v4, p1

    .line 244
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fiio/music/widget/PointerTable2;->t:D

    neg-double v14, v14

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    mul-double/2addr v14, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fiio/music/widget/PointerTable2;->t:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fiio/music/widget/PointerTable2;->u:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v8

    add-double v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/fiio/music/widget/PointerTable2;->u:D

    move-wide/from16 v18, v0

    mul-double v8, v8, v18

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    add-double v8, v8, v16

    mul-double/2addr v8, v14

    .line 245
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/fiio/music/widget/PointerTable2;->t:D

    add-double/2addr v8, v14

    div-double v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 246
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v10, v10, v14

    if-gez v10, :cond_1

    .line 252
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/fiio/music/widget/PointerTable2;->t:D

    neg-double v4, v4

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/fiio/music/widget/PointerTable2;->u:D

    mul-double/2addr v10, v12

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    add-double v4, v4, p1

    .line 255
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    aput-wide v6, v10, p3

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fiio/music/widget/PointerTable2;->p:[D

    aput-wide v2, v6, p3

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->r:[D

    aput-wide p1, v2, p3

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->q:[D

    aput-wide v8, v2, p3

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->s:[D

    aput-wide v12, v2, p3

    move-wide/from16 p1, v4

    .line 275
    :goto_1
    return-wide p1

    .line 249
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double v2, v4, v2

    goto :goto_0

    .line 263
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->o:[D

    aput-wide v6, v2, p3

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->p:[D

    const-wide/high16 v4, -0x3fc7000000000000L    # -25.0

    aput-wide v4, v2, p3

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->r:[D

    const-wide v4, -0x3fae800000000000L    # -70.0

    aput-wide v4, v2, p3

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->q:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v2, p3

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fiio/music/widget/PointerTable2;->s:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v2, p3

    goto :goto_1
.end method

.method private static a(FFFF)I
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const-wide v10, 0x4056800000000000L    # 90.0

    .line 300
    .line 301
    sub-float v2, p1, p1

    float-to-double v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p0

    sub-float/2addr v4, p0

    float-to-double v4, v4

    div-double/2addr v2, v4

    .line 302
    sub-float v4, p3, p1

    float-to-double v4, v4

    sub-float v6, p2, p0

    float-to-double v6, v6

    div-double/2addr v4, v6

    .line 303
    sub-double v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    add-double/2addr v2, v8

    div-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    .line 304
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 305
    const-wide v0, -0x3fb7800000000000L    # -49.0

    .line 322
    :cond_0
    :goto_0
    double-to-int v0, v0

    return v0

    .line 307
    :cond_1
    cmpl-float v4, p2, p0

    if-lez v4, :cond_2

    cmpg-float v4, p3, p1

    if-gez v4, :cond_2

    .line 308
    sub-double v0, v10, v2

    .line 309
    goto :goto_0

    :cond_2
    cmpl-float v4, p2, p0

    if-lez v4, :cond_3

    cmpl-float v4, p3, p1

    if-lez v4, :cond_3

    .line 311
    add-double v0, v10, v2

    .line 312
    goto :goto_0

    :cond_3
    cmpg-float v4, p2, p0

    if-gez v4, :cond_4

    cmpl-float v4, p3, p1

    if-lez v4, :cond_4

    .line 313
    add-double v0, v10, v2

    .line 314
    goto :goto_0

    :cond_4
    cmpg-float v4, p2, p0

    if-gez v4, :cond_5

    cmpg-float v4, p3, p1

    if-gez v4, :cond_5

    .line 315
    sub-double v0, v2, v10

    .line 316
    goto :goto_0

    :cond_5
    cmpl-float v2, p2, p0

    if-nez v2, :cond_0

    cmpg-float v2, p3, p1

    if-gez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final a(FF)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x40e0000000000000L    # 32768.0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 280
    float-to-double v0, p1

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Lcom/fiio/music/widget/PointerTable2;->a(D)D

    move-result-wide v0

    .line 281
    float-to-double v2, p2

    div-double/2addr v2, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/fiio/music/widget/PointerTable2;->a(D)D

    move-result-wide v2

    .line 282
    const/4 v4, 0x0

    invoke-direct {p0, v0, v1, v4}, Lcom/fiio/music/widget/PointerTable2;->a(DI)D

    move-result-wide v0

    .line 283
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/fiio/music/widget/PointerTable2;->a(DI)D

    move-result-wide v2

    .line 284
    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0xf0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->d:I

    .line 285
    double-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0xf0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->c:I

    .line 286
    invoke-virtual {p0}, Lcom/fiio/music/widget/PointerTable2;->invalidate()V

    .line 288
    return-void
.end method

.method public getFromDegrees()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->m:F

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->k:F

    .line 136
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->k:F

    return v0
.end method

.method public getFromwDegrees()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->n:F

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->l:F

    .line 140
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->l:F

    return v0
.end method

.method public getToDegrees()F
    .locals 5

    .prologue
    .line 149
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    iget-object v2, p0, Lcom/fiio/music/widget/PointerTable2;->y:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/fiio/music/widget/PointerTable2;->y:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/widget/PointerTable2;->a(FFFF)I

    move-result v0

    .line 151
    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->m:F

    .line 152
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->m:F

    return v0
.end method

.method public getTowDegrees()F
    .locals 5

    .prologue
    .line 156
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    iget-object v2, p0, Lcom/fiio/music/widget/PointerTable2;->z:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/fiio/music/widget/PointerTable2;->z:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/widget/PointerTable2;->a(FFFF)I

    move-result v0

    .line 158
    int-to-float v0, v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->n:F

    .line 159
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->n:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x43700000    # 240.0f

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    iget-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 93
    invoke-virtual {p0}, Lcom/fiio/music/widget/PointerTable2;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->a:I

    .line 94
    invoke-virtual {p0}, Lcom/fiio/music/widget/PointerTable2;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->b:I

    .line 95
    iget-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->x:[F

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->a:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v1, v2

    aput v1, v0, v7

    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    .line 96
    iget-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->x:[F

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->b:I

    int-to-float v1, v1

    aput v1, v0, v8

    iput v1, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    .line 97
    iget-boolean v0, p0, Lcom/fiio/music/widget/PointerTable2;->D:Z

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    iget v2, p0, Lcom/fiio/music/widget/PointerTable2;->E:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    iget v3, p0, Lcom/fiio/music/widget/PointerTable2;->E:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fiio/music/widget/PointerTable2;->e:F

    iget v4, p0, Lcom/fiio/music/widget/PointerTable2;->E:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fiio/music/widget/PointerTable2;->f:F

    iget v5, p0, Lcom/fiio/music/widget/PointerTable2;->E:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 99
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->F:Landroid/graphics/Path;

    .line 100
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->F:Landroid/graphics/Path;

    const/high16 v2, -0x3cf50000    # -139.0f

    const/high16 v3, 0x42c40000    # 98.0f

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 101
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->F:Landroid/graphics/Path;

    invoke-direct {v0, v1, v7}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->G:Landroid/graphics/PathMeasure;

    .line 102
    iget-object v0, p0, Lcom/fiio/music/widget/PointerTable2;->G:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->H:F

    .line 103
    iput-boolean v8, p0, Lcom/fiio/music/widget/PointerTable2;->D:Z

    .line 106
    :cond_0
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->c:I

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->J:I

    iget v2, p0, Lcom/fiio/music/widget/PointerTable2;->K:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->K:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->J:I

    .line 107
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->d:I

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->I:I

    iget v2, p0, Lcom/fiio/music/widget/PointerTable2;->K:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->K:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/fiio/music/widget/PointerTable2;->I:I

    .line 108
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->J:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->H:F

    mul-float/2addr v0, v1

    .line 109
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->G:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/fiio/music/widget/PointerTable2;->y:[F

    invoke-virtual {v1, v0, v2, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 110
    iget v0, p0, Lcom/fiio/music/widget/PointerTable2;->I:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget v1, p0, Lcom/fiio/music/widget/PointerTable2;->H:F

    mul-float/2addr v0, v1

    .line 111
    iget-object v1, p0, Lcom/fiio/music/widget/PointerTable2;->G:Landroid/graphics/PathMeasure;

    iget-object v2, p0, Lcom/fiio/music/widget/PointerTable2;->z:[F

    invoke-virtual {v1, v0, v2, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
