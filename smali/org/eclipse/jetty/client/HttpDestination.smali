.class public Lorg/eclipse/jetty/client/HttpDestination;
.super Ljava/lang/Object;
.source "HttpDestination.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _address:Lorg/eclipse/jetty/client/Address;

.field private _authorizations:Lorg/eclipse/jetty/http/PathMap;

.field private final _client:Lorg/eclipse/jetty/client/HttpClient;

.field private final _connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/client/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private _cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/http/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final _hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private final _idle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/client/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _maxConnections:I

.field private volatile _maxQueueSize:I

.field private _newConnection:I

.field private final _newQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _pendingConnections:I

.field private volatile _proxy:Lorg/eclipse/jetty/client/Address;

.field private _proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

.field private final _queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/client/HttpExchange;",
            ">;"
        }
    .end annotation
.end field

.field private final _ssl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;Lorg/eclipse/jetty/client/Address;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    .line 65
    iput v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 66
    iput v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 76
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    .line 77
    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    .line 78
    iput-boolean p3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getMaxConnectionsPerAddress()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getMaxQueueSizePerAddress()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    .line 81
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v2

    iget-boolean v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1bb

    :goto_0
    if-eq v2, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 85
    return-void

    .line 82
    :cond_1
    const/16 v1, 0x50

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    return-object v0
.end method

.method private getConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 7

    .prologue
    const-wide/16 v4, 0xc8

    .line 178
    const/4 v1, 0x0

    move-object v0, v1

    .line 180
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v1

    if-nez v1, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    .line 182
    const/4 v0, 0x0

    .line 183
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/2addr v2, v3

    .line 186
    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    if-ge v2, v3, :cond_0

    .line 188
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 198
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    .line 199
    instance-of v2, v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    if-eqz v2, :cond_1

    .line 201
    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_1
    :try_start_2
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    :catch_0
    move-exception v0

    .line 208
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 215
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 216
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 217
    sub-long/2addr p1, v4

    move-object v0, v1

    .line 222
    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 221
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 224
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 225
    :cond_4
    return-object v0
.end method


# virtual methods
.method public addAuthorization(Ljava/lang/String;Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 1

    .prologue
    .line 157
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 644
    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 648
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected doSend(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 515
    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_cookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpCookie;

    .line 518
    if-nez v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 521
    :cond_0
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 526
    :cond_1
    if-eqz v1, :cond_2

    .line 527
    const-string v0, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_authorizations:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/security/Authentication;

    .line 534
    if-eqz v0, :cond_3

    .line 535
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/security/Authentication;->setCredentials(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 540
    :cond_3
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/HttpExchange;->scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 542
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v0

    .line 543
    if-eqz v0, :cond_5

    .line 545
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 563
    :cond_4
    :goto_2
    return-void

    .line 549
    :cond_5
    const/4 v0, 0x0

    .line 550
    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    if-ne v1, v2, :cond_6

    .line 553
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queue full for address "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 555
    :cond_6
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    if-ge v1, v2, :cond_7

    .line 557
    const/4 v0, 0x1

    .line 558
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 560
    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    goto :goto_2
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 668
    monitor-enter p0

    .line 670
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 671
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 672
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected exchangeExpired(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1

    .prologue
    .line 569
    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 572
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAddress()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getConnections()I
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHostHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_hostHeader:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method public getHttpClient()Lorg/eclipse/jetty/client/HttpClient;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    return-object v0
.end method

.method public getIdleConnection()Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 238
    move-object v0, v1

    .line 241
    :cond_0
    monitor-enter p0

    .line 243
    if-eqz v0, :cond_1

    .line 245
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V

    move-object v0, v1

    .line 249
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 250
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 251
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-nez v0, :cond_3

    .line 262
    :goto_0
    return-object v1

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->cancelIdleTimeout()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 262
    goto :goto_0
.end method

.method public getIdleConnections()I
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    return v0
.end method

.method public getMaxQueueSize()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    return v0
.end method

.method public getProxy()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-object v0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_ssl:Z

    return v0
.end method

.method public onConnectionFailed(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    const/4 v2, 0x0

    .line 291
    monitor-enter p0

    .line 293
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 294
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    if-lez v0, :cond_2

    .line 297
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    move v0, v1

    .line 310
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 315
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    :cond_1
    :goto_1
    return-void

    .line 299
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    .line 302
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 307
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const/4 v0, 0x1

    move-object p1, v2

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    sget-object v1, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move v0, v1

    move-object p1, v2

    goto :goto_0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 330
    monitor-enter p0

    .line 332
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    .line 336
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/HttpEventListener;->onException(Ljava/lang/Throwable;)V

    .line 339
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

.method public onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 5

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 346
    monitor-enter p0

    .line 348
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 349
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    if-lez v0, :cond_1

    .line 354
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newConnection:I

    .line 378
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    if-eqz p1, :cond_0

    .line 384
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_newQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    :cond_0
    :goto_1
    return-void

    .line 356
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 358
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setIdleTimeout()V

    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    if-eqz v1, :cond_3

    .line 366
    check-cast v0, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    .line 367
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpExchange;

    .line 368
    new-instance v3, Lorg/eclipse/jetty/client/h;

    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, v1}, Lorg/eclipse/jetty/client/h;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/Address;Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 369
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/client/h;->setAddress(Lorg/eclipse/jetty/client/Address;)V

    .line 370
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V

    move-object p1, v2

    .line 371
    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    .line 375
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v2

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    sget-object v1, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public resend(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getEventListener()Lorg/eclipse/jetty/client/HttpEventListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/client/HttpEventListener;->onRetry()V

    .line 505
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->reset()V

    .line 506
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->doSend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 507
    return-void
.end method

.method public reserveConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;
    .locals 3

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;->getConnection(J)Lorg/eclipse/jetty/client/AbstractHttpConnection;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setReserved(Z)V

    .line 233
    :cond_0
    return-object v0
.end method

.method public returnConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->isReserved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setReserved(Z)V

    .line 398
    :cond_0
    if-eqz p2, :cond_1

    .line 402
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    :cond_2
    :goto_1
    return-void

    .line 404
    :catch_0
    move-exception v1

    .line 406
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 413
    :cond_3
    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 419
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setIdleTimeout()V

    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 428
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 424
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpExchange;

    .line 425
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 433
    :cond_5
    monitor-enter p0

    .line 435
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 437
    const/4 v0, 0x1

    .line 438
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    goto :goto_1

    .line 438
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V
    .locals 2

    .prologue
    .line 448
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    int-to-long v0, v0

    .line 449
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->onIdleExpired(J)V

    .line 451
    const/4 v0, 0x0

    .line 452
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 457
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const/4 v0, 0x1

    .line 459
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->startNewConnection()V

    .line 463
    :cond_1
    return-void

    .line 448
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected send(Lorg/eclipse/jetty/client/AbstractHttpConnection;Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .prologue
    .line 577
    monitor-enter p0

    .line 581
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->send(Lorg/eclipse/jetty/client/HttpExchange;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/HttpExchange;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 584
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 585
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->returnIdleConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 587
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 7

    .prologue
    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getRegisteredListeners()Ljava/util/LinkedList;

    move-result-object v3

    .line 469
    if-eqz v3, :cond_0

    .line 472
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    .line 474
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 479
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/eclipse/jetty/client/HttpDestination;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lorg/eclipse/jetty/client/HttpExchange;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 480
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/client/HttpEventListener;

    .line 481
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v1

    .line 485
    new-instance v2, Lorg/eclipse/jetty/client/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to instantiate registered listener for destination: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lorg/eclipse/jetty/client/g;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->hasRealms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    new-instance v0, Lorg/eclipse/jetty/client/security/SecurityListener;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/client/security/SecurityListener;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/HttpExchange;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpExchange;->setEventListener(Lorg/eclipse/jetty/client/HttpEventListener;)V

    .line 499
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->doSend(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 500
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    .line 115
    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    .line 125
    return-void
.end method

.method public setProxy(Lorg/eclipse/jetty/client/Address;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxy:Lorg/eclipse/jetty/client/Address;

    .line 620
    return-void
.end method

.method public setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    .line 635
    return-void
.end method

.method protected startNewConnection()V
    .locals 2

    .prologue
    .line 271
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_pendingConnections:I

    .line 274
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_client:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v0, v0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/e;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/client/e;->a(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    sget-object v1, Lorg/eclipse/jetty/client/HttpDestination;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 282
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized toDetailString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 605
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->toDetailString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, " IDLE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 598
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    :try_start_4
    const-string v0, "--"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    const-string v0, "HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_address:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/Address;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxConnections:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_idle:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_queue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lorg/eclipse/jetty/client/HttpDestination;->_maxQueueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
