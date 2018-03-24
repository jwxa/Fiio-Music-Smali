.class final Lcom/fiio/music/adapter/s;
.super Landroid/os/Handler;
.source "PlayListAdapter.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/PlayListAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/PlayListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    .line 330
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 332
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->cancelSelect()V

    .line 364
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 365
    return-void

    .line 336
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    new-instance v4, Lcom/fiio/music/b/j;

    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    .line 338
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v2

    .line 341
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$3(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 356
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$2(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$2(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/bw;->b()V

    .line 346
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 347
    iget-object v6, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c00fc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    .line 346
    invoke-static {v0, v6, v8, v9}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 341
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/b/j;->b(I)I

    .line 351
    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$2(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/adapter/s;->a:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-static {v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;)Z

    goto :goto_2

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
