.class final Lcom/audlabs/vipereffect/widget/e;
.super Ljava/lang/Object;
.source "EqualizerViewBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/e;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 209
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/e;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$5(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 212
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/e;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$0(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/e;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v2}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$1(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)[F

    move-result-object v2

    aget v2, v2, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setProgress(I)V

    .line 209
    add-int/lit8 v0, v1, 0x1

    int-to-short v0, v0

    move v1, v0

    goto :goto_0
.end method
