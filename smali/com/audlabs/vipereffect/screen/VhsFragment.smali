.class public Lcom/audlabs/vipereffect/screen/VhsFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "VhsFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field mIVKnobPoint:Landroid/widget/ImageView;

.field mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvVshVal:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;

.field vhsQual:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/VhsFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/VhsFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/VhsFragment;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/VhsFragment;)F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->centerY:F

    return v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f0b0176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTvVshVal:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0b0177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 46
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VhsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->vhsQual:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 51
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 52
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 53
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->matrix:Landroid/graphics/Matrix;

    .line 56
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VhsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->centerX:F

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->centerY:F

    .line 60
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/av;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/av;-><init>(Lcom/audlabs/vipereffect/screen/VhsFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 79
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.vhs.qual"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 83
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTvVshVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->vhsQual:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v0, 0x2d

    int-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 85
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 86
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VhsFragment;->mTrbVhs:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x2d

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 87
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f04006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VhsFragment;->setUpUi(Landroid/view/View;)V

    .line 39
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/VhsFragment;->updateUi()V

    .line 40
    return-object v0
.end method
