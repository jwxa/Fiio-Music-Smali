.class public Lcom/audlabs/vipereffect/screen/PlaybackFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "PlaybackFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field mIVKnobPoint:Landroid/widget/ImageView;

.field mMultiFactorVals:[Ljava/lang/String;

.field mMultiFactors:[Ljava/lang/String;

.field mOutputVals:[Ljava/lang/String;

.field mOutputs:[Ljava/lang/String;

.field mRatioVals:[Ljava/lang/String;

.field mRatios:[Ljava/lang/String;

.field mSbPlaybackMaxgain:Landroid/widget/SeekBar;

.field mSbPlaybackOutput:Landroid/widget/SeekBar;

.field mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvModeExtreme:Landroid/widget/TextView;

.field mTvModeModerate:Landroid/widget/TextView;

.field mTvModeSlight:Landroid/widget/TextView;

.field mTvPlaybackMaxgainVal:Landroid/widget/TextView;

.field mTvPlaybackOutputVal:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerY:F

    return v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatioVals:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatios:[Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mOutputs:[Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mOutputVals:[Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mMultiFactors:[Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mMultiFactorVals:[Ljava/lang/String;

    .line 74
    const v0, 0x7f0b0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 75
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0b0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvModeSlight:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvModeModerate:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0b0149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvModeExtreme:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0b014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvPlaybackMaxgainVal:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0b014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mSbPlaybackMaxgain:Landroid/widget/SeekBar;

    .line 84
    const v0, 0x7f0b014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvPlaybackOutputVal:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0b014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mSbPlaybackOutput:Landroid/widget/SeekBar;

    .line 87
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvModeSlight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatios:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvModeModerate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatios:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvModeExtreme:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatios:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 92
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 93
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43070000    # 135.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 94
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43610000    # 225.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    .line 97
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerX:F

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerY:F

    .line 101
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ak;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ak;-><init>(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 119
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mSbPlaybackMaxgain:Landroid/widget/SeekBar;

    new-instance v1, Lcom/audlabs/vipereffect/screen/al;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/al;-><init>(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mSbPlaybackOutput:Landroid/widget/SeekBar;

    new-instance v1, Lcom/audlabs/vipereffect/screen/am;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/am;-><init>(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 165
    return-void
.end method

.method private updateUi()V
    .locals 6

    .prologue
    const/high16 v5, 0x43610000    # 225.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x43070000    # 135.0f

    .line 168
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.playbackgain.ratio"

    const-string v2, "50"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatioVals:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerX:F

    iget v2, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerY:F

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 171
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 172
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mMultiFactorVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.playbackgain.maxscaler"

    const-string v3, "400"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mSbPlaybackMaxgain:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 184
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvPlaybackMaxgainVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mMultiFactors:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mOutputVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.playbackgain.volume"

    const-string v3, "80"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mSbPlaybackOutput:Landroid/widget/SeekBar;

    neg-int v2, v0

    add-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 187
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvPlaybackOutputVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mOutputs:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatioVals:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerX:F

    iget v2, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerY:F

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 175
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 176
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v4}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mRatioVals:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerX:F

    iget v2, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->centerY:F

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 179
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 180
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTrbPlaybackEffect:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v5}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 58
    const v0, 0x7f04006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->setUpUi(Landroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->updateUi()V

    .line 61
    return-object v0
.end method
