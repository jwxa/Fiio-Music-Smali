.class final Lcom/fiio/music/widget/e;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/DragGridView;


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/DragGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x19

    .line 341
    iget-object v0, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->h(Lcom/fiio/music/widget/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v1}, Lcom/fiio/music/widget/DragGridView;->i(Lcom/fiio/music/widget/DragGridView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 342
    const/16 v0, 0x14

    .line 343
    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v1}, Lcom/fiio/music/widget/DragGridView;->j(Lcom/fiio/music/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v2}, Lcom/fiio/music/widget/DragGridView;->k(Lcom/fiio/music/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    iget-object v2, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v2}, Lcom/fiio/music/widget/DragGridView;->m(Lcom/fiio/music/widget/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v3}, Lcom/fiio/music/widget/DragGridView;->h(Lcom/fiio/music/widget/DragGridView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/widget/DragGridView;->a(Lcom/fiio/music/widget/DragGridView;II)V

    .line 356
    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/widget/DragGridView;->smoothScrollBy(II)V

    .line 357
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->h(Lcom/fiio/music/widget/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v1}, Lcom/fiio/music/widget/DragGridView;->l(Lcom/fiio/music/widget/DragGridView;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 345
    const/16 v0, -0x14

    .line 346
    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v1}, Lcom/fiio/music/widget/DragGridView;->j(Lcom/fiio/music/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v2}, Lcom/fiio/music/widget/DragGridView;->k(Lcom/fiio/music/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v1}, Lcom/fiio/music/widget/DragGridView;->j(Lcom/fiio/music/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/widget/e;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v2}, Lcom/fiio/music/widget/DragGridView;->k(Lcom/fiio/music/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
