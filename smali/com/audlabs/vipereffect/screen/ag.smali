.class final Lcom/audlabs/vipereffect/screen/ag;
.super Ljava/lang/Object;
.source "FetCompressorFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 8

    .prologue
    .line 328
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v1, p1, v1

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mPbvFetCompressorAttack:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 330
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->mTvFetCompressorAttackVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    int-to-double v4, v0

    const-wide v6, 0x4072c00000000000L    # 300.0

    div-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$7(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$1(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.fetcompressor.attack"

    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$3(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)V

    .line 340
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ag;->a:Lcom/audlabs/vipereffect/screen/FetCompressorFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/FetCompressorFragment;->access$2(Lcom/audlabs/vipereffect/screen/FetCompressorFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.speakerfx.fetcompressor.attack"

    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
