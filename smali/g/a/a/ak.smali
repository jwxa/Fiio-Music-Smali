.class final Lg/a/a/ak;
.super Ljava/util/TimerTask;
.source "ServerImpl.java"


# instance fields
.field final synthetic a:Lg/a/a/ae;


# direct methods
.method constructor <init>(Lg/a/a/ae;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 728
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 729
    iget-object v0, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lg/a/a/ae;->a(Lg/a/a/ae;J)J

    .line 730
    iget-object v0, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->s(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v0, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->s(Lg/a/a/ae;)Ljava/util/Set;

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

    .line 732
    iget-wide v4, v0, Lg/a/a/k;->l:J

    sget-wide v6, Lg/a/a/ae;->d:J

    add-long/2addr v4, v6

    sget-wide v6, Lg/a/a/ae;->e:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v6}, Lg/a/a/ae;->r(Lg/a/a/ae;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 733
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 736
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

    .line 737
    iget-object v3, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "closing: no request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 738
    iget-object v3, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->s(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 739
    iget-object v3, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->d(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 740
    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_1

    .line 742
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 744
    iget-object v0, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->t(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    .line 745
    :try_start_2
    iget-object v0, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v0}, Lg/a/a/ae;->t(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/k;

    .line 746
    iget-wide v4, v0, Lg/a/a/k;->m:J

    sget-wide v6, Lg/a/a/ae;->d:J

    add-long/2addr v4, v6

    sget-wide v6, Lg/a/a/ae;->f:J

    add-long/2addr v4, v6

    iget-object v6, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v6}, Lg/a/a/ae;->r(Lg/a/a/ae;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 747
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 756
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 750
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/a/a/k;

    .line 751
    iget-object v3, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->f(Lg/a/a/ae;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "closing: no response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 752
    iget-object v3, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->t(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 753
    iget-object v3, p0, Lg/a/a/ak;->a:Lg/a/a/ae;

    invoke-static {v3}, Lg/a/a/ae;->d(Lg/a/a/ae;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {v0}, Lg/a/a/k;->a()V

    goto :goto_3

    .line 756
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method
