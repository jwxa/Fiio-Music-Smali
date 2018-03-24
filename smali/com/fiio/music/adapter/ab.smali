.class final Lcom/fiio/music/adapter/ab;
.super Ljava/lang/Object;
.source "QueryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/QueryAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 792
    :try_start_0
    new-instance v0, Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$1(Lcom/fiio/music/adapter/QueryAdapter;)I

    move-result v0

    if-nez v0, :cond_5

    .line 794
    iget-object v0, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 795
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 796
    invoke-virtual {v0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    .line 798
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    const/4 v1, 0x0

    .line 805
    array-length v6, v5

    move v3, v2

    :goto_1
    if-lt v3, v6, :cond_2

    .line 812
    if-eqz v1, :cond_0

    move v3, v2

    .line 813
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 820
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 821
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 822
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 823
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 824
    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    :goto_3
    monitor-exit v4

    return-void

    .line 798
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 799
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 800
    add-int/lit8 v3, v1, 0x1

    iget-object v7, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v7, v7, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    aput v0, v5, v1

    move v1, v3

    goto :goto_0

    .line 805
    :cond_2
    aget v0, v5, v3

    .line 806
    if-nez v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 805
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 809
    :cond_3
    iget-object v7, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v7}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_4

    .line 814
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 815
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 816
    add-int/lit8 v0, v2, 0x1

    .line 813
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto/16 :goto_2

    .line 829
    :cond_5
    new-instance v0, Lcom/fiio/music/util/bw;

    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 830
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 832
    iget-object v0, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 833
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 834
    invoke-virtual {v0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    .line 836
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_6
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 857
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 858
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 859
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 860
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 861
    iget-object v1, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 836
    :cond_7
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 837
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 838
    iget-object v2, p0, Lcom/fiio/music/adapter/ab;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 839
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-nez v2, :cond_8

    .line 840
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 841
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 844
    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 845
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 846
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 849
    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 850
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 851
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6

    :cond_a
    move v0, v2

    goto/16 :goto_5
.end method
