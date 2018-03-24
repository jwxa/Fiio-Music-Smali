.class public Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TabEFm.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabEFm;


# direct methods
.method public constructor <init>(Lcom/fiio/music/fragment/TabEFm;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 432
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0, v4}, Lcom/fiio/music/fragment/TabEFm;->setTabFmPageNumber(I)V

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    const-string v1, "zxy --- "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "intent   :   "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 436
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/ch;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 439
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$8(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/adapter/FileListAdapter;->setData(Ljava/util/List;I)V

    .line 469
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 470
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    return-void

    .line 440
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_3
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v4

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 453
    if-nez v1, :cond_1

    .line 454
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 461
    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 463
    iget-object v0, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/cn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$31(Lcom/fiio/music/fragment/TabEFm;Ljava/util/List;)V

    goto/16 :goto_0

    .line 448
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    .line 450
    goto :goto_1

    .line 454
    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    aget-object v1, v2, v3

    aget-object v2, v2, v4

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 457
    iget-object v1, p0, Lcom/fiio/music/fragment/TabEFm$SDCardStateReceiver;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method
