.class public Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;
.super Lorg/eclipse/jetty/server/session/AbstractSession;
.source "JDBCSessionManager.java"


# static fields
.field private static final serialVersionUID:J = 0x48482e75793f5edfL


# instance fields
.field private final _data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

.field private _dirty:Z

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;JLorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    .locals 8

    .prologue
    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .line 295
    invoke-virtual {p4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getCreated()J

    move-result-wide v2

    invoke-virtual {p4}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;JJLjava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 296
    iput-object p4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .line 297
    iget v0, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setMaxIdleMs(J)V

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAttributeMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->addAttributes(Ljava/util/Map;)V

    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAttributeMap(Ljava/util/Map;)V

    .line 301
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lc/c/c/c;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 278
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    .line 279
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;-><init>(Lorg/eclipse/jetty/server/session/AbstractSessionManager;Lc/c/c/c;)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 280
    new-instance v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getAttributeMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;-><init>(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    .line 281
    iget v0, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    if-lez v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_dftMaxIdleSecs:I

    int-to-long v2, v1

    mul-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setMaxIdleMs(J)V

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$000(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCanonicalContext(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v1, p1, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-static {p1, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$100(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setVirtualHost(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    .line 286
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setExpiryTime(J)V

    .line 287
    return-void

    .line 286
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v0, v0

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;)Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    return-object v0
.end method


# virtual methods
.method protected access(J)Z
    .locals 7

    .prologue
    .line 332
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->access(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setLastAccessed(J)V

    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setAccessed(J)V

    .line 337
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getMaxInactiveInterval()I

    move-result v0

    .line 338
    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setExpiryTime(J)V

    .line 339
    const/4 v0, 0x1

    .line 341
    :goto_1
    return v0

    .line 338
    :cond_0
    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v0, p1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected complete()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 351
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->complete()V

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->willPassivate()V

    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->updateSession(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V

    .line 360
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->didActivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 374
    :goto_1
    return-void

    .line 362
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-static {v0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$200(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-static {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->access$300(Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->getSaveInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager;->access$400(Lorg/eclipse/jetty/server/session/JDBCSessionManager;Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 369
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem persisting changed session data id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    iput-boolean v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    throw v0
.end method

.method protected cookieSet()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_data:Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->getAccessed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$SessionData;->setCookieSet(J)V

    .line 321
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSession;->removeAttribute(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 315
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/session/AbstractSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->_dirty:Z

    .line 308
    return-void
.end method

.method protected timeout()V
    .locals 3

    .prologue
    .line 380
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timing out session id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionManager$Session;->getClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSession;->timeout()V

    .line 383
    return-void
.end method
