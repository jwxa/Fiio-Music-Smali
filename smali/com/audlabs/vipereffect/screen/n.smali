.class final Lcom/audlabs/vipereffect/screen/n;
.super Ljava/lang/Object;
.source "DiffsurrFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 5

    .prologue
    .line 68
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x41f00000    # 30.0f

    div-float v1, p1, v1

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelayVals:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->access$0(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.diffsurr.delay"

    const-string v4, "500"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mTvDiffsurrVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelays:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->access$1(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)Landroid/graphics/Matrix;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x1e

    int-to-float v2, v2

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->access$2(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)F

    move-result v3

    iget-object v4, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-static {v4}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->access$3(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 73
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->mIVKnobPoint:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->access$1(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 75
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->access$0(Lcom/audlabs/vipereffect/screen/DiffsurrFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.diffsurr.delay"

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    iget-object v3, v3, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelayVals:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10016

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/n;->a:Lcom/audlabs/vipereffect/screen/DiffsurrFragment;

    iget-object v3, v3, Lcom/audlabs/vipereffect/screen/DiffsurrFragment;->diffsurroundDelayVals:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 81
    :cond_0
    return-void
.end method
