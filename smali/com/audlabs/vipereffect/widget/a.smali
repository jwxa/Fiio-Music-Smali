.class final Lcom/audlabs/vipereffect/widget/a;
.super Ljava/lang/Object;
.source "EqualizerViewBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

.field private final synthetic b:Landroid/widget/TextView;

.field private final synthetic c:S


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;Landroid/widget/TextView;S)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/a;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    iput-object p2, p0, Lcom/audlabs/vipereffect/widget/a;->b:Landroid/widget/TextView;

    iput-short p3, p0, Lcom/audlabs/vipereffect/widget/a;->c:S

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .prologue
    .line 120
    add-int/lit8 v0, p2, -0x78

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    double-to-float v1, v0

    .line 121
    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/a;->b:Landroid/widget/TextView;

    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_1

    const-string v0, "%.0fdb"

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/a;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$0(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Ljava/util/List;

    move-result-object v0

    iget-short v2, p0, Lcom/audlabs/vipereffect/widget/a;->c:S

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x42f00000    # 120.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setProgress(I)V

    .line 123
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/a;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$1(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)[F

    move-result-object v0

    iget-short v2, p0, Lcom/audlabs/vipereffect/widget/a;->c:S

    aput v1, v0, v2

    .line 124
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/a;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/a;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/audlabs/vipereffect/widget/a;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v1}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$1(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)[F

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;->onBandUpdated([F)V

    .line 127
    :cond_0
    return-void

    .line 121
    :cond_1
    const-string v0, "%+.1fdb"

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
