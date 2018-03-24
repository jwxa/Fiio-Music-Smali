.class public Lorg/eclipse/jetty/server/handler/ConnectHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ConnectHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _black:Lorg/eclipse/jetty/util/HostMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/HostMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _connectTimeout:I

.field private volatile _privateThreadPool:Z

.field private final _selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

.field private volatile _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _white:Lorg/eclipse/jetty/util/HostMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/HostMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>(Lorg/eclipse/jetty/server/Handler;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Handler;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 67
    new-instance v0, Lorg/eclipse/jetty/server/handler/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/handler/a;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;B)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    .line 68
    const/16 v0, 0x1388

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    .line 69
    const/16 v0, 0x7530

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    .line 72
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    .line 87
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Handler;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 67
    new-instance v0, Lorg/eclipse/jetty/server/handler/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/handler/a;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;B)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    .line 68
    const/16 v0, 0x1388

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    .line 69
    const/16 v0, 0x7530

    iput v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    .line 72
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/HostMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    .line 92
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p3, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 95
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;-><init>(Lorg/eclipse/jetty/server/Handler;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/handler/ConnectHandler;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    return v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method static synthetic access$300()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->register(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V

    return-void
.end method

.method private add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/HostMap",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 973
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/HostMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 978
    invoke-virtual {p2, v0, v0}, Lorg/eclipse/jetty/util/HostMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_0
    return-void
.end method

.method private connectToServer(Lc/c/c/c;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->connect(Lc/c/c/c;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 358
    return-object v0
.end method

.method private prepareConnections(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 320
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->newProxyToServerConnection(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    move-result-object v6

    .line 321
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->newClientToProxyConnection(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;->setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V

    .line 323
    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->setConnection(Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;)V

    .line 324
    return-object v0
.end method

.method private register(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 419
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->waitReady(J)V

    .line 420
    return-void
.end method

.method private upgradeConnection(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/io/Connection;)V
    .locals 4

    .prologue
    .line 411
    const-string v0, "org.eclipse.jetty.io.Connection"

    invoke-interface {p1, v0, p3}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    const/16 v0, 0x65

    invoke-interface {p2, v0}, Lc/c/c/e;->setStatus(I)V

    .line 413
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Upgraded connection to {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    return-void
.end method


# virtual methods
.method public addBlack(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 922
    return-void
.end method

.method public addWhite(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 912
    return-void
.end method

.method protected connect(Lc/c/c/c;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 6

    .prologue
    .line 372
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 374
    if-nez v1, :cond_0

    .line 376
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Establishing connection to {}:{}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 384
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 385
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Established connection to {}:{}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 390
    sget-object v2, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to establish connection to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 399
    :goto_0
    throw v0

    .line 395
    :catch_1
    move-exception v1

    .line 397
    sget-object v2, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doStart()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 166
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    .line 174
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->start()V

    .line 175
    return-void
.end method

.method protected doStop()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->stop()V

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 183
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 186
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 187
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1015
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 1016
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v0, :cond_0

    .line 1017
    new-array v0, v1, [Ljava/util/Collection;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 1020
    :goto_0
    return-void

    .line 1019
    :cond_0
    new-array v0, v1, [Ljava/util/Collection;

    new-array v1, v4, [Lorg/eclipse/jetty/io/nio/SelectorManager;

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getBeans()Ljava/util/Collection;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    return v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    const-string v0, "CONNECT"

    invoke-interface {p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "CONNECT request for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :try_start_0
    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3, p4, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->handleConnect(Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectHandler "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getUri()Lorg/eclipse/jetty/http/HttpURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0
.end method

.method protected handleAuthentication(Lc/c/c/c;Lc/c/c/e;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method protected handleConnect(Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v5, 0x1f4

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->handleAuthentication(Lc/c/c/c;Lc/c/c/e;Ljava/lang/String;)Z

    move-result v0

    .line 226
    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 230
    :cond_0
    const/16 v0, 0x50

    .line 231
    const/16 v1, 0x3a

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 232
    if-lez v3, :cond_1

    .line 234
    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 235
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object p4, v1

    .line 238
    :cond_1
    invoke-virtual {p0, p4}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->validateDestination(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ProxyHandler: Forbidden destination "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const/16 v0, 0x193

    invoke-interface {p3, v0}, Lc/c/c/e;->setStatus(I)V

    .line 242
    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 250
    :cond_2
    :try_start_0
    invoke-direct {p0, p2, p4, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->connectToServer(Lc/c/c/c;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 279
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 281
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    .line 282
    if-nez v4, :cond_5

    move v1, v2

    .line 283
    :goto_1
    if-nez v5, :cond_6

    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    .line 284
    const/4 v0, 0x0

    .line 285
    if-lez v1, :cond_4

    .line 287
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    .line 288
    if-eqz v4, :cond_3

    .line 290
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 291
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 293
    :cond_3
    if-eqz v5, :cond_4

    .line 295
    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 296
    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 300
    :cond_4
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 301
    invoke-virtual {p0, p2, v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->prepareContext(Lc/c/c/c;Ljava/util/concurrent/ConcurrentMap;)V

    .line 303
    invoke-direct {p0, v1, v3, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->prepareConnections(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    move-result-object v0

    .line 306
    const/16 v1, 0xc8

    invoke-interface {p3, v1}, Lc/c/c/e;->setStatus(I)V

    .line 309
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v1

    invoke-interface {v1, v6}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 312
    invoke-interface {p3}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/z;->close()V

    .line 314
    invoke-direct {p0, p2, p3, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->upgradeConnection(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/io/Connection;)V

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConnectHandler: SocketException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-interface {p3, v5}, Lc/c/c/e;->setStatus(I)V

    .line 256
    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 261
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConnectHandler: SocketTimeoutException"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const/16 v0, 0x1f8

    invoke-interface {p3, v0}, Lc/c/c/e;->setStatus(I)V

    .line 263
    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_0

    .line 266
    :catch_2
    move-exception v0

    .line 268
    sget-object v1, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ConnectHandler: IOException"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-interface {p3, v5}, Lc/c/c/e;->setStatus(I)V

    .line 270
    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_0

    .line 282
    :cond_5
    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 283
    :cond_6
    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto/16 :goto_2
.end method

.method protected newClientToProxyConnection(Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "J)",
            "Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v1, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ClientToProxyConnection;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/EndPoint;J)V

    return-object v1
.end method

.method protected newProxyToServerConnection(Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;Ljava/util/concurrent/ConcurrentMap;Lorg/eclipse/jetty/io/Buffer;)V

    return-object v0
.end method

.method protected prepareContext(Lc/c/c/c;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/c/c;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method protected read(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 434
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    return v0
.end method

.method protected set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/HostMap",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 953
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/HostMap;->clear()V

    .line 955
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 957
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 959
    invoke-direct {p0, v2, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 962
    :cond_0
    return-void
.end method

.method public setBlack([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 942
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_connectTimeout:I

    .line 111
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 134
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_selectorManager:Lorg/eclipse/jetty/io/nio/SelectorManager;

    const-string v3, "selectManager"

    invoke-virtual {v0, p0, v2, v1, v3}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "threadpool"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    goto :goto_0
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    :goto_0
    const-string v4, "threadpool"

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 157
    :cond_0
    if-eqz p1, :cond_2

    :goto_1
    iput-boolean v5, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_privateThreadPool:Z

    .line 158
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 159
    return-void

    .line 156
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 157
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setWhite([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/HostMap;)V

    .line 932
    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_writeTimeout:I

    .line 127
    return-void
.end method

.method public validateDestination(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 991
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/HostMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 993
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_white:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/HostMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 994
    if-nez v1, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return v0

    .line 1000
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/HostMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1002
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->_black:Lorg/eclipse/jetty/util/HostMap;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/util/HostMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1003
    if-nez v1, :cond_0

    .line 1009
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected write(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/io/Buffer;Ljava/util/concurrent/ConcurrentMap;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 448
    if-nez p2, :cond_0

    move v0, v1

    .line 473
    :goto_0
    return v0

    .line 451
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 452
    sget-object v0, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    :goto_1
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    .line 454
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    :cond_1
    :goto_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 460
    invoke-interface {p1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v3

    if-nez v3, :cond_3

    .line 462
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->getWriteTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {p1, v4, v5}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v3

    .line 463
    if-nez v3, :cond_3

    .line 464
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 466
    :cond_3
    invoke-interface {p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v3

    .line 467
    if-eqz v0, :cond_1

    .line 468
    const-string v4, "+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 471
    :cond_4
    sget-object v3, Lorg/eclipse/jetty/server/handler/ConnectHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Written {}/{} bytes {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object p1, v5, v0

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    move v0, v2

    .line 473
    goto :goto_0
.end method
