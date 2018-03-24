.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionManager;
.source "JDBCSessionManager.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

.field protected _saveIntervalSec:J

.field private _sessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/session/AbstractSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .line 81
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    .line 394
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    return-void
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1123
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1126
    return-object v0
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5f

    .line 1158
    if-nez p1, :cond_0

    .line 1159
    const-string v0, ""

    .line 1161
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnection()Ljava/sql/Connection;
    .locals 1

    .prologue
    .line 1111
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method private getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1138
    const-string v0, "0.0.0.0"

    .line 1140
    if-nez p1, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-object v0

    .line 1143
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v1

    .line 1144
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 1147
    aget-object v0, v1, v3

    goto :goto_0
.end method

.method private updateSessionAccessTime(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 8

    .prologue
    .line 1044
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 1048
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1049
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1050
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionAccessTime:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 1051
    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1052
    const/4 v4, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1053
    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastAccessed()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1054
    const/4 v4, 0x4

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1055
    const/4 v4, 0x5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getExpiryTime()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 1056
    const/4 v4, 0x6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1057
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1058
    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 1059
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 1060
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated access time session id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    :cond_0
    if-eqz v1, :cond_1

    .line 1066
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 1068
    :cond_1
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1066
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method protected addSession(Lorg/eclipse/jetty/server/session/AbstractSession;)V
    .locals 5

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 718
    :goto_0
    return-void

    .line 701
    :cond_0
    monitor-enter p0

    .line 703
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :try_start_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 711
    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-object v1, v0

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    .line 712
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->didActivate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v1

    .line 716
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to store new session id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public cacheInvalidate(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method protected deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 4

    .prologue
    .line 1083
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 1087
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1088
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_deleteSession:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 1089
    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1090
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1091
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted Session "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :cond_0
    if-eqz v1, :cond_1

    .line 1097
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 1099
    :cond_1
    return-void

    .line 1096
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1097
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_2
    throw v0
.end method

.method public doStart()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No session id manager defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    .line 613
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 615
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStart()V

    .line 616
    return-void
.end method

.method public doStop()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 630
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->doStop()V

    .line 631
    return-void
.end method

.method protected expire(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 785
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 790
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 791
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 795
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 798
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 799
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expiring session id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 802
    if-eqz v1, :cond_4

    .line 804
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->timeout()V

    .line 805
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 814
    :catch_0
    move-exception v0

    .line 816
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Problem expiring sessions"

    invoke-interface {v1, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 809
    :cond_4
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 810
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unrecognized session id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 820
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    throw v0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public getSaveInterval()J
    .locals 2

    .prologue
    .line 448
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    return-wide v0
.end method

.method public bridge synthetic getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x3e8

    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 491
    monitor-enter p0

    .line 503
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 505
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    if-nez v0, :cond_6

    .line 508
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSession("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): not in session map, now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastSaved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_5

    move-wide v2, v4

    :goto_0
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    sub-long v2, v6, v2

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v8, v10

    cmp-long v1, v2, v8

    if-ltz v1, :cond_8

    .line 524
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSession("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): no session in session map or stale session. Reloading session data from db."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    .line 538
    :goto_2
    if-eqz v1, :cond_c

    .line 540
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_b

    .line 543
    :cond_2
    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_a

    .line 545
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSession("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): lastNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thisNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastNode(Ljava/lang/String;)V

    .line 548
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-direct {v0, p0, v6, v7, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;JLorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    .line 549
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V

    .line 553
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :goto_4
    return-object v0

    .line 508
    :cond_5
    :try_start_2
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 513
    :cond_6
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSession("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): in session map,  now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastSaved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_7

    move-wide v2, v4

    :goto_5
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thisNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " difference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v8

    sub-long v8, v6, v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 575
    :catch_0
    move-exception v0

    .line 577
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Unable to load session from database"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_7
    :try_start_4
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    goto :goto_5

    .line 527
    :cond_8
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    sub-long v2, v6, v2

    iget-wide v8, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    mul-long/2addr v8, v10

    cmp-long v1, v2, v8

    if-ltz v1, :cond_9

    .line 529
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSession("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): stale session. Reloading session data from db."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getVirtualHost(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    goto/16 :goto_2

    .line 534
    :cond_9
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSession("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): session in session map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    goto/16 :goto_2

    .line 557
    :cond_a
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "getSession ({}): Session has expired"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 563
    :cond_b
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "getSession({}): Session not stale {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 569
    :cond_c
    const/4 v0, 0x0

    .line 570
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "getSession({}): No session in database matching id={}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method public getSessions()I
    .locals 1

    .prologue
    .line 591
    .line 592
    monitor-enter p0

    .line 594
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    .line 595
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    return v0

    .line 595
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected invalidateSession(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 652
    .line 653
    monitor-enter p0

    .line 655
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    .line 656
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->invalidate()V

    .line 662
    :cond_0
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected invalidateSessions()V
    .locals 0

    .prologue
    .line 642
    return-void
.end method

.method protected loadSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .locals 7

    .prologue
    .line 834
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 835
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 836
    new-instance v0, Lorg/eclipse/jetty/server/session/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/f;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 889
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v1, :cond_0

    .line 890
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 894
    :goto_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 892
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 897
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    return-object v0
.end method

.method protected newSession(Lc/c/c/c;)Lorg/eclipse/jetty/server/session/AbstractSession;
    .locals 1

    .prologue
    .line 729
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lc/c/c/c;)V

    return-object v0
.end method

.method public removeSession(Lorg/eclipse/jetty/server/session/AbstractSession;Z)V
    .locals 2

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 744
    monitor-enter p0

    .line 747
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSession(Ljava/lang/String;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 749
    const/4 v0, 0x1

    .line 750
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->removeSession(Ljava/lang/String;)Z

    .line 752
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionIdManager;->removeSession(Lc/c/c/g;)V

    .line 759
    if-eqz p2, :cond_1

    .line 760
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/SessionIdManager;->invalidateAll(Ljava/lang/String;)V

    .line 762
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 764
    new-instance v0, Lc/c/c/m;

    invoke-direct {v0, p1}, Lc/c/c/m;-><init>(Lc/c/c/g;)V

    .line 765
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/n;

    .line 766
    invoke-interface {v0}, Lc/c/c/n;->a()V

    goto :goto_0

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 768
    :cond_2
    if-nez p2, :cond_3

    .line 770
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->willPassivate()V

    .line 773
    :cond_3
    return-void
.end method

.method protected removeSession(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 673
    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v0, :cond_0

    .line 679
    :try_start_1
    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->deleteSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    :try_start_2
    monitor-exit p0

    return v0

    .line 681
    :catch_0
    move-exception v1

    .line 683
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem deleting session id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 685
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSaveInterval(J)V
    .locals 1

    .prologue
    .line 443
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_saveIntervalSec:J

    .line 444
    return-void
.end method

.method protected storeSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 8

    .prologue
    .line 909
    if-nez p1, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 917
    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->calculateRowId(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)Ljava/lang/String;

    move-result-object v0

    .line 919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 920
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 921
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v4, v4, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_insertSession:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 922
    const/4 v5, 0x1

    invoke-interface {v4, v5, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 923
    const/4 v5, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 924
    const/4 v5, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCanonicalContext()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 925
    const/4 v5, 0x4

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getVirtualHost()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 926
    const/4 v5, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 927
    const/4 v5, 0x6

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 928
    const/4 v5, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastAccessed()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 929
    const/16 v5, 0x8

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCreated()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 930
    const/16 v5, 0x9

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCookieSet()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 931
    const/16 v5, 0xa

    invoke-interface {v4, v5, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 932
    const/16 v5, 0xb

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getExpiryTime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 934
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 935
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 936
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAttributeMap()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 937
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 939
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 940
    const/16 v7, 0xc

    array-length v5, v5

    invoke-interface {v4, v7, v6, v5}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 942
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 943
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setRowId(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 947
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stored session "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    :cond_2
    if-eqz v1, :cond_0

    .line 953
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    goto/16 :goto_0

    .line 952
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 953
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_3
    throw v0
.end method

.method protected updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 8

    .prologue
    .line 967
    if-nez p1, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 974
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 975
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 976
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSession:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 977
    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 978
    const/4 v4, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 979
    const/4 v4, 0x3

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getLastAccessed()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 980
    const/4 v4, 0x4

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 981
    const/4 v4, 0x5

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getExpiryTime()J

    move-result-wide v6

    invoke-interface {v0, v4, v6, v7}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 983
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 984
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 985
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAttributeMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 986
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 987
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 989
    const/4 v6, 0x6

    array-length v4, v4

    invoke-interface {v0, v6, v5, v4}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    .line 990
    const/4 v4, 0x7

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 991
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 993
    invoke-virtual {p1, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 994
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updated session "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :cond_2
    if-eqz v1, :cond_0

    .line 1000
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    goto/16 :goto_0

    .line 999
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1000
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_3
    throw v0
.end method

.method protected updateSessionNode(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 5

    .prologue
    .line 1014
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    .line 1019
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 1020
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v2, v2, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_updateSessionNode:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 1021
    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1022
    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getRowId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1023
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 1024
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 1025
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    sget-object v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updated last node for session id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastNode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    :cond_0
    if-eqz v1, :cond_1

    .line 1031
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    .line 1033
    :cond_1
    return-void

    .line 1030
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1031
    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    :cond_2
    throw v0
.end method
