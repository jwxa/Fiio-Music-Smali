.class public Lorg/eclipse/jetty/server/session/HashSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "HashSessionManager.java"


# static fields
.field private static __id:I

.field static final __log:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _deleteUnrestorableSessions:Z

.field _idleSavePeriodMs:J

.field private _lazyLoad:Z

.field _savePeriodMs:J

.field private _saveTask:Ljava/util/TimerTask;

.field _scavengePeriodMs:J

.field protected final _sessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/HashedSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _sessionsLoaded:Z

.field _storeDir:Ljava/io/File;

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;

.field private _timerStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/eclipse/jetty/server/session/SessionHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 66
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 67
    iput-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 68
    iput-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 71
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 72
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 73
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    .line 82
    return-void
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 94
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    const-string v1, "org.eclipse.jetty.server.session.timer"

    invoke-interface {v0, v1}, Lc/c/s;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 99
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    .line 100
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HashSessionScavenger-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/eclipse/jetty/server/session/HashSessionManager;->__id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 103
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getScavengePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_2
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-nez v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V

    .line 114
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->getSavePeriod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setSavePeriod(I)V

    .line 115
    return-void
.end method

.method public doStop()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 132
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timerStop:Z

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 135
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 143
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIdleSavePeriod()I
    .locals 4

    .prologue
    .line 174
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getSavePeriod()I
    .locals 4

    .prologue
    .line 249
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getScavengePeriod()I
    .locals 4

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    if-nez v0, :cond_0

    .line 364
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSessions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    .line 373
    if-nez v0, :cond_2

    move-object v0, v1

    .line 386
    :cond_1
    :goto_1
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    .line 368
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 376
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 378
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    if-eqz v2, :cond_3

    .line 379
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v0

    .line 380
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    .line 381
    goto :goto_1

    .line 383
    :cond_4
    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->deIdle()V

    goto :goto_1
.end method

.method public getSessions()I
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->getSessions()I

    move-result v0

    .line 160
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 163
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sessions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    return v0
.end method

.method public getStoreDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    return-object v0
.end method

.method protected invalidateSessions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
    const/16 v0, 0x64

    move-object v2, v1

    .line 396
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 399
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 404
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    .line 405
    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/server/session/HashSessionManager;->removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    goto :goto_1

    .line 410
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 411
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->invalidate()V

    goto :goto_2

    .line 415
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    move v0, v1

    goto :goto_0

    .line 417
    :cond_2
    return-void
.end method

.method public isDeleteUnrestorableSessions()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    return v0
.end method

.method public isLazyLoad()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    return v0
.end method

.method protected newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 7

    .prologue
    .line 429
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;JJLjava/lang/String;)V

    return-object v0
.end method

.method protected newSession(Lc/c/c/c;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lorg/eclipse/jetty/server/session/HashedSession;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/HashedSession;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Lc/c/c/c;)V

    return-object v0
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 9

    .prologue
    .line 571
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 572
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 574
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 575
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 576
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 578
    if-nez p2, :cond_2

    move-object v1, p0

    .line 579
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/server/session/HashSessionManager;->newSession(JJLjava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 580
    :goto_0
    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/session/HashedSession;->setRequests(I)V

    .line 581
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 582
    if-lez v2, :cond_1

    .line 584
    new-instance v3, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;

    invoke-direct {v3, p0, v7}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;Ljava/io/InputStream;)V

    .line 585
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 587
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 589
    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/server/session/HashedSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 591
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/HashSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 595
    :goto_2
    return-object v0

    .line 594
    :cond_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    goto :goto_2

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method protected declared-synchronized restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 503
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 512
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/io/InputStream;Lorg/eclipse/jetty/server/session/HashedSession;)Lorg/eclipse/jetty/server/session/HashedSession;

    move-result-object v0

    .line 513
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jetty/server/session/HashSessionManager;->addSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V

    .line 514
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->didActivate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 524
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 543
    :goto_1
    monitor-exit p0

    return-object v0

    .line 524
    :catch_0
    move-exception v1

    :try_start_5
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 524
    :cond_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    move-object v0, v1

    .line 543
    goto :goto_1

    .line 518
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 524
    :goto_3
    if-eqz v2, :cond_1

    .line 525
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 527
    :cond_1
    :goto_4
    :try_start_8
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isDeleteUnrestorableSessions()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 532
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleting file for unrestorable session "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 525
    :catch_2
    move-exception v2

    sget-object v4, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 536
    :cond_2
    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem restoring session "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 540
    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_3

    .line 525
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 527
    :cond_3
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    .line 525
    :catch_3
    move-exception v1

    sget-object v2, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 540
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 518
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public restoreSessions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessionsLoaded:Z

    .line 482
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 489
    sget-object v1, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore Sessions: Cannot read from Session storage directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 494
    :goto_1
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 496
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/HashSessionManager;->restoreSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/HashedSession;

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public saveSessions(Z)V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 556
    sget-object v0, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to save Sessions: Session persistence storage directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not writeable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 561
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/session/HashedSession;->save(Z)V

    goto :goto_1
.end method

.method protected scavenge()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 300
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 307
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 311
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/HashedSession;

    .line 316
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->getMaxInactiveInterval()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 317
    cmp-long v8, v6, v10

    if-lez v8, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    add-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gez v6, :cond_4

    .line 322
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->timeout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v0

    .line 326
    :try_start_2
    sget-object v6, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "Problem scavenging sessions"

    invoke-interface {v6, v7, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 344
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v0

    .line 329
    :cond_4
    :try_start_3
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->getAccessed()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    .line 333
    :try_start_4
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->idle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 335
    :catch_1
    move-exception v6

    .line 337
    :try_start_5
    sget-object v7, Lorg/eclipse/jetty/server/session/HashSessionManager;->__log:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Problem idling session "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/HashedSession;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 344
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto/16 :goto_0
.end method

.method public setDeleteUnrestorableSessions(Z)V
    .locals 0

    .prologue
    .line 474
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_deleteUnrestorableSessions:Z

    .line 475
    return-void
.end method

.method public setIdleSavePeriod(I)V
    .locals 4

    .prologue
    .line 191
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_idleSavePeriodMs:J

    .line 192
    return-void
.end method

.method public setLazyLoad(Z)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_lazyLoad:Z

    .line 457
    return-void
.end method

.method public setMaxInactiveInterval(I)V
    .locals 6

    .prologue
    .line 198
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->setMaxInactiveInterval(I)V

    .line 199
    iget v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 200
    iget v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_dftMaxIdleSecs:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/HashSessionManager;->setScavengePeriod(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public setSavePeriod(I)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 209
    int-to-long v0, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 210
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 212
    :cond_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 216
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 220
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 222
    new-instance v0, Lorg/eclipse/jetty/server/session/c;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/c;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_saveTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_savePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 239
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_3
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScavengePeriod(I)V
    .locals 9

    .prologue
    const-wide/32 v2, 0xea60

    const-wide/16 v0, 0x3e8

    .line 261
    if-nez p1, :cond_0

    .line 262
    const/16 p1, 0x3c

    .line 264
    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 265
    int-to-long v4, p1

    mul-long/2addr v4, v0

    .line 266
    cmp-long v8, v4, v2

    if-lez v8, :cond_5

    .line 268
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    .line 271
    :goto_1
    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    .line 273
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    if-eqz v2, :cond_3

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-nez v0, :cond_3

    .line 275
    :cond_1
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 279
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/server/session/d;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/session/d;-><init>(Lorg/eclipse/jetty/server/session/HashSessionManager;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    .line 287
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_task:Ljava/util/TimerTask;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    iget-wide v4, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_scavengePeriodMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 288
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_3
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-wide v0, v2

    goto :goto_1

    :cond_5
    move-wide v2, v4

    goto :goto_0
.end method

.method public setStoreDirectory(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionManager;->_storeDir:Ljava/io/File;

    .line 445
    return-void
.end method
