.class final Lcom/audlabs/vipereffect/widget/d;
.super Ljava/lang/Object;
.source "EqualizerViewBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

.field private final synthetic b:S

.field private final synthetic c:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;SLcom/audlabs/vipereffect/widget/VerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/d;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    iput-short p2, p0, Lcom/audlabs/vipereffect/widget/d;->b:S

    iput-object p3, p0, Lcom/audlabs/vipereffect/widget/d;->c:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/d;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$1(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)[F

    move-result-object v0

    iget-short v1, p0, Lcom/audlabs/vipereffect/widget/d;->b:S

    aget v0, v0, v1

    iget-object v1, p0, Lcom/audlabs/vipereffect/widget/d;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v1}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$4(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/d;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$1(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)[F

    move-result-object v0

    iget-short v1, p0, Lcom/audlabs/vipereffect/widget/d;->b:S

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 182
    iget-object v1, p0, Lcom/audlabs/vipereffect/widget/d;->c:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x42f00000    # 120.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->setProgress(I)V

    .line 183
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/d;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/d;->a:Lcom/audlabs/vipereffect/widget/EqualizerViewBar;

    invoke-static {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar;->access$2(Lcom/audlabs/vipereffect/widget/EqualizerViewBar;)Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/audlabs/vipereffect/widget/EqualizerViewBar$BandUpdatedListener;->onBandStartTracking()V

    goto :goto_0
.end method
