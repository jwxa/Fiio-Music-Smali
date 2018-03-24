.class final Lcom/fiio/music/fragment/bw;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 456
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 457
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 458
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 459
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 460
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/util/cj;->g()Z

    .line 461
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v5

    .line 465
    :cond_1
    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$19(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/service/h;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 466
    iget-object v3, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$19(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/service/h;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$16(Lcom/fiio/music/fragment/TabCFr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v2, v1, v0, v6}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 477
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$19(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$16(Lcom/fiio/music/fragment/TabCFr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/service/h;->e(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$19(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto :goto_1

    .line 475
    :cond_3
    iget-object v2, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$19(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$16(Lcom/fiio/music/fragment/TabCFr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v6, v3, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lcom/fiio/music/fragment/bw;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabCFr;->access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
