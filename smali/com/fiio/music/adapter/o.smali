.class final Lcom/fiio/music/adapter/o;
.super Landroid/os/Handler;
.source "ListItemAdapter.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/ListItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 582
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 584
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    .line 619
    return-void

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$13(Lcom/fiio/music/adapter/ListItemAdapter;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/b/k;->a([ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 587
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$13(Lcom/fiio/music/adapter/ListItemAdapter;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/fiio/music/b/k;->b([ILjava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v3

    .line 589
    iget-object v4, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v7}, Lcom/fiio/music/adapter/ListItemAdapter;->access$14(Lcom/fiio/music/adapter/ListItemAdapter;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-static {v2, v3, v4}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    .line 590
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$15(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    .line 597
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 598
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInListItemAdapter()V

    .line 611
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$16(Lcom/fiio/music/adapter/ListItemAdapter;)V

    .line 612
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$0(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$15(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$15(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 590
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 598
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 599
    const-string v2, "zxy - - - "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id   :   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getsongId  :   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/service/h;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->i()I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/adapter/o;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget v3, v3, Lcom/fiio/music/adapter/ListItemAdapter;->LISTS_FLAG:I

    invoke-virtual {v0, v2, v8, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    goto/16 :goto_2

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
