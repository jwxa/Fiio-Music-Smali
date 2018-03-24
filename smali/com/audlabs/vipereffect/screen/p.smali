.class final Lcom/audlabs/vipereffect/screen/p;
.super Ljava/lang/Object;
.source "DynamicsystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/o;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/p;->a:Lcom/audlabs/vipereffect/screen/o;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/p;->a:Lcom/audlabs/vipereffect/screen/o;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/o;->a(Lcom/audlabs/vipereffect/screen/o;)Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->mBtnDynamicsystemOutput:Landroid/widget/Button;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/p;->a:Lcom/audlabs/vipereffect/screen/o;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/o;->a(Lcom/audlabs/vipereffect/screen/o;)Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputsArray:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/p;->a:Lcom/audlabs/vipereffect/screen/o;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/o;->a(Lcom/audlabs/vipereffect/screen/o;)Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->access$0(Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.dynamicsystem.coeffs"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/p;->a:Lcom/audlabs/vipereffect/screen/o;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/o;->a(Lcom/audlabs/vipereffect/screen/o;)Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputs:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/p;->a:Lcom/audlabs/vipereffect/screen/o;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/o;->a(Lcom/audlabs/vipereffect/screen/o;)Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/DynamicsystemFragment;->outputs:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    array-length v1, v0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 66
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10022

    .line 67
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 68
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10023

    .line 69
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 68
    invoke-virtual {v1, v2, v3, v4}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 70
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v1

    const v2, 0x10024

    .line 71
    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    invoke-virtual {v1, v2, v3, v0}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x2(III)V

    .line 73
    :cond_0
    return-void
.end method
