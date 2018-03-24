.class public Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScanDirectoryActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanDirectoryActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/ScanDirectoryActivity;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 609
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 636
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V

    .line 612
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V

    .line 613
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->c(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V

    .line 614
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V

    .line 615
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/ArrayList;)V

    .line 616
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/util/ch;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 617
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->j(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 621
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->m(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 622
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->n(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 628
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->n(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->m(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 629
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->j(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 630
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;[Ljava/lang/String;)V

    .line 631
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->l(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/util/List;)V

    goto/16 :goto_0

    .line 617
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 618
    iget-object v4, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/ScanDirectoryActivity;->l(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    aget-object v0, v0, v2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->j(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->m(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->c(Lcom/fiio/music/activity/ScanDirectoryActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fiio/music/activity/ScanDirectoryActivity$SDCardStateReceiver;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 631
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
