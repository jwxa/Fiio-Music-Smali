.class final Lcom/fiio/music/adapter/ad;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 937
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "class com.fiio.music.activity.LocalMusicActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    monitor-exit v4

    .line 971
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$1(Lcom/fiio/music/adapter/QueryAdapter;)I

    move-result v0

    if-nez v0, :cond_5

    .line 942
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 944
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 946
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 949
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v0

    const-string v2, "albumid"

    iget-object v3, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v2}, Lcom/fiio/music/b/k;->a([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 955
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 957
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 961
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 962
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 963
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    iget-object v1, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 937
    :goto_3
    monitor-exit v4

    goto :goto_0

    .line 949
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 950
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 951
    add-int/lit8 v3, v2, 0x1

    iget-object v7, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v7, v7, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    aput v0, v5, v2

    move v2, v3

    goto :goto_1

    .line 957
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 958
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_2

    .line 969
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-nez v0, :cond_7

    .line 970
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 971
    monitor-exit v4

    goto/16 :goto_0

    .line 973
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [I

    .line 975
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-gez v3, :cond_8

    .line 986
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 987
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 988
    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 989
    iget-object v1, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 976
    :cond_8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 977
    iget-object v2, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 979
    invoke-static {}, Lcom/fiio/music/adapter/QueryAdapter;->access$10()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "find it : "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    add-int/lit8 v2, v1, 0x1

    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    aput v0, v5, v1

    .line 981
    iget-object v0, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/adapter/ad;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 975
    :goto_5
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5
.end method
