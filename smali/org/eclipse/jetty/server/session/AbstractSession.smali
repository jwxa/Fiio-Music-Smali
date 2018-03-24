.class public abstract Lorg/eclipse/jetty/server/session/AbstractSession;
.super Ljava/lang/Object;
.source "AbstractSession.java"

# interfaces
.implements Lorg/eclipse/jetty/server/session/AbstractSessionManager$SessionIf;


# static fields
.field static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _accessed:J

.field private final _attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _clusterId:Ljava/lang/String;

.field private _cookieSet:J

.field private final _created:J

.field private _doInvalidate:Z

.field private _idChanged:Z

.field private _invalid:Z

.field private _lastAccessed:J

.field private final _manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

.field private _maxIdleMs:J

.field private _newSession:Z

.field private final _nodeId:Ljava/lang/String;

.field private _requests:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 91
    iput-wide p2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    .line 92
    iput-object p6, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/server/SessionIdManager;->getNodeId(Ljava/lang/String;Lc/c/c/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    .line 94
    iput-wide p4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 95
    iput-wide p4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 98
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void

    .line 97
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Lc/c/c/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    .line 75
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    invoke-interface {v0, p2, v2, v3}, Lorg/eclipse/jetty/server/SessionIdManager;->newSessionId(Lc/c/c/c;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lorg/eclipse/jetty/server/SessionIdManager;->getNodeId(Ljava/lang/String;Lc/c/c/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 80
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 81
    iput v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_dftMaxIdleSecs:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 83
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new session & id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void

    .line 82
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected access(J)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 273
    monitor-enter p0

    .line 275
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-eqz v1, :cond_0

    .line 276
    monitor-exit p0

    .line 287
    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    .line 278
    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    iput-wide v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    .line 279
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    .line 281
    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->invalidate()V

    .line 284
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :cond_1
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 287
    const/4 v0, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected addAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 268
    return-void
.end method

.method public bindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 477
    if-eqz p2, :cond_0

    instance-of v0, p2, Lc/c/c/k;

    if-eqz v0, :cond_0

    .line 478
    check-cast p2, Lc/c/c/k;

    new-instance v0, Lc/c/c/j;

    invoke-direct {v0, p0, p1}, Lc/c/c/j;-><init>(Lc/c/c/g;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lc/c/c/k;->valueBound(Lc/c/c/j;)V

    .line 479
    :cond_0
    return-void
.end method

.method protected checkValid()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 355
    monitor-enter p0

    .line 357
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    monitor-enter p0

    .line 368
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/server/session/AbstractSession;->doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 369
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 370
    invoke-virtual {p0, v0, v2}, Lorg/eclipse/jetty/server/session/AbstractSession;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v3, p0, v0, v2, v4}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 369
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 375
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 377
    :cond_2
    return-void
.end method

.method protected complete()V
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    .line 296
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 297
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_doInvalidate:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    if-gtz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 299
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cookieSet()V
    .locals 2

    .prologue
    .line 490
    monitor-enter p0

    .line 492
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_cookieSet:J

    .line 493
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public didActivate()V
    .locals 4

    .prologue
    .line 543
    monitor-enter p0

    .line 545
    :try_start_0
    new-instance v1, Lc/c/c/m;

    invoke-direct {v1, p0}, Lc/c/c/m;-><init>(Lc/c/c/g;)V

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 549
    instance-of v3, v0, Lc/c/c/h;

    if-eqz v3, :cond_0

    .line 551
    check-cast v0, Lc/c/c/h;

    .line 552
    invoke-interface {v0, v1}, Lc/c/c/h;->sessionDidActivate(Lc/c/c/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected doGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doInvalidate()V
    .locals 5

    .prologue
    .line 335
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSession;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "invalidate {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->clearAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    :cond_0
    monitor-enter p0

    .line 344
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    .line 345
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 344
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    .line 345
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 423
    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAccessed()J
    .locals 2

    .prologue
    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_accessed:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getAttributeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 155
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAttributes()I
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieSetTime()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_cookieSet:J

    return-wide v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_created:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_nodeIdInSessionId:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_clusterId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLastAccessedTime()J
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 202
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_lastAccessed:J

    return-wide v0
.end method

.method public getMaxInactiveInterval()I
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 209
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_nodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 499
    monitor-enter p0

    .line 501
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServletContext()Lc/c/s;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getSession()Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method public getSessionContext()Lc/c/c/l;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 226
    sget-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->__nullSessionContext:Lc/c/c/l;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    monitor-exit p0

    .line 254
    :goto_0
    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 327
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 328
    return-void
.end method

.method public isIdChanged()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_idChanged:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 389
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_newSession:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 435
    .line 436
    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->checkValid()V

    .line 439
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->doPutOrRemove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 444
    :cond_0
    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/session/AbstractSession;->unbindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    :cond_1
    if-eqz p2, :cond_2

    .line 447
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->bindValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doSessionAttributeListeners(Lorg/eclipse/jetty/server/session/AbstractSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    :cond_3
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIdChanged(Z)V
    .locals 0

    .prologue
    .line 457
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_idChanged:Z

    .line 458
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 4

    .prologue
    .line 463
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_maxIdleMs:J

    .line 464
    return-void
.end method

.method public setRequests(I)V
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    .line 510
    :try_start_0
    iput p1, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    .line 511
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected timeout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 307
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_manager:Lorg/eclipse/jetty/server/session/AbstractSessionManager;

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 310
    monitor-enter p0

    .line 312
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_invalid:Z

    if-nez v0, :cond_0

    .line 314
    iget v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_requests:I

    if-gtz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->doInvalidate()V

    .line 319
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 317
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_doInvalidate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbindValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 518
    if-eqz p2, :cond_0

    instance-of v0, p2, Lc/c/c/k;

    if-eqz v0, :cond_0

    .line 519
    check-cast p2, Lc/c/c/k;

    new-instance v0, Lc/c/c/j;

    invoke-direct {v0, p0, p1}, Lc/c/c/j;-><init>(Lc/c/c/g;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lc/c/c/k;->valueUnbound(Lc/c/c/j;)V

    .line 520
    :cond_0
    return-void
.end method

.method public willPassivate()V
    .locals 4

    .prologue
    .line 525
    monitor-enter p0

    .line 527
    :try_start_0
    new-instance v1, Lc/c/c/m;

    invoke-direct {v1, p0}, Lc/c/c/m;-><init>(Lc/c/c/g;)V

    .line 528
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSession;->_attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 531
    instance-of v3, v0, Lc/c/c/h;

    if-eqz v3, :cond_0

    .line 533
    check-cast v0, Lc/c/c/h;

    .line 534
    invoke-interface {v0, v1}, Lc/c/c/h;->sessionWillPassivate(Lc/c/c/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
