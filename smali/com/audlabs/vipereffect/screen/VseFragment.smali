.class public Lcom/audlabs/vipereffect/screen/VseFragment;
.super Lcom/audlabs/vipereffect/base/BaseFragment;
.source "VseFragment.java"


# instance fields
.field mPbvVse:Lcom/audlabs/vipereffect/widget/ProgressBarView;

.field mTrbVse:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

.field mTvVseVal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/audlabs/vipereffect/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/audlabs/vipereffect/screen/VseFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setUpUi(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0b017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTvVseVal:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTrbVse:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    .line 52
    const v0, 0x7f0b017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iput-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPbvVse:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    .line 54
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTrbVse:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgImageInt(I)V

    .line 55
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTrbVse:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const v1, 0x7f030022

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setBgPressImageInt(I)V

    .line 56
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPbvVse:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setMax(I)V

    .line 58
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTrbVse:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    new-instance v1, Lcom/audlabs/vipereffect/screen/aw;

    invoke-direct {v1, p0}, Lcom/audlabs/vipereffect/screen/aw;-><init>(Lcom/audlabs/vipereffect/screen/VseFragment;)V

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setOnChangeDegreeListening(Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;)V

    .line 73
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "vipereffect.headphonefx.vse.value"

    const-string v2, "0.1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTvVseVal:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPbvVse:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 79
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mTrbVse:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setCurDegree(F)V

    .line 80
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/audlabs/vipereffect/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "viper4android.settings.vse.notice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/VseFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "viper4android.settings.vse.notice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v1, "ViPERFX"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 34
    const v2, 0x7f0c0130

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 36
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/screen/VseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 39
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f040074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/screen/VseFragment;->setUpUi(Landroid/view/View;)V

    .line 45
    invoke-direct {p0}, Lcom/audlabs/vipereffect/screen/VseFragment;->updateUi()V

    .line 46
    return-object v0
.end method
