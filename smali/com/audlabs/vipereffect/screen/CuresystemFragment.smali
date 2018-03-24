.class public Lcom/audlabs/vipereffect/screen/CuresystemFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "CuresystemFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field cureCrossfeed:[Ljava/lang/String;

.field mIVKnobPoint:Landroid/widget/ImageView;

.field mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvModeExtreme:Landroid/widget/TextView;

.field mTvModeModerate:Landroid/widget/TextView;

.field mTvModeSlight:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/CuresystemFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/CuresystemFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/CuresystemFragment;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/CuresystemFragment;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->centerY:F

    return v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 47
    const v0, 0x7f0b012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 48
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0b012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTvModeSlight:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTvModeModerate:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0b012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTvModeExtreme:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->cureCrossfeed:[Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTvModeSlight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->cureCrossfeed:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTvModeModerate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->cureCrossfeed:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTvModeExtreme:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->cureCrossfeed:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 61
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 62
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43070000    # 135.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 63
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43610000    # 225.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 65
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->matrix:Landroid/graphics/Matrix;

    .line 66
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->centerX:F

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->centerY:F

    .line 70
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/k;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/k;-><init>(Lcom/audlabs/vipereffect/screen/CuresystemFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 86
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.cure.crossfeed"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 90
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v0, 0x2d

    int-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 91
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 92
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->mTrbCureCrossfeed:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x2d

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->setUpUi(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/CuresystemFragment;->updateUi()V

    .line 43
    return-object v0
.end method
