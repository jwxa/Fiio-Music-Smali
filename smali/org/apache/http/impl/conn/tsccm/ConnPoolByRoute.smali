.class public Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.super Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field private final connTTL:J

.field private final connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;

.field protected final freeConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected final leasedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected volatile maxTotalConnections:I

.field protected volatile numConnections:I

.field protected final operator:Lorg/apache/http/conn/ClientConnectionOperator;

.field private final poolLock:Ljava/util/concurrent/locks/Lock;

.field protected final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile shutdown:Z

.field protected final waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/params/ConnPerRoute;I)V
    .locals 7

    .prologue
    .line 112
    const-wide/16 v4, -0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/params/ConnPerRoute;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p2, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connections per route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    .line 133
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 134
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 135
    iput p3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    .line 136
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createFreeConnQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    .line 137
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createWaitingThreadQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    .line 138
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createRouteToPoolMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    .line 139
    iput-wide p4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connTTL:J

    .line 140
    iput-object p6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V
    .locals 2

    .prologue
    .line 153
    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/params/ConnPerRoute;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/params/ConnPerRoute;I)V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 10

    .prologue
    .line 749
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Closing expired connections"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 752
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 754
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 755
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 757
    invoke-virtual {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->isExpired(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 758
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Closing connection expired @ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getExpiry()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 761
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 762
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 767
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 11

    .prologue
    const-wide/16 v0, 0x0

    .line 718
    if-nez p3, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 724
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing connections idle longer than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 728
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 729
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 731
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 732
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 733
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 734
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getUpdated()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    .line 735
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 736
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Closing connection last used @ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getUpdated()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 738
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 739
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 744
    return-void
.end method

.method protected createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 7

    .prologue
    .line 548
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new connection ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 553
    :cond_0
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connTTL:J

    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connTTLTimeUnit:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V

    .line 555
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->createdEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 558
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 559
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 564
    return-object v1

    .line 561
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected createFreeConnQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected createRouteToPoolMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createWaitingThreadQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public deleteClosedConnections()V
    .locals 3

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 696
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 697
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 699
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 701
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 706
    return-void
.end method

.method protected deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 4

    .prologue
    .line 581
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting connection ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 588
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 591
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 593
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 594
    invoke-virtual {v1, p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z

    .line 595
    iget v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 596
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected deleteLeastUsedEntry()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 614
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 616
    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 624
    return-void

    .line 618
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "No free connection to delete"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    .line 431
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 432
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Releasing connection ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z

    if-eqz v0, :cond_1

    .line 442
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 475
    :goto_0
    return-void

    .line 447
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 451
    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v0

    if-ltz v0, :cond_4

    .line 452
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_3

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_1
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pooling connection ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]; keep alive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 462
    :cond_2
    invoke-virtual {v2, p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 463
    invoke-virtual {p1, p3, p4, p5}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 464
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 471
    :goto_2
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 457
    :cond_3
    :try_start_2
    const-string v0, "indefinitely"

    goto :goto_1

    .line 466
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 467
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 468
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 474
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getConnectionsInPool()I
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    :try_start_0
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 264
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 15

    .prologue
    .line 329
    const/4 v4, 0x0

    .line 330
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    .line 331
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 335
    :cond_0
    const/4 v7, 0x0

    .line 336
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 339
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v5}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v6

    .line 340
    const/4 v5, 0x0

    move-object v8, v6

    move-object v14, v5

    move-object v5, v7

    move-object v7, v14

    .line 342
    :goto_0
    if-nez v5, :cond_9

    .line 344
    iget-boolean v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z

    if-eqz v5, :cond_1

    .line 345
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Connection pool shut down"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 348
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "] total kept alive: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", total issued: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", total allocated: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " out of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 360
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {p0, v8, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    .line 361
    if-nez v5, :cond_9

    .line 362
    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, 0x1

    .line 367
    :goto_1
    iget-object v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 368
    iget-object v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Available capacity: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " out of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 373
    :cond_3
    if-eqz v6, :cond_5

    iget v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    iget v10, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    if-ge v9, v10, :cond_5

    .line 375
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-virtual {p0, v8, v5}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v5

    goto/16 :goto_0

    .line 362
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 377
    :cond_5
    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 379
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteLeastUsedEntry()V

    .line 382
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v5}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v5

    .line 383
    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-virtual {p0, v5, v6}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v6

    move-object v8, v5

    move-object v5, v6

    goto/16 :goto_0

    .line 387
    :cond_6
    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 388
    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Need to wait for connection ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 392
    :cond_7
    if-nez v7, :cond_a

    .line 393
    iget-object v6, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v6

    .line 395
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :goto_2
    :try_start_2
    invoke-virtual {v8, v6}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 401
    iget-object v7, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v6, v4}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    .line 409
    :try_start_3
    invoke-virtual {v8, v6}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 410
    iget-object v9, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v9, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 414
    if-nez v7, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-gtz v7, :cond_8

    .line 416
    new-instance v4, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v5, "Timeout waiting for connection from pool"

    invoke-direct {v4, v5}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :catchall_1
    move-exception v4

    invoke-virtual {v8, v6}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 410
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v5, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    move-object v7, v6

    .line 420
    goto/16 :goto_0

    :cond_9
    move-object v4, v5

    .line 423
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 425
    return-object v4

    :cond_a
    move-object v6, v7

    goto :goto_2
.end method

.method protected getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 488
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 491
    const/4 v0, 0x0

    .line 492
    :goto_0
    if-nez v0, :cond_4

    .line 494
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->allocEntry(Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_3

    .line 497
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Getting free connection ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->isExpired(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Closing expired free connection ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 509
    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 513
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 514
    iget v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 529
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 516
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 517
    goto/16 :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No free connections ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_0

    .line 529
    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 531
    return-object v2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method protected getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public getMaxTotalConnections()I
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    return v0
.end method

.method protected getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 2

    .prologue
    .line 238
    .line 239
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .line 243
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newRouteSpecificPool(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 253
    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 633
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 635
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 640
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected newRouteSpecificPool(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;-><init>(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/params/ConnPerRoute;)V

    return-object v0
.end method

.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    return-object v0
.end method

.method protected notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 3

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 664
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 667
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 668
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying thread waiting on pool ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 672
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->nextThread()Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v0

    .line 682
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 683
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 688
    return-void

    .line 673
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 674
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 675
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Notifying thread waiting on any pool"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 677
    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    goto :goto_0

    .line 678
    :cond_5
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Notifying no-one, there are no waiting threads"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 284
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/a;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/a;-><init>(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method

.method public setMaxTotalConnections(I)V
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 821
    :try_start_0
    iput p1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 772
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 774
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 812
    :goto_0
    return-void

    .line 777
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->shutdown:Z

    .line 780
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->leasedConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 781
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 783
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 784
    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 811
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 788
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 789
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 791
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 793
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Closing connection ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 797
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_2

    .line 801
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 802
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    .line 804
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 805
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V

    goto :goto_3

    .line 808
    :cond_4
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method
