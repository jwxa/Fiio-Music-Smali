.class final Lcom/audlabs/vipereffect/screen/an;
.super Ljava/lang/Object;
.source "VBassFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/VBassFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/VBassFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeNaturalbass:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    :cond_0
    :goto_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10027

    .line 92
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 93
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModePurebass:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/VBassFragment;->mRbModeSubwoofer:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/an;->a:Lcom/audlabs/vipereffect/screen/VBassFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/VBassFragment;->access$0(Lcom/audlabs/vipereffect/screen/VBassFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fidelity.bass.mode"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
