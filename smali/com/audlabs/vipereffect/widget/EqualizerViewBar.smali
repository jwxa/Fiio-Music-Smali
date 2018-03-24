.class public Lcom/audlabs/vipereffect/widget/EqualizerViewBar;
.super Landroid/widget/HorizontalScrollView;
.source "EqualizerViewBar.java"


# instance fields
.field private mBandUpdatedListener:Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

.field private mCenterFreqs:[F

.field private mLevels:[F

.field private mMaxDB:F

.field private mMinDB:F

.field private mNumBands:I

.field private seekBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/audlabs/vipereffect/widget/VerticalSeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    const/high16 v0, -0x3ec00000    # -12.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMinDB:F

    .line 24
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMaxDB:F

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    .line 28
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    .line 29
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mCenterFreqs:[F

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->seekBars:Ljava/util/List;

    .line 37
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->initView()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/high16 v0, -0x3ec00000    # -12.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMinDB:F

    .line 24
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMaxDB:F

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    .line 28
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    .line 29
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mCenterFreqs:[F

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->seekBars:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->initView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/high16 v0, -0x3ec00000    # -12.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMinDB:F

    .line 24
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMaxDB:F

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    .line 28
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    .line 29
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mCenterFreqs:[F

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->seekBars:Ljava/util/List;

    .line 47
    invoke-direct {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->initView()V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->seekBars:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)[F
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mBandUpdatedListener:Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMaxDB:F

    return v0
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMinDB:F

    return v0
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    return v0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 231
    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initView()V
    .locals 15

    .prologue
    const/high16 v14, 0x447a0000    # 1000.0f

    const/high16 v10, 0x41700000    # 15.0f

    const/high16 v13, 0x41e00000    # 28.0f

    const/4 v1, 0x0

    const/4 v12, -0x2

    .line 52
    iget v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mCenterFreqs:[F

    move v0, v1

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 57
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    const/4 v2, -0x1

    invoke-direct {v0, v12, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v10}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v10}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move v0, v1

    .line 68
    :goto_1
    iget v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mNumBands:I

    if-lt v0, v2, :cond_1

    .line 200
    invoke-virtual {p0, v4}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->addView(Landroid/view/View;)V

    .line 202
    return-void

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mCenterFreqs:[F

    const-wide v4, 0x402f400000000000L    # 15.625

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v3, v0, 0x1

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v3, v4

    aput v3, v2, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-direct {p0, v3, v6}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 74
    const/4 v6, -0x1

    .line 75
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 72
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    const/16 v2, 0x11

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 87
    new-instance v6, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    const/4 v3, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 92
    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMaxDB:F

    iget v3, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mMinDB:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setMax(I)V

    .line 95
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    aget v2, v2, v0

    float-to-double v2, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setProgress(I)V

    .line 96
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setBackgroundColor(I)V

    .line 100
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 103
    invoke-direct {v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    aget v2, v2, v0

    float-to-double v2, v2

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-nez v2, :cond_2

    const-string v2, "%.0fdb"

    :goto_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    aget v8, v8, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    invoke-direct {v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mCenterFreqs:[F

    aget v3, v2, v0

    .line 114
    cmpg-float v2, v3, v14

    if-gez v2, :cond_3

    const-string v2, "%.0f"

    :goto_3
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 115
    cmpg-float v10, v3, v14

    if-gez v10, :cond_4

    :goto_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v1

    .line 114
    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v2, Lcom/audlabs/vipereffect/widget/a;

    invoke-direct {v2, p0, v7, v0}, Lcom/audlabs/vipereffect/widget/a;-><init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;Landroid/widget/TextView;S)V

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 138
    new-instance v2, Lcom/audlabs/vipereffect/widget/b;

    invoke-direct {v2, p0}, Lcom/audlabs/vipereffect/widget/b;-><init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)V

    invoke-virtual {v6, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setOnSeekBarChangeListenerStart(Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;)V

    .line 148
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9, v13}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 151
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {p0, v10, v13}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v3, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const v3, 0x7f0202fc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 155
    new-instance v3, Lcom/audlabs/vipereffect/widget/c;

    invoke-direct {v3, p0, v0, v6}, Lcom/audlabs/vipereffect/widget/c;-><init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;SLcom/audlabs/vipereffect/widget/VerticalSeekBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v3, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {p0, v10, v13}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v10

    .line 172
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {p0, v11, v13}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const v9, 0x7f0202fd

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    new-instance v9, Lcom/audlabs/vipereffect/widget/d;

    invoke-direct {v9, p0, v0, v6}, Lcom/audlabs/vipereffect/widget/d;-><init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;SLcom/audlabs/vipereffect/widget/VerticalSeekBar;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v9, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->seekBars:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto/16 :goto_1

    .line 105
    :cond_2
    const-string v2, "%+.1fdb"

    goto/16 :goto_2

    .line 114
    :cond_3
    const-string v2, "%.0fk"

    goto/16 :goto_3

    .line 115
    :cond_4
    div-float/2addr v3, v14

    goto/16 :goto_4
.end method


# virtual methods
.method public setBandUpdatedListener(Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mBandUpdatedListener:Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    .line 219
    return-void
.end method

.method public setBands([F)V
    .locals 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->mLevels:[F

    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/audlabs/vipereffect/widget/e;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/widget/e;-><init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    return-void
.end method
