.class final Lcom/audlabs/vipereffect/screen/ap;
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
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 10

    .prologue
    const-wide v8, 0x404c200000000000L    # 56.25

    const-wide v6, 0x4036800000000000L    # 22.5

    .line 128
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    sub-double/2addr v2, v8

    div-double/2addr v2, v6

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoostVals:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.fidelity.bass.gain"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/VBassFragment;->mTvBassGainVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoosts:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$1(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/graphics/Matrix;

    move-result-object v1

    int-to-double v2, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    double-to-float v2, v2

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$2(Lcom/audlabs/vipereffect/screen/VBassFragment;)F

    move-result v3

    iget-object v4, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v4}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$3(Lcom/audlabs/vipereffect/screen/VBassFragment;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 134
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/VBassFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$1(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 136
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.fidelity.bass.gain"

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v3, v3, Lcom/audlabs/vipereffect/screen/VBassFragment;->vbassBoostVals:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10029

    .line 140
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/ap;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.fidelity.bass.gain"

    const-string v4, "50"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 142
    :cond_0
    return-void
.end method
