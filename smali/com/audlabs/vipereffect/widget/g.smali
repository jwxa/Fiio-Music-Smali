.class final Lcom/audlabs/vipereffect/widget/g;
.super Ljava/lang/Object;
.source "VerticalSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/widget/VerticalSeekBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/widget/g;->a:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/audlabs/vipereffect/widget/g;->a:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    iget-object v1, p0, Lcom/audlabs/vipereffect/widget/g;->a:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/audlabs/vipereffect/widget/g;->a:Lcom/audlabs/vipereffect/widget/VerticalSeekBar;

    invoke-virtual {v2}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/audlabs/vipereffect/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 237
    return-void
.end method
