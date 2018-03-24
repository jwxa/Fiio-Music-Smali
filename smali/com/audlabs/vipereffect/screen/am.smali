.class final Lcom/audlabs/vipereffect/screen/am;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/am;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    .line 146
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, -0x5

    neg-int v0, v0

    .line 147
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/am;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvPlaybackOutputVal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/am;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mOutputs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/am;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->access$0(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.playbackgain.volume"

    iget-object v3, p0, Lcom/audlabs/vipereffect/screen/am;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    iget-object v3, v3, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mOutputVals:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x1001f

    .line 152
    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/am;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->access$0(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vipereffect.headphonefx.playbackgain.volume"

    const-string v4, "80"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 153
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method
