.class final Lcom/audlabs/vipereffect/screen/g;
.super Ljava/lang/Object;
.source "ConvolverFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/g;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 5

    .prologue
    .line 187
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

    .line 188
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/g;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mPbvConvolverCrosschannel:Lcom/audlabs/vipereffect/widget/ProgressBarView;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/audlabs/vipereffect/widget/ProgressBarView;->setProgressSync(F)V

    .line 189
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/g;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mTvConvolverCrosschannelVal:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/g;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$4(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.convolver.crosschannel"

    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v0, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10007

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 195
    return-void
.end method
