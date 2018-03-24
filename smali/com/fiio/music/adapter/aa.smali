.class final Lcom/fiio/music/adapter/aa;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 755
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    monitor-exit v3

    .line 771
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 761
    new-instance v1, Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 762
    invoke-virtual {v1}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    .line 763
    const/4 v0, 0x0

    .line 764
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v0

    const-string v1, "albumid"

    invoke-virtual {v0, v4, v1}, Lcom/fiio/music/b/k;->c([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 771
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 764
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 765
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 766
    add-int/lit8 v2, v1, 0x1

    iget-object v6, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v6, v6, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    aput v0, v4, v1

    move v1, v2

    goto :goto_1

    .line 773
    :cond_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 774
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 775
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/fiio/music/adapter/aa;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
