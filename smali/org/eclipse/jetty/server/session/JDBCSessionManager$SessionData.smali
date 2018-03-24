.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
.super Ljava/lang/Object;
.source "JDBCSessionManager.java"


# instance fields
.field private _accessed:J

.field private _attributes:Ljava/util/Map;
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

.field private _canonicalContext:Ljava/lang/String;

.field private _cookieSet:J

.field private _created:J

.field private _expiryTime:J

.field private final _id:Ljava/lang/String;

.field private _lastAccessed:J

.field private _lastNode:Ljava/lang/String;

.field private _lastSaved:J

.field private _maxIdleMs:J

.field private _rowId:Ljava/lang/String;

.field private _virtualHost:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J

    .line 106
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    .line 108
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;

    .line 110
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J

    .line 115
    iput-object p2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    .line 117
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    .line 118
    iput-object p3, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;

    .line 119
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionIdManager;->getWorkerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;

    .line 120
    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized getAccessed()J
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getAttributeMap()Ljava/util/Map;
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
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCanonicalContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookieSet()J
    .locals 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_cookieSet:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCreated()J
    .locals 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExpiryTime()J
    .locals 2

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAccessed()J
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastAccessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSaved()J
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxIdleMs()J
    .locals 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setAccessed(J)V
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setAttributeMap(Ljava/util/Map;)V
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
    .line 195
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_attributes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCanonicalContext(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_canonicalContext:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCookieSet(J)V
    .locals 1

    .prologue
    .line 170
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_cookieSet:J

    .line 171
    return-void
.end method

.method protected declared-synchronized setCreated(J)V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExpiryTime(J)V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_expiryTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastAccessed(J)V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastAccessed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastNode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSaved(J)V
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxIdleMs(J)V
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_maxIdleMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRowId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_rowId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVirtualHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_virtualHost:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session rowId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_rowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastNode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_created:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_accessed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastAccessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastAccessed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",cookieSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_cookieSet:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastSaved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->_lastSaved:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
