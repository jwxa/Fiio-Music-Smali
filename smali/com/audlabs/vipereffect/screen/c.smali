.class final Lcom/audlabs/vipereffect/screen/c;
.super Ljava/lang/Object;
.source "ColorfulmusicFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/TouchRotateButton$OnChangeDegreeListening;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 8

    .prologue
    const-wide v6, 0x4036800000000000L    # 22.5

    .line 113
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    div-double/2addr v2, v6

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 115
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$8(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$1(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.colorfulmusic.midimage"

    const-string v4, "150"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$9(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$10(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$4(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$5(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)F

    move-result v3

    iget-object v4, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v4}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$6(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 118
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$11(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$4(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 120
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$1(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.colorfulmusic.midimage"

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$8(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v4, v1, -0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v2

    const v3, 0x10013

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/c;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$8(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 128
    :cond_0
    return-void
.end method
