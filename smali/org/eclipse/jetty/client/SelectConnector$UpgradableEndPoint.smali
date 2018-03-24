.class public Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;
.super Ljava/lang/Object;
.source "SelectConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/io/AsyncEndPoint;


# instance fields
.field _endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field _engine:Ljavax/net/ssl/SSLEngine;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_engine:Ljavax/net/ssl/SSLEngine;

    .line 252
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 253
    return-void
.end method


# virtual methods
.method public asyncDispatch()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 292
    return-void
.end method

.method public blockReadable(J)Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->blockReadable(J)Z

    move-result v0

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->blockWritable(J)Z

    move-result v0

    return v0
.end method

.method public cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->cancelTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 347
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 317
    return-void
.end method

.method public dispatch()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->asyncDispatch()V

    .line 287
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->flush()V

    .line 412
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/io/Connection;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getTransport()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasProgressed()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z

    move-result v0

    return v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isCheckForIdle()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isCheckForIdle()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isWritable()Z

    move-result v0

    return v0
.end method

.method public onIdleExpired(J)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->onIdleExpired(J)V

    .line 427
    return-void
.end method

.method public scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleTimeout(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 342
    return-void
.end method

.method public scheduleWrite()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 307
    return-void
.end method

.method public setCheckForIdle(Z)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setCheckForIdle(Z)V

    .line 432
    return-void
.end method

.method public setConnection(Lorg/eclipse/jetty/io/Connection;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 277
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setMaxIdleTime(I)V

    .line 422
    return-void
.end method

.method public shutdownInput()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->shutdownInput()V

    .line 302
    return-void
.end method

.method public shutdownOutput()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->shutdownOutput()V

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upgradable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upgrade()V
    .locals 6

    .prologue
    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    .line 259
    new-instance v1, Lorg/eclipse/jetty/io/nio/SslConnection;

    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 260
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 262
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->_endp:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 263
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 265
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    const-string v3, "upgrade {} to {} for {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    return-void
.end method
