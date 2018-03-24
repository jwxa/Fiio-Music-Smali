.class public abstract Lorg/eclipse/jetty/server/AbstractConnector;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "AbstractConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;
.implements Lorg/eclipse/jetty/server/Connector;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _acceptQueueSize:I

.field private _acceptorPriorityOffset:I

.field private transient _acceptorThreads:[Ljava/lang/Thread;

.field private _acceptors:I

.field protected final _buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

.field private _confidentialPort:I

.field private _confidentialScheme:Ljava/lang/String;

.field private final _connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private final _connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

.field private _forwarded:Z

.field private _forwardedCipherSuiteHeader:Ljava/lang/String;

.field private _forwardedForHeader:Ljava/lang/String;

.field private _forwardedHostHeader:Ljava/lang/String;

.field private _forwardedProtoHeader:Ljava/lang/String;

.field private _forwardedServerHeader:Ljava/lang/String;

.field private _forwardedSslSessionIdHeader:Ljava/lang/String;

.field private _host:Ljava/lang/String;

.field private _hostHeader:Ljava/lang/String;

.field private _integralPort:I

.field private _integralScheme:Ljava/lang/String;

.field protected _lowResourceMaxIdleTime:I

.field protected _maxIdleTime:I

.field private _name:Ljava/lang/String;

.field private _port:I

.field private final _requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

.field private _reuseAddress:Z

.field private _server:Lorg/eclipse/jetty/server/Server;

.field protected _soLingerTime:I

.field private final _statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

.field private _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _useDNS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 67
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_port:I

    .line 68
    const-string v0, "https"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralScheme:Ljava/lang/String;

    .line 69
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralPort:I

    .line 70
    const-string v0, "https"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    .line 71
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialPort:I

    .line 72
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptQueueSize:I

    .line 73
    iput v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptors:I

    .line 74
    iput v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    .line 79
    const-string v0, "X-Forwarded-Host"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    .line 80
    const-string v0, "X-Forwarded-Server"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    .line 81
    const-string v0, "X-Forwarded-For"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    .line 82
    const-string v0, "X-Forwarded-Proto"

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedProtoHeader:Ljava/lang/String;

    .line 85
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_reuseAddress:Z

    .line 87
    const v0, 0x30d40

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_maxIdleTime:I

    .line 88
    iput v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_lowResourceMaxIdleTime:I

    .line 89
    iput v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    new-instance v0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    .line 98
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 100
    new-instance v0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    .line 102
    new-instance v0, Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->addBean(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/AbstractConnector;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    return v0
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private updateNotEqual(Ljava/util/concurrent/atomic/AtomicLong;JJ)V
    .locals 4

    .prologue
    .line 1214
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1215
    :goto_0
    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 1217
    invoke-virtual {p1, v0, v1, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0

    .line 1221
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract accept(I)V
.end method

.method protected checkForwardedHeaders(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 413
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v2

    .line 416
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedCipherSuiteHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedCipherSuiteHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    if-eqz v0, :cond_0

    .line 420
    const-string v3, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, v3, v0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedSslSessionIdHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedSslSessionIdHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_1

    .line 427
    const-string v3, "javax.servlet.request.ssl_session_id"

    invoke-virtual {p2, v3, v0}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string v0, "https"

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 433
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedHostHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedServerHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedForHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getForwardedProtoHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lorg/eclipse/jetty/server/AbstractConnector;->getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    iget-object v6, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 441
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setServerName(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setServerPort(I)V

    .line 444
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    .line 460
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setRemoteAddr(Ljava/lang/String;)V

    .line 465
    iget-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_useDNS:Z

    if-eqz v2, :cond_3

    .line 469
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    :cond_3
    :goto_1
    if-nez v1, :cond_8

    :goto_2
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setRemoteHost(Ljava/lang/String;)V

    .line 480
    :cond_4
    if-eqz v5, :cond_5

    .line 482
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 484
    :cond_5
    return-void

    .line 446
    :cond_6
    if-eqz v3, :cond_7

    .line 449
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, v4, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setServerName(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setServerPort(I)V

    .line 452
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    goto :goto_0

    .line 454
    :cond_7
    if-eqz v4, :cond_2

    .line 457
    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/server/Request;->setServerName(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :catch_0
    move-exception v2

    .line 473
    sget-object v3, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 477
    :cond_8
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected configure(Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 392
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    if-ltz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    iget v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 401
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 399
    sget-object v1, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected connectionClosed(Lorg/eclipse/jetty/io/Connection;)V
    .locals 6

    .prologue
    .line 1150
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Connection;->onClose()V

    .line 1152
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Connection;->getTimeStamp()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1156
    instance-of v0, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequests()I

    move-result v0

    .line 1157
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 1158
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->decrement()V

    .line 1159
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    goto :goto_0

    .line 1156
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected connectionOpened(Lorg/eclipse/jetty/io/Connection;)V
    .locals 4

    .prologue
    .line 1135
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->increment()V

    goto :goto_0
.end method

.method protected connectionUpgraded(Lorg/eclipse/jetty/io/Connection;Lorg/eclipse/jetty/io/Connection;)V
    .locals 3

    .prologue
    .line 1144
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    instance-of v0, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequests()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->set(J)V

    .line 1145
    return-void

    .line 1144
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->isForwarded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/AbstractConnector;->checkForwardedHeaders(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 408
    :cond_0
    return-void
.end method

.method protected doStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->open()V

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 321
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/AbstractConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 324
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    .line 327
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getAcceptors()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    move v0, v1

    .line 331
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 332
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    new-instance v3, Lorg/eclipse/jetty/server/a;

    invoke-direct {v3, p0, v0}, Lorg/eclipse/jetty/server/a;-><init>(Lorg/eclipse/jetty/server/AbstractConnector;I)V

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!accepting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "insufficient threads configured for {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Started {}"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method protected doStop()V
    .locals 4

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 357
    monitor-enter p0

    .line 359
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 361
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    if-eqz v1, :cond_1

    .line 364
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 366
    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :catch_0
    move-exception v0

    .line 351
    sget-object v1, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 370
    :cond_1
    return-void
.end method

.method public getAcceptQueueSize()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptQueueSize:I

    return v0
.end method

.method public getAcceptorPriorityOffset()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    return v0
.end method

.method public getAcceptors()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptors:I

    return v0
.end method

.method public getConfidentialPort()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialPort:I

    return v0
.end method

.method public getConfidentialScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getConnections()I
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsDurationMax()J
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsDurationMean()D
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsDurationStdDev()D
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsDurationTotal()J
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsOpen()I
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getCurrent()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsOpenMax()I
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsRequestsMax()I
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMax()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getConnectionsRequestsMean()D
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectionsRequestsStdDev()D
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getStdDev()D

    move-result-wide v0

    return-wide v0
.end method

.method public getForwardedCipherSuiteHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedCipherSuiteHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedForHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedHostHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedProtoHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedProtoHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedServerHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getForwardedSslSessionIdHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedSslSessionIdHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getIntegralPort()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralPort:I

    return v0
.end method

.method public getIntegralScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected getLeftMostFieldValue(Lorg/eclipse/jetty/http/HttpFields;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 489
    if-nez p2, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-object v0

    .line 492
    :cond_1
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_0

    .line 497
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 499
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 502
    goto :goto_0

    .line 506
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLowResourceMaxIdleTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLowResourcesMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getLowResourcesMaxIdleTime()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_lowResourceMaxIdleTime:I

    return v0
.end method

.method public getMaxBuffers()I
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_maxIdleTime:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0.0.0.0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getPort()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    .line 978
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    return-object v0

    .line 977
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_port:I

    return v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferSize()I

    move-result v0

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderSize()I

    move-result v0

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequests()I
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getTotal()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_useDNS:Z

    return v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferSize()I

    move-result v0

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderSize()I

    move-result v0

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_reuseAddress:Z

    return v0
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    return-object v0
.end method

.method public getSoLingerTime()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    return v0
.end method

.method public getStatsOn()Z
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatsOnMs()J
    .locals 4

    .prologue
    .line 1127
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1129
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 2

    .prologue
    .line 566
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwarded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwarded()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwarded:Z

    return v0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public isLowResources()Z
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    .line 1208
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->isLowOnThreads()Z

    move-result v0

    goto :goto_0
.end method

.method public join()V
    .locals 4

    .prologue
    .line 376
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorThreads:[Ljava/lang/Thread;

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    if-eqz v1, :cond_1

    .line 381
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 382
    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 384
    :cond_1
    return-void
.end method

.method public persist(Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public setAcceptQueueSize(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptQueueSize:I

    .line 275
    return-void
.end method

.method public setAcceptorPriorityOffset(I)V
    .locals 0

    .prologue
    .line 1181
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptorPriorityOffset:I

    .line 1182
    return-void
.end method

.method public setAcceptors(I)V
    .locals 3

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    .line 294
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Acceptors should be <=2*availableProcessors: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_acceptors:I

    .line 296
    return-void
.end method

.method public setConfidentialPort(I)V
    .locals 0

    .prologue
    .line 576
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialPort:I

    .line 577
    return-void
.end method

.method public setConfidentialScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_confidentialScheme:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setForwarded(Z)V
    .locals 4

    .prologue
    .line 654
    if-eqz p1, :cond_0

    .line 655
    sget-object v0, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "{} is forwarded"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwarded:Z

    .line 657
    return-void
.end method

.method public setForwardedCipherSuiteHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedCipherSuiteHeader:Ljava/lang/String;

    .line 782
    return-void
.end method

.method public setForwardedForHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 737
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedForHeader:Ljava/lang/String;

    .line 738
    return-void
.end method

.method public setForwardedHostHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedHostHeader:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public setForwardedProtoHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedProtoHeader:Ljava/lang/String;

    .line 763
    return-void
.end method

.method public setForwardedServerHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedServerHeader:Ljava/lang/String;

    .line 718
    return-void
.end method

.method public setForwardedSslSessionIdHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_forwardedSslSessionIdHeader:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_host:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setHostHeader(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_hostHeader:Ljava/lang/String;

    .line 676
    return-void
.end method

.method public setIntegralPort(I)V
    .locals 0

    .prologue
    .line 596
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralPort:I

    .line 597
    return-void
.end method

.method public setIntegralScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_integralScheme:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public final setLowResourceMaxIdleTime(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/AbstractConnector;->setLowResourcesMaxIdleTime(I)V

    .line 247
    return-void
.end method

.method public setLowResourcesMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_lowResourceMaxIdleTime:I

    .line 224
    return-void
.end method

.method public setMaxBuffers(I)V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setMaxBuffers(I)V

    .line 886
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_maxIdleTime:I

    .line 205
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_name:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_port:I

    .line 165
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferSize(I)V

    .line 811
    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 866
    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderSize(I)V

    .line 821
    return-void
.end method

.method public setResolveNames(Z)V
    .locals 0

    .prologue
    .line 626
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_useDNS:Z

    .line 627
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferSize(I)V

    .line 831
    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 871
    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderSize(I)V

    .line 841
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    .prologue
    .line 1200
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_reuseAddress:Z

    .line 1201
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_server:Lorg/eclipse/jetty/server/Server;

    .line 124
    return-void
.end method

.method public setSoLingerTime(I)V
    .locals 0

    .prologue
    .line 305
    iput p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_soLingerTime:I

    .line 306
    return-void
.end method

.method public setStatsOn(Z)V
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 1102
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1105
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    sget-object v2, Lorg/eclipse/jetty/server/AbstractConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Statistics on = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->statsReset()V

    .line 1109
    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->removeBean(Ljava/lang/Object;)Z

    .line 141
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/AbstractConnector;->addBean(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public statsReset()V
    .locals 6

    .prologue
    .line 1092
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_statsStartedAt:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/AbstractConnector;->updateNotEqual(Ljava/util/concurrent/atomic/AtomicLong;JJ)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_requestStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 1095
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionStats:Lorg/eclipse/jetty/util/statistic/CounterStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset()V

    .line 1096
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractConnector;->_connectionDurationStats:Lorg/eclipse/jetty/util/statistic/SampleStatistic;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->reset()V

    .line 1097
    return-void
.end method

.method public stopAccept(I)V
    .locals 0

    .prologue
    .line 615
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 897
    const-string v1, "%s@%s:%d"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0.0.0.0"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getPort()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractConnector;->getLocalPort()I

    move-result v0

    goto :goto_1
.end method
