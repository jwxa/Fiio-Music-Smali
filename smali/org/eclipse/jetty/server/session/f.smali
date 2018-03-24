.class final Lorg/eclipse/jetty/server/session/f;
.super Ljava/lang/Object;
.source "JDBCSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iput-object p2, p0, Lorg/eclipse/jetty/server/session/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/eclipse/jetty/server/session/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jetty/server/session/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/eclipse/jetty/server/session/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lorg/eclipse/jetty/server/session/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 841
    .line 846
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$700(Lorg/eclipse/jetty/server/session/JDBCSessionManager;)Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 847
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    iget-object v3, p0, Lorg/eclipse/jetty/server/session/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/jetty/server/session/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getLoadStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 848
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 849
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    new-instance v2, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/f;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_jdbcSessionIdMgr:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTableRowId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setRowId(Ljava/lang/String;)V

    .line 853
    const-string v0, "cookieTime"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCookieSet(J)V

    .line 854
    const-string v0, "lastAccessTime"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastAccessed(J)V

    .line 855
    const-string v0, "accessTime"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAccessed(J)V

    .line 856
    const-string v0, "createTime"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCreated(J)V

    .line 857
    const-string v0, "lastNode"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastNode(Ljava/lang/String;)V

    .line 858
    const-string v0, "lastSavedTime"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastSaved(J)V

    .line 859
    const-string v0, "expiryTime"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setExpiryTime(J)V

    .line 860
    const-string v0, "contextPath"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCanonicalContext(Ljava/lang/String;)V

    .line 861
    const-string v0, "virtualHost"

    invoke-interface {v3, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setVirtualHost(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_dbAdaptor:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;

    const-string v4, "map"

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 864
    new-instance v3, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/f;->f:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {v3, v4, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/io/InputStream;)V

    .line 865
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 866
    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAttributeMap(Ljava/util/Map;)V

    .line 867
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$ClassLoadingObjectInputStream;->close()V

    .line 869
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LOADED session "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/f;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 880
    if-eqz v1, :cond_1

    .line 882
    :try_start_2
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 886
    :cond_1
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 874
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 876
    :goto_1
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/f;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 880
    if-eqz v1, :cond_1

    .line 882
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 883
    :catch_2
    move-exception v0

    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 880
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 882
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 883
    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$800()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 880
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 874
    :catch_4
    move-exception v0

    goto :goto_1
.end method
