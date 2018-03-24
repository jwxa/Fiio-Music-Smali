.class final Lcom/audlabs/vipereffect/screen/ad;
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
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 254
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$1(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fetcompressor.autogain"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$3(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    .line 268
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorGain:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 257
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorGain:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.speakerfx.fetcompressor.autogain"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ad;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutogainEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method
