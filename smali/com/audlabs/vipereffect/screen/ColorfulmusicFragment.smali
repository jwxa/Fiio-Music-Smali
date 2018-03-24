.class public Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "ColorfulmusicFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field private mCoeffArrs:[Ljava/lang/String;

.field private mCoeffs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIVKnobPoint:Landroid/widget/ImageView;

.field private mIVKnobPointMi:Landroid/widget/ImageView;

.field private mMidimageArrs:[Ljava/lang/String;

.field private mMidimages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field private mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field private mTvColorfulmusicMiVal:Landroid/widget/TextView;

.field private mTvColorfulmusicVal:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mCoeffs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mMidimageArrs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mIVKnobPointMi:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTvColorfulmusicVal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mCoeffArrs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$5(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerX:F

    return v0
.end method

.method static synthetic access$6(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerY:F

    return v0
.end method

.method static synthetic access$7(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mMidimages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTvColorfulmusicMiVal:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f030020

    const v2, 0x7f03001e

    .line 57
    const v0, 0x7f0b00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTvColorfulmusicVal:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 59
    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0b00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTvColorfulmusicMiVal:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0b00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 62
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mIVKnobPointMi:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mCoeffArrs:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mMidimageArrs:[Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mCoeffs:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mMidimages:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 71
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 72
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 73
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 75
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 76
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 77
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x42870000    # 67.5f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 78
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x43924000    # 292.5f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->matrix:Landroid/graphics/Matrix;

    .line 81
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerX:F

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerY:F

    .line 85
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/b;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/b;-><init>(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 110
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/c;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/c;-><init>(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 130
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const-wide v6, 0x4036800000000000L    # 22.5

    .line 133
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mCoeffs:Ljava/util/List;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.colorfulmusic.coeffs"

    const-string v3, "120;200"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 134
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTvColorfulmusicVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mCoeffArrs:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v0, 0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 136
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 137
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusic:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 138
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mMidimages:Ljava/util/List;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.colorfulmusic.midimage"

    const-string v3, "150"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 139
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTvColorfulmusicMiVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mMidimageArrs:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->matrix:Landroid/graphics/Matrix;

    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 141
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mIVKnobPointMi:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 142
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->mTrbColorfulmusicMi:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    int-to-double v2, v0

    mul-double/2addr v2, v6

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 143
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f040062

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->setUpUi(Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->updateUi()V

    .line 53
    return-object v0
.end method
