.class final Lcom/audlabs/vipereffect/screen/af;
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
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    .line 293
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

    .line 296
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 298
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 300
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 301
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$1(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fetcompressor.autoattack"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$3(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    .line 318
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorAttack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 304
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    .line 306
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTrbFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/TouchRotateButton;

    invoke-virtual {v0, v3}, Lcom/audlabs/vipereffect/widget/TouchRotateButton;->setDisable(Z)V

    .line 307
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorMaxattack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setColorId(I)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.speakerfx.fetcompressor.autoattack"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/af;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mFetCompressorAutoattackEnable:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method
