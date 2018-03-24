.class final Lcom/fiio/music/adapter/z;
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
    iput-object p1, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 724
    iget-object v0, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    monitor-exit v2

    :goto_0
    return-void

    .line 729
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 730
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 737
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 738
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 739
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iget-object v1, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$15(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 731
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 732
    iget-object v4, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/QueryAdapter;->access$14(Lcom/fiio/music/adapter/QueryAdapter;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/fiio/music/adapter/z;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 734
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
