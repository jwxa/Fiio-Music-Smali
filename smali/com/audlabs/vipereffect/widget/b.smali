.class final Lcom/audlabs/vipereffect/widget/b;
.super Ljava/lang/Object;
.source "EqualizerViewBar.java"

# interfaces
.implements Lcom/audlabs/vipereffect/widget/VerticalSeekBar$OnSeekBarChangeListenerStart;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/b;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartTrackingTouch(Lcom/audlabs/vipereffect/widget/VerticalSeekBar;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/b;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/b;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;->onBandStartTracking()V

    .line 145
    :cond_0
    return-void
.end method
