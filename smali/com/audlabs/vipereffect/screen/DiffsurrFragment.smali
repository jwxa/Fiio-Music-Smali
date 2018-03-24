.class public Lcom/audlabs/vipereffect/screen/DiffsurrFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "DiffsurrFragment.java"


# instance fields
.field private centerX:F

.field private centerY:F

.field diffsurroundDelayVals:[Ljava/lang/String;

.field diffsurroundDelays:[Ljava/lang/String;

.field mIVKnobPoint:Landroid/widget/ImageView;

.field mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvDiffsurrVal:Landroid/widget/TextView;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$2(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->centerX:F

    return v0
.end method

.method static synthetic access$3(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->centerY:F

    return v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0b0131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTvDiffsurrVal:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 50
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelays:[Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelayVals:[Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 56
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030020

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 57
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMIN_DEGREE(F)V

    .line 58
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setMAX_DEGREE(F)V

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->matrix:Landroid/graphics/Matrix;

    .line 61
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->centerX:F

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->centerY:F

    .line 65
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/n;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/n;-><init>(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 83
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelayVals:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.diffsurr.delay"

    const-string v3, "500"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 87
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTvDiffsurrVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelays:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->matrix:Landroid/graphics/Matrix;

    mul-int/lit8 v2, v0, 0x1e

    int-to-float v2, v2

    iget v3, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->centerX:F

    iget v4, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->centerY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 89
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 90
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTrbDiffsurr:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    mul-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 91
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f040066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->setUpUi(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->updateUi()V

    .line 43
    return-object v0
.end method
