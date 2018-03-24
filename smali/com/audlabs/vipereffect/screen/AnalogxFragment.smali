.class public Lcom/audlabs/vipereffect/screen/AnalogxFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "AnalogxFragment.java"


# instance fields
.field private analogxMode:[Ljava/lang/String;

.field private centerX:F

.field private centerY:F

.field private mIVKnobPoint:Landroid/widget/ImageView;

.field private mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field private mTvModeExtreme:Landroid/widget/TextView;

.field private mTvModeModerate:Landroid/widget/TextView;

.field private mTvModeSlight:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/AnalogxFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/AnalogxFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/AnalogxFragment;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/AnalogxFragment;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->centerY:F

    return v0
.end method

.method static synthetic access$4(Lcom/audlabs/vipereffect/screen/AnalogxFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    const v0, 0x7f0b00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 49
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0b00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTvModeSlight:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTvModeModerate:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTvModeExtreme:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->analogxMode:[Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTvModeSlight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->analogxMode:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTvModeModerate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->analogxMode:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTvModeExtreme:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->analogxMode:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 62
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 63
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43070000    # 135.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 64
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43610000    # 225.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 66
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->matrix:Landroid/graphics/Matrix;

    .line 67
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->centerX:F

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->centerY:F

    .line 71
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/a;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/a;-><init>(Lcom/audlabs/vipereffect/screen/AnalogxFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 88
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.analogx.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 92
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v0, 0x2d

    int-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 93
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 94
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->mTrbAnalogx:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x2d

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f040061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->setUpUi(Landroid/view/View;)V

    .line 43
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/AnalogxFragment;->updateUi()V

    .line 44
    return-object v0
.end method
