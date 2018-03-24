.class public Lcom/audlabs/vipereffect/screen/VClarityFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "VClarityFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field mIVKnobPoint:Landroid/widget/ImageView;

.field mRbModeNatural:Landroid/widget/RadioButton;

.field mRbModeOzone:Landroid/widget/RadioButton;

.field mRbModeXhifi:Landroid/widget/RadioButton;

.field mRgVclartyMode:Landroid/widget/RadioGroup;

.field mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvClartyVal:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;

.field vclartyBoostVals:[Ljava/lang/String;

.field vclartyBoosts:[Ljava/lang/String;

.field vclartyMode:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/VClarityFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/VClarityFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/VClarityFragment;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/VClarityFragment;)F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->centerY:F

    return v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    const v0, 0x7f0b016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRgVclartyMode:Landroid/widget/RadioGroup;

    .line 73
    const v0, 0x7f0b016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeNatural:Landroid/widget/RadioButton;

    .line 74
    const v0, 0x7f0b0170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeOzone:Landroid/widget/RadioButton;

    .line 75
    const v0, 0x7f0b0171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeXhifi:Landroid/widget/RadioButton;

    .line 77
    const v0, 0x7f0b0173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTvClartyVal:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b0174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 79
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyMode:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyBoosts:[Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyBoostVals:[Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeNatural:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyMode:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeOzone:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyMode:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeXhifi:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyMode:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRgVclartyMode:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/audlabs/vipereffect/screen/aq;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/aq;-><init>(Lcom/audlabs/vipereffect/screen/VClarityFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->matrix:Landroid/graphics/Matrix;

    .line 109
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->centerX:F

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->centerY:F

    .line 113
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 114
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 115
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 116
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x439d8000    # 315.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 118
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/ar;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/ar;-><init>(Lcom/audlabs/vipereffect/screen/VClarityFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 138
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 141
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeNatural:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyBoostVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.fidelity.clarity.gain"

    const-string v3, "50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTvClartyVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->vclartyBoosts:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mTrbClarty:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v2, v0, 0x1e

    add-int/lit8 v2, v2, 0x2d

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 153
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x2d

    int-to-float v0, v0

    iget v2, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->centerX:F

    iget v3, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->centerY:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 154
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 155
    return-void

    .line 144
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeOzone:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeXhifi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/audlabs/vipereffect/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f04006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->setUpUi(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->updateUi()V

    .line 68
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;->onDestroy()V

    .line 56
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;->onDestroyView()V

    .line 61
    return-void
.end method
