.class public Lorg/eclipse/jetty/client/HttpClient;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "HttpClient.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;
.implements Lorg/eclipse/jetty/util/Attributes;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field public static final CONNECTOR_SELECT_CHANNEL:I = 0x2

.field public static final CONNECTOR_SOCKET:I


# instance fields
.field private _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private final _buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

.field private _connectBlocking:Z

.field private _connectTimeout:I

.field _connector:Lorg/eclipse/jetty/client/e;

.field private _connectorType:I

.field private _destinations:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/eclipse/jetty/client/Address;",
            "Lorg/eclipse/jetty/client/HttpDestination;",
            ">;"
        }
    .end annotation
.end field

.field private _idleTimeout:J

.field private _idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

.field private _maxConnectionsPerAddress:I

.field private _maxQueueSizePerAddress:I

.field private _maxRedirects:I

.field private _maxRetries:I

.field private _noProxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _proxy:Lorg/eclipse/jetty/client/Address;

.field private _proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

.field private _realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

.field private _registeredListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

.field _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _timeout:J

.field private _timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

.field private _useDirectBuffers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    .line 80
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    .line 81
    iput-boolean v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    .line 82
    iput v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    .line 83
    iput v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    .line 87
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    .line 88
    const-wide/32 v0, 0x4e200

    iput-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    .line 89
    const v0, 0x124f8

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    .line 90
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 91
    new-instance v0, Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/Timeout;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    .line 96
    const/16 v0, 0x14

    iput v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    .line 103
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    .line 136
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/client/HttpClient;)Lorg/eclipse/jetty/util/thread/Timeout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    return-object v0
.end method

.method private setBufferTypes()V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 115
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 122
    :goto_0
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 125
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 120
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    sget-object v1, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V

    .line 122
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_1

    .line 122
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_0
.end method


# virtual methods
.method public cancel(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 283
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 236
    return-void
.end method

.method protected doStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 408
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-wide v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow()J

    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-wide v2, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->setDuration(J)V

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->setNow()J

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/eclipse/jetty/client/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/client/f;-><init>(B)V

    .line 418
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setMaxThreads(I)V

    .line 419
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setDaemon(Z)V

    .line 420
    const-string v1, "HttpClient"

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setName(Ljava/lang/String;)V

    .line 421
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;Z)Z

    .line 425
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/SelectConnector;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    :goto_0
    check-cast v0, Lorg/eclipse/jetty/client/e;

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/e;

    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/e;

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;Z)Z

    .line 428
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStart()V

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    new-instance v1, Lorg/eclipse/jetty/client/d;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/client/d;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    .line 448
    return-void

    .line 425
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/client/m;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/m;-><init>(Lorg/eclipse/jetty/client/HttpClient;)V

    goto :goto_0
.end method

.method protected doStop()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 455
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->close()V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V

    .line 458
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->cancelAll()V

    .line 460
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    instance-of v0, v0, Lorg/eclipse/jetty/client/f;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connector:Lorg/eclipse/jetty/client/e;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    return v0
.end method

.method public getConnectorType()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    return v0
.end method

.method public getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;
    .locals 3

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Remote socket address cannot be null."

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 245
    if-nez v0, :cond_3

    .line 247
    new-instance v1, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-direct {v1, p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;-><init>(Lorg/eclipse/jetty/client/HttpClient;Lorg/eclipse/jetty/client/Address;Z)V

    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/Address;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->setProxy(Lorg/eclipse/jetty/client/Address;)V

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V

    .line 254
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_destinations:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 255
    if-eqz v0, :cond_4

    .line 258
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public getIdleTimeout()J
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    return-wide v0
.end method

.method public getKeyManagerAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBuffers()I
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerAddress()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    return v0
.end method

.method public getMaxQueueSizePerAddress()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    return v0
.end method

.method public getNoProxy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Lorg/eclipse/jetty/client/Address;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    return-object v0
.end method

.method public getProxyAuthentication()Lorg/eclipse/jetty/client/security/Authentication;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    return-object v0
.end method

.method public getRealmResolver()Lorg/eclipse/jetty/client/security/RealmResolver;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    return-object v0
.end method

.method public getRegisteredListeners()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferSize()I

    move-result v0

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderSize()I

    move-result v0

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferSize()I

    move-result v0

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderSize()I

    move-result v0

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;

    move-result-object v0

    return-object v0
.end method

.method protected getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpClient;->getTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 544
    iget-wide v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    return-wide v0
.end method

.method public getTrustManagerAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreLocation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 823
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseDirectBuffers()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    return v0
.end method

.method public hasRealms()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isConnectBlocking()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    return v0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxRedirects()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    return v0
.end method

.method public maxRetries()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    return v0
.end method

.method public registerListener(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_registeredListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 265
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/thread/Timeout;->getDuration()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {v0, p1, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 271
    return-void
.end method

.method public scheduleIdle(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeoutQ:Lorg/eclipse/jetty/util/thread/Timeout;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 277
    return-void
.end method

.method public send(Lorg/eclipse/jetty/client/HttpExchange;)V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lorg/eclipse/jetty/http/HttpSchemes;->HTTPS_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getScheme()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->equalsIgnoreCase(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/HttpExchange;->setStatus(I)Z

    .line 164
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpExchange;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/client/HttpClient;->getDestination(Lorg/eclipse/jetty/client/Address;Z)Lorg/eclipse/jetty/client/HttpDestination;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->send(Lorg/eclipse/jetty/client/HttpExchange;)V

    .line 166
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public setConnectBlocking(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectBlocking:Z

    .line 157
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 571
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectTimeout:I

    .line 572
    return-void
.end method

.method public setConnectorType(I)V
    .locals 0

    .prologue
    .line 378
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_connectorType:I

    .line 379
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 380
    return-void
.end method

.method public setIdleTimeout(J)V
    .locals 1

    .prologue
    .line 513
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_idleTimeout:J

    .line 514
    return-void
.end method

.method public setKeyManagerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public setKeyManagerPassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    .line 796
    return-void
.end method

.method public setKeyStoreInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreInputStream(Ljava/io/InputStream;)V

    .line 782
    return-void
.end method

.method public setKeyStoreLocation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 769
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public setKeyStorePassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public setKeyStoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public setMaxBuffers(I)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setMaxBuffers(I)V

    .line 723
    return-void
.end method

.method public setMaxConnectionsPerAddress(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxConnectionsPerAddress:I

    .line 392
    return-void
.end method

.method public setMaxQueueSizePerAddress(I)V
    .locals 0

    .prologue
    .line 401
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxQueueSizePerAddress:I

    .line 402
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 0

    .prologue
    .line 637
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRedirects:I

    .line 638
    return-void
.end method

.method public setMaxRetries(I)V
    .locals 0

    .prologue
    .line 625
    iput p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_maxRetries:I

    .line 626
    return-void
.end method

.method public setNoProxy(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_noProxy:Ljava/util/Set;

    .line 614
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 872
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProvider(Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method public setProxy(Lorg/eclipse/jetty/client/Address;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxy:Lorg/eclipse/jetty/client/Address;

    .line 584
    return-void
.end method

.method public setProxyAuthentication(Lorg/eclipse/jetty/client/security/Authentication;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_proxyAuthentication:Lorg/eclipse/jetty/client/security/Authentication;

    .line 596
    return-void
.end method

.method public setRealmResolver(Lorg/eclipse/jetty/client/security/RealmResolver;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_realmResolver:Lorg/eclipse/jetty/client/security/RealmResolver;

    .line 304
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBufferSize(I)V

    .line 648
    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 703
    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setRequestHeaderSize(I)V

    .line 658
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBufferSize(I)V

    .line 668
    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V

    .line 708
    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_buffers:Lorg/eclipse/jetty/http/HttpBuffersImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->setResponseHeaderSize(I)V

    .line 678
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/HttpClient;->setTimeout(J)V

    .line 536
    return-void
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->removeBean(Ljava/lang/Object;)Z

    .line 186
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpClient;->addBean(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 553
    iput-wide p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_timeout:J

    .line 554
    return-void
.end method

.method public setTrustManagerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method public setTrustStoreInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreInputStream(Ljava/io/InputStream;)V

    .line 756
    return-void
.end method

.method public setTrustStoreLocation(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpClient;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public setUseDirectBuffers(Z)V
    .locals 0

    .prologue
    .line 362
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/HttpClient;->_useDirectBuffers:Z

    .line 363
    invoke-direct {p0}, Lorg/eclipse/jetty/client/HttpClient;->setBufferTypes()V

    .line 364
    return-void
.end method
