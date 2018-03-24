.class final Lcom/audlabs/vipereffect/screen/aj;
.super Ljava/lang/Object;
.source "FireqFragment.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/FireqFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/FireqFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBandStartTracking()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$0(Lcom/audlabs/vipereffect/screen/FireqFragment;I)V

    .line 91
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEqGallery:Lcom/audlabs/vipereffect/widget/Gallery;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audlabs/vipereffect/widget/Gallery;->setSelection(I)V

    .line 92
    return-void
.end method

.method public final onBandUpdated([F)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$1(Lcom/audlabs/vipereffect/screen/FireqFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/FireqFragment;->mEQPresetNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/aj;->a:Lcom/audlabs/vipereffect/screen/FireqFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/FireqFragment;->access$3(Lcom/audlabs/vipereffect/screen/FireqFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "vipereffect.headphonefx.fireq.custom"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    :cond_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setEqualizerLevels([F)V

    .line 86
    return-void

    .line 80
    :cond_1
    aget v3, p1, v0

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
