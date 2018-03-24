.class final Lcom/audlabs/vipereffect/screen/al;
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
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/al;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/al;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mTvPlaybackMaxgainVal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/al;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    iget-object v1, v1, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mMultiFactors:[Ljava/lang/String;

    div-int/lit8 v2, p2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/al;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->access$0(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipereffect.headphonefx.playbackgain.maxscaler"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/al;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    iget-object v2, v2, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->mMultiFactorVals:[Ljava/lang/String;

    div-int/lit8 v3, p2, 0xa

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    invoke-static {}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->getInstance()Lcom/audlabs/vipereffect/util/V4ADSPModule;

    move-result-object v0

    const v1, 0x10020

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/al;->a:Lcom/audlabs/vipereffect/screen/PlaybackFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/PlaybackFragment;->access$0(Lcom/audlabs/vipereffect/screen/PlaybackFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 129
    const-string v3, "vipereffect.headphonefx.playbackgain.maxscaler"

    const-string v4, "400"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/audlabs/vipereffect/util/V4ADSPModule;->setParameter_px4_vx4x1(II)V

    .line 130
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
