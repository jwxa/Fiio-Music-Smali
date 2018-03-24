.class final Lcom/audlabs/vipereffect/screen/j;
.super Ljava/lang/Object;
.source "ConvolverFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/i;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/j;->a:Lcom/audlabs/vipereffect/screen/i;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/j;->a:Lcom/audlabs/vipereffect/screen/i;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/i;->a(Lcom/audlabs/vipereffect/screen/i;)Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;->access$0(Lcom/audlabs/vipereffect/screen/ConvolverFragment$VDdcAdapter;)Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlMain:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 310
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method
