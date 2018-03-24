.class final Lcom/audlabs/vipereffect/screen/ai;
.super Ljava/lang/Object;
.source "FireqFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/Gallery$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/FireqFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/FireqFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(I)V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0, p1}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$0(Lcom/audlabs/vipereffect/screen/FireqFragment;I)V

    .line 63
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$2(Lcom/audlabs/vipereffect/screen/FireqFragment;I)V

    .line 64
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$3(Lcom/audlabs/vipereffect/screen/FireqFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.fireq"

    const-string v2, "custom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    :goto_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setEqualizerLevels([F)V

    .line 71
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$3(Lcom/audlabs/vipereffect/screen/FireqFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.fireq"

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$4(Lcom/audlabs/vipereffect/screen/FireqFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$3(Lcom/audlabs/vipereffect/screen/FireqFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.fireq.custom"

    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$4(Lcom/audlabs/vipereffect/screen/FireqFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/ai;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v3}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
