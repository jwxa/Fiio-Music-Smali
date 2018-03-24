.class Lg/a/a/v;
.super Ljava/lang/Object;
.source "SSLStreams.java"


# static fields
.field static i:J

.field static j:J

.field static final synthetic n:Z


# instance fields
.field a:Ljavax/net/ssl/SSLContext;

.field b:Ljava/nio/channels/SocketChannel;

.field c:Lg/a/a/am;

.field d:Lg/a/a/ae;

.field e:Ljavax/net/ssl/SSLEngine;

.field f:Lg/a/a/y;

.field g:Lg/a/a/aa;

.field h:Lg/a/a/z;

.field k:Ljava/util/concurrent/locks/Lock;

.field l:I

.field m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-class v0, Lg/a/a/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/v;->n:Z

    .line 38
    invoke-static {}, Lg/a/a/ad;->a()J

    move-result-wide v0

    sput-wide v0, Lg/a/a/v;->i:J

    .line 39
    invoke-static {}, Lg/a/a/ad;->f()J

    move-result-wide v0

    sput-wide v0, Lg/a/a/v;->j:J

    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lg/a/a/ae;Ljavax/net/ssl/SSLContext;Ljava/nio/channels/SocketChannel;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    .line 45
    iput-object p1, p0, Lg/a/a/v;->d:Lg/a/a/ae;

    .line 46
    iput-object p1, p0, Lg/a/a/v;->c:Lg/a/a/am;

    .line 47
    iput-object p2, p0, Lg/a/a/v;->a:Ljavax/net/ssl/SSLContext;

    .line 48
    iput-object p3, p0, Lg/a/a/v;->b:Ljava/nio/channels/SocketChannel;

    .line 49
    invoke-virtual {p3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 51
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    iput-object v1, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    .line 52
    iget-object v1, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 53
    invoke-virtual {p1}, Lg/a/a/ae;->b()Lcom/d/a/a/n;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    new-instance v2, Lg/a/a/ab;

    invoke-direct {v2, p0, v1, v0}, Lg/a/a/ab;-><init>(Lg/a/a/v;Lcom/d/a/a/n;Ljava/net/InetSocketAddress;)V

    invoke-virtual {v2}, Lg/a/a/ab;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Lg/a/a/ab;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Lg/a/a/ab;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Lg/a/a/ab;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    invoke-virtual {v2}, Lg/a/a/ab;->b()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Lg/a/a/ab;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :cond_1
    :goto_1
    new-instance v0, Lg/a/a/y;

    iget-object v1, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-direct {v0, p0, p3, v1}, Lg/a/a/y;-><init>(Lg/a/a/v;Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V

    iput-object v0, p0, Lg/a/a/v;->f:Lg/a/a/y;

    .line 56
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lg/a/a/v;Lg/a/a/x;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lg/a/a/v;->a(Lg/a/a/x;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lg/a/a/v;Ljava/nio/ByteBuffer;ZLg/a/a/x;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lg/a/a/v;->a(Ljava/nio/ByteBuffer;ZLg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private a(Lg/a/a/x;I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lg/a/a/v;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 162
    :cond_0
    monitor-enter p0

    .line 164
    :try_start_0
    sget-object v0, Lg/a/a/x;->a:Lg/a/a/x;

    if-ne p1, v0, :cond_3

    .line 165
    iget v0, p0, Lg/a/a/v;->m:I

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    iput v0, p0, Lg/a/a/v;->m:I

    .line 169
    :cond_1
    iget v0, p0, Lg/a/a/v;->m:I

    if-le p2, v0, :cond_2

    .line 170
    iput p2, p0, Lg/a/a/v;->m:I

    .line 172
    :cond_2
    iget v0, p0, Lg/a/a/v;->m:I

    .line 183
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 174
    :cond_3
    iget v0, p0, Lg/a/a/v;->l:I

    if-nez v0, :cond_4

    .line 175
    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    iput v0, p0, Lg/a/a/v;->l:I

    .line 178
    :cond_4
    iget v0, p0, Lg/a/a/v;->l:I

    if-le p2, v0, :cond_5

    .line 179
    iput p2, p0, Lg/a/a/v;->l:I

    .line 181
    :cond_5
    iget v0, p0, Lg/a/a/v;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/nio/ByteBuffer;ZLg/a/a/x;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 198
    invoke-direct {p0, p3, v0}, Lg/a/a/v;->a(Lg/a/a/x;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    if-eqz p2, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 202
    :cond_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    .locals 4

    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 425
    sget-object v0, Lg/a/a/x;->b:Lg/a/a/x;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lg/a/a/v;->a(Lg/a/a/x;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 427
    :goto_0
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v1, :cond_3

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq p1, v1, :cond_3

    .line 429
    const/4 v1, 0x0

    .line 430
    sget-object v2, Lg/a/a/w;->a:[I

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 455
    :cond_0
    :goto_1
    iget-object v1, v1, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    goto :goto_0

    .line 433
    :goto_2
    :pswitch_0
    iget-object v1, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 437
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 458
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    throw v0

    .line 441
    :cond_1
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 442
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 443
    iget-object v1, p0, Lg/a/a/v;->f:Lg/a/a/y;

    invoke-virtual {v1, v0}, Lg/a/a/y;->a(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v1

    goto :goto_1

    .line 447
    :pswitch_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 448
    iget-object v1, p0, Lg/a/a/v;->f:Lg/a/a/y;

    invoke-virtual {v1, v0}, Lg/a/a/y;->b(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v1

    .line 449
    iget-object v2, v1, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    if-eq v2, v0, :cond_2

    .line 450
    iget-object v0, v1, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    .line 452
    :cond_2
    sget-boolean v2, Lg/a/a/v;->n:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_3
    iget-object v0, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    return-void

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e()V
    .locals 3

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 405
    sget-object v0, Lg/a/a/x;->b:Lg/a/a/x;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lg/a/a/v;->a(Lg/a/a/x;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 408
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 409
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 410
    iget-object v1, p0, Lg/a/a/v;->f:Lg/a/a/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lg/a/a/y;->a(Ljava/nio/ByteBuffer;Z)Lg/a/a/ac;

    move-result-object v1

    .line 411
    iget-object v1, v1, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 413
    iget-object v0, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg/a/a/v;->k:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 414
    throw v0
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)Lg/a/a/ac;
    .locals 3

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 353
    iget-object v0, p0, Lg/a/a/v;->f:Lg/a/a/y;

    invoke-virtual {v0, p1}, Lg/a/a/y;->a(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v0

    .line 354
    iget-object v1, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 355
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v2, :cond_2

    .line 356
    invoke-direct {p0}, Lg/a/a/v;->e()V

    .line 366
    :cond_1
    return-object v0

    .line 359
    :cond_2
    iget-object v1, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    .line 360
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v1, v2, :cond_0

    .line 363
    invoke-direct {p0, v1}, Lg/a/a/v;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lg/a/a/v;->f:Lg/a/a/y;

    invoke-static {}, Lg/a/a/y;->a()V

    .line 105
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;)Lg/a/a/ac;
    .locals 4

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    sget-boolean v1, Lg/a/a/v;->n:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 388
    :cond_0
    iget-object v2, v1, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    .line 389
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v3, :cond_1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v2, v3, :cond_1

    .line 392
    invoke-direct {p0, v2}, Lg/a/a/v;->a(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V

    .line 379
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-nez v2, :cond_3

    .line 380
    iget-object v1, p0, Lg/a/a/v;->f:Lg/a/a/y;

    invoke-virtual {v1, v0}, Lg/a/a/y;->b(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v1

    .line 381
    iget-object v2, v1, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    if-eq v2, v0, :cond_2

    iget-object v0, v1, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    .line 382
    :cond_2
    iget-object v2, v1, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    .line 383
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_0

    .line 384
    invoke-direct {p0}, Lg/a/a/v;->e()V

    .line 396
    :goto_1
    return-object v1

    .line 395
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_1

    :cond_4
    move-object v1, v0

    move-object v0, p1

    goto :goto_0
.end method

.method final b()Lg/a/a/z;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lg/a/a/v;->h:Lg/a/a/z;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lg/a/a/z;

    invoke-direct {v0, p0}, Lg/a/a/z;-><init>(Lg/a/a/v;)V

    iput-object v0, p0, Lg/a/a/v;->h:Lg/a/a/z;

    .line 114
    :cond_0
    iget-object v0, p0, Lg/a/a/v;->h:Lg/a/a/z;

    return-object v0
.end method

.method final c()Lg/a/a/aa;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lg/a/a/v;->g:Lg/a/a/aa;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lg/a/a/aa;

    invoke-direct {v0, p0}, Lg/a/a/aa;-><init>(Lg/a/a/v;)V

    iput-object v0, p0, Lg/a/a/v;->g:Lg/a/a/aa;

    .line 124
    :cond_0
    iget-object v0, p0, Lg/a/a/v;->g:Lg/a/a/aa;

    return-object v0
.end method

.method final d()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method
