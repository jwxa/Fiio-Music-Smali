.class final Lg/a/a/aj;
.super Ljava/util/TimerTask;
.source "ServerImpl.java"


# instance fields
.field final synthetic a:Lg/a/a/ae;


# direct methods
.method constructor <init>(Lg/a/a/ae;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 705
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 707
    iget-object v0, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lg/a/a/ae;->a(Lg/a/a/ae;J)J

    .line 708
    iget-object v0, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->q(Lg/a/a/ae;)J

    .line 709
    iget-object v0, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->c(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 710
    :try_start_0
    iget-object v0, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->c(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/k;

    .line 711
    iget-wide v4, v0, Lg/a/a/k;->k:J

    iget-object v6, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {v6}, Lg/a/a/ae;->r(Lg/a/a/ae;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 712
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 715
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/k;

    .line 716
    iget-object v3, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->c(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 717
    iget-object v3, p0, Lg/a/a/aj;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->d(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_1

    .line 720
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
