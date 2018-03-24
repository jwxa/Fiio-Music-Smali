.class final Lcom/audlabs/vipereffect/screen/ao;
.super Ljava/lang/Object;
.source "VBassFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/VBassFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/VBassFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ao;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 5

    .prologue
    .line 103
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

    .line 104
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ao;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/VBassFragment;->mPbvBassFreq:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 105
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ao;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTvBassFreqVal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "HZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ao;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.fidelity.bass.freq"

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

    .line 110
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10028

    .line 111
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ao;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.fidelity.bass.freq"

    const-string v4, "40"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 112
    return-void
.end method
