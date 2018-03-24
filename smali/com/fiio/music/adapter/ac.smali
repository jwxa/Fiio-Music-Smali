.class final Lcom/fiio/music/adapter/ac;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x0

    const/4 v7, 0x6

    .line 872
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$1(Lcom/fiio/music/adapter/QueryAdapter;)I

    move-result v0

    if-nez v0, :cond_5

    .line 873
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 874
    array-length v0, v4

    if-nez v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 926
    :goto_0
    return-void

    .line 878
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 879
    invoke-virtual {v0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    .line 881
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    const/4 v0, 0x0

    .line 887
    array-length v1, v4

    .line 888
    :goto_2
    if-lt v2, v1, :cond_2

    .line 895
    iget-object v1, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 896
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 897
    iput v8, v1, Landroid/os/Message;->what:I

    .line 898
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 881
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 882
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 883
    add-int/lit8 v3, v1, 0x1

    iget-object v6, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v6, v6, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    aput v0, v4, v1

    move v1, v3

    goto :goto_1

    .line 887
    :cond_2
    aget v3, v4, v2

    .line 889
    if-nez v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 888
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 892
    :cond_3
    iget-object v5, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 907
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 908
    array-length v0, v0

    if-nez v0, :cond_6

    .line 909
    iget-object v0, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 912
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 913
    invoke-virtual {v0}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    .line 914
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 915
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 921
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 922
    iput v8, v0, Landroid/os/Message;->what:I

    .line 923
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 924
    iget-object v1, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 915
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 916
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 917
    iget-object v3, p0, Lcom/fiio/music/adapter/ac;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 918
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method
