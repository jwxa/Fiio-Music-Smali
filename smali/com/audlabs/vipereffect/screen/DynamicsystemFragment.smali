.class public Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "DynamicsystemFragment.java"


# instance fields
.field mBtnDynamicsystemOutput:Landroid/widget/Button;

.field mPbvDynamicsystemBass:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mTrbDynamicsystemBass:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvDynamicsystemBassVal:Landroid/widget/TextView;

.field outputs:[Ljava/lang/String;

.field outputsArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputsArray:[Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputs:[Ljava/lang/String;

    .line 46
    const v0, 0x7f0b0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mBtnDynamicsystemOutput:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0b0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTvDynamicsystemBassVal:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0b0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTrbDynamicsystemBass:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 50
    const v0, 0x7f0b0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mPbvDynamicsystemBass:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 52
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mBtnDynamicsystemOutput:Landroid/widget/Button;

    new-instance v1, Lcom/audlabs/vipereffect/screen/o;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/o;-><init>(Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTrbDynamicsystemBass:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 86
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTrbDynamicsystemBass:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 87
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mPbvDynamicsystemBass:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 89
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTrbDynamicsystemBass:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/r;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/r;-><init>(Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 104
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "vipereffect.headphonefx.dynamicsystem.coeffs"

    const-string v3, "100;5600;40;80;50;50"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mBtnDynamicsystemOutput:Landroid/widget/Button;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputsArray:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.dynamicsystem.bass"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTvDynamicsystemBassVal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mPbvDynamicsystemBass:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 112
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mTrbDynamicsystemBass:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f040067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->setUpUi(Landroid/view/View;)V

    .line 38
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->updateUi()V

    .line 39
    return-object v0
.end method
