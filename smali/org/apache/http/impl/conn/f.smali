.class final Lorg/apache/http/impl/conn/f;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lorg/apache/http/conn/ClientConnectionManager;

.field private final b:Lorg/apache/http/conn/ClientConnectionOperator;

.field private volatile c:Lorg/apache/http/impl/conn/d;

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/impl/conn/d;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection manager may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    if-nez p3, :cond_2

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP pool entry may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/conn/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    .line 78
    iput-object p2, p0, Lorg/apache/http/impl/conn/f;->b:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 79
    iput-object p3, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/f;->d:Z

    .line 81
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/impl/conn/f;->e:J

    .line 82
    return-void
.end method

.method private d()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 100
    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    goto :goto_0
.end method

.method private e()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 108
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method private f()Lorg/apache/http/impl/conn/d;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 119
    :cond_0
    return-object v0
.end method


# virtual methods
.method final a()Lorg/apache/http/impl/conn/d;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    return-object v0
.end method

.method public final abortConnection()V
    .locals 4

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_0

    .line 455
    monitor-exit p0

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/f;->d:Z

    .line 458
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v2, p0, Lorg/apache/http/impl/conn/f;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 465
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final b()Lorg/apache/http/impl/conn/d;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 91
    return-object v0
.end method

.method public final c()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 126
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 127
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    .line 129
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->flush()V

    .line 176
    return-void
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public final getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getRemotePort()I
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->f()Lorg/apache/http/impl/conn/d;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->c()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    .prologue
    .line 232
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 233
    const/4 v1, 0x0

    .line 234
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 235
    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    .line 236
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSocketTimeout()I
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->f()Lorg/apache/http/impl/conn/d;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isMarkedReusable()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/f;->d:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->d()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isResponseAvailable(I)Z
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 180
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public final isSecure()Z
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public final isStale()Z
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->d()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isStale()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 3

    .prologue
    .line 379
    if-nez p2, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_0
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_1

    .line 386
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 388
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protocol layering without a tunnel not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isLayered()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple protocol layering not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 399
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 400
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    iget-object v2, p0, Lorg/apache/http/impl/conn/f;->b:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-interface {v2, v0, v1, p1, p2}, Lorg/apache/http/conn/ClientConnectionOperator;->updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 403
    monitor-enter p0

    .line 404
    :try_start_2
    iget-object v1, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v1, :cond_5

    .line 405
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 409
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 407
    :cond_5
    :try_start_3
    iget-object v1, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    .line 408
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 409
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public final markReusable()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/f;->d:Z

    .line 424
    return-void
.end method

.method public final open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 7

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    if-nez p3, :cond_1

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 286
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    .line 291
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v6

    .line 294
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->b:Lorg/apache/http/conn/ClientConnectionOperator;

    if-eqz v6, :cond_4

    move-object v2, v6

    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/http/conn/ClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 300
    monitor-enter p0

    .line 301
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_5

    .line 302
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :cond_4
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    goto :goto_0

    .line 304
    :cond_5
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 305
    if-nez v6, :cond_6

    .line 306
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    .line 310
    :goto_1
    monitor-exit p0

    return-void

    .line 308
    :cond_6
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public final receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 186
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 187
    return-void
.end method

.method public final receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final releaseConnection()V
    .locals 4

    .prologue
    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_0

    .line 445
    monitor-exit p0

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->a:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v2, p0, Lorg/apache/http/impl/conn/f;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 197
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 198
    return-void
.end method

.method public final sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 204
    return-void
.end method

.method public final setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .prologue
    .line 435
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 436
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/conn/f;->e:J

    .line 440
    :goto_0
    return-void

    .line 438
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/f;->e:J

    goto :goto_0
.end method

.method public final setSocketTimeout(I)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->e()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->setSocketTimeout(I)V

    .line 161
    return-void
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lorg/apache/http/impl/conn/f;->f()Lorg/apache/http/impl/conn/d;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/d;->setState(Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public final shutdown()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 135
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 136
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    .line 138
    :cond_0
    return-void
.end method

.method public final tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 2

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Next proxy amy not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    if-nez p3, :cond_1

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_2

    .line 357
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 364
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 368
    monitor-enter p0

    .line 369
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_4

    .line 370
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    .line 374
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public final tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 3

    .prologue
    .line 315
    if-nez p2, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 324
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already tunnelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 332
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 333
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 337
    monitor-enter p0

    .line 338
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    if-nez v0, :cond_4

    .line 339
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 341
    :cond_4
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/f;->c:Lorg/apache/http/impl/conn/d;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/d;->a()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 343
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public final unmarkReusable()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/f;->d:Z

    .line 428
    return-void
.end method
