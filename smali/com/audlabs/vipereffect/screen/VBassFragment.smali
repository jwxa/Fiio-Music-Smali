.class public Lcom/audlabs/vipereffect/screen/VBassFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "VBassFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field mIVKnobPoint:Landroid/widget/ImageView;

.field mPbvBassFreq:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mRbModeNaturalbass:Landroid/widget/RadioButton;

.field mRbModePurebass:Landroid/widget/RadioButton;

.field mRbModeSubwoofer:Landroid/widget/RadioButton;

.field mRgBassMode:Landroid/widget/RadioGroup;

.field mTrbBassFreq:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvBassFreqVal:Landroid/widget/TextView;

.field mTvBassGainVal:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;

.field vbassBoostVals:[Ljava/lang/String;

.field vbassBoosts:[Ljava/lang/String;

.field vbassFreq:[Ljava/lang/String;

.field vbassMode:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/VBassFragment;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/VBassFragment;)F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->centerY:F

    return v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f0b0162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRgBassMode:Landroid/widget/RadioGroup;

    .line 60
    const v0, 0x7f0b0163

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeNaturalbass:Landroid/widget/RadioButton;

    .line 61
    const v0, 0x7f0b0164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModePurebass:Landroid/widget/RadioButton;

    .line 62
    const v0, 0x7f0b0165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeSubwoofer:Landroid/widget/RadioButton;

    .line 64
    const v0, 0x7f0b0167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTvBassFreqVal:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0b0168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassFreq:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 66
    const v0, 0x7f0b0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPbvBassFreq:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 67
    const v0, 0x7f0b016b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTvBassGainVal:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0b016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 69
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassMode:[Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassFreq:[Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoosts:[Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoostVals:[Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeNaturalbass:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassMode:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModePurebass:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassMode:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeSubwoofer:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassMode:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRgBassMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/audlabs/vipereffect/screen/an;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/an;-><init>(Lcom/audlabs/vipereffect/screen/VBassFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassFreq:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 97
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassFreq:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 98
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPbvBassFreq:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 100
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassFreq:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ao;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ao;-><init>(Lcom/audlabs/vipereffect/screen/VBassFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->matrix:Landroid/graphics/Matrix;

    .line 116
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->centerX:F

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->centerY:F

    .line 120
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 121
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 122
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x42610000    # 56.25f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 123
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x4397e000    # 303.75f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 125
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ap;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ap;-><init>(Lcom/audlabs/vipereffect/screen/VBassFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 145
    return-void
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const-wide v8, 0x404c200000000000L    # 56.25

    const-wide v6, 0x4036800000000000L    # 22.5

    const/4 v3, 0x1

    .line 148
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeNaturalbass:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fidelity.bass.freq"

    const-string v2, "40"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTvBassFreqVal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " HZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPbvBassFreq:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 159
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassFreq:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 161
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoostVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.fidelity.bass.gain"

    const-string v3, "50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 162
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoosts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTvBassGainVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoosts:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->matrix:Landroid/graphics/Matrix;

    int-to-double v2, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    double-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 165
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 166
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTrbBassGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    int-to-double v2, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 167
    return-void

    .line 151
    :cond_3
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModePurebass:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 153
    :cond_4
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeSubwoofer:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    const v0, 0x7f04006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->setUpUi(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->updateUi()V

    .line 55
    return-object v0
.end method
