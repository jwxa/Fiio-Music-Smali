.class final Lcom/audlabs/vipereffect/screen/ah;
.super Ljava/lang/Object;
.source "FetCompressorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f080068

    const v4, 0x7f08000d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 348
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 350
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 351
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$1(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fetcompressor.autorelease"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$3(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    .line 368
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorRelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 354
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorRelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 356
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 357
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxrelease:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.speakerfx.fetcompressor.autorelease"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ah;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoreleaseEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method
