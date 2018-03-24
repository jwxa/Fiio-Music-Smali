.class final Lcom/audlabs/vipereffect/screen/b;
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
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeDegree(F)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 88
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x41f00000    # 30.0f

    div-float v1, p1, v1

    float-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 90
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$0(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v2, v1, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$1(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.colorfulmusic.coeffs"

    const-string v4, "120;200"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$2(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$3(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$4(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/graphics/Matrix;

    move-result-object v0

    mul-int/lit8 v2, v1, 0x1e

    int-to-float v2, v2

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$5(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)F

    move-result v3

    iget-object v4, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v4}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$6(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 93
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$7(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$4(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 95
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$1(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.colorfulmusic.coeffs"

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$0(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v4, v1, -0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/b;->a:Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;->access$0(Lcom/audlabs/vipereffect/screen/ColorfulmusicFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10012

    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 104
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10014

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 106
    :cond_0
    return-void
.end method
