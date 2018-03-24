.class final Lcom/audlabs/vipereffect/screen/aq;
.super Ljava/lang/Object;
.source "VClarityFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/VClarityFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/VClarityFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeNatural:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->access$0(Lcom/audlabs/vipereffect/screen/VClarityFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :cond_0
    :goto_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1002b

    .line 104
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->access$0(Lcom/audlabs/vipereffect/screen/VClarityFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 105
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeOzone:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->access$0(Lcom/audlabs/vipereffect/screen/VClarityFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VClarityFragment;->mRbModeXhifi:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aq;->a:Lcom/audlabs/vipereffect/screen/VClarityFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VClarityFragment;->access$0(Lcom/audlabs/vipereffect/screen/VClarityFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fidelity.clarity.mode"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
