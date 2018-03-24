.class Lorg/eclipse/jetty/client/SelectConnector;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "SelectConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/client/e;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Lorg/eclipse/jetty/client/HttpClient;

.field private final c:Lorg/eclipse/jetty/client/l;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/eclipse/jetty/util/thread/Timeout$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/client/SelectConnector;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/eclipse/jetty/client/HttpClient;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 51
    new-instance v0, Lorg/eclipse/jetty/client/l;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/client/l;-><init>(Lorg/eclipse/jetty/client/SelectConnector;)V

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->c:Lorg/eclipse/jetty/client/l;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->d:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/SelectConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->c:Lorg/eclipse/jetty/client/l;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/client/SelectConnector;->addBean(Ljava/lang/Object;Z)Z

    .line 64
    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    return-object v0
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/eclipse/jetty/client/SelectConnector;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 6

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 73
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getProxy()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 77
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->isConnectBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->c:Lorg/eclipse/jetty/client/l;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/client/l;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 105
    :goto_1
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/HttpDestination;->getAddress()Lorg/eclipse/jetty/client/Address;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 86
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/Address;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/client/SelectConnector;->c:Lorg/eclipse/jetty/client/l;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/client/l;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lorg/eclipse/jetty/client/k;

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jetty/client/k;-><init>(Lorg/eclipse/jetty/client/SelectConnector;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 89
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    iget-object v3, p0, Lorg/eclipse/jetty/client/SelectConnector;->b:Lorg/eclipse/jetty/client/HttpClient;

    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpClient;->getConnectTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Lorg/eclipse/jetty/client/HttpClient;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 90
    iget-object v2, p0, Lorg/eclipse/jetty/client/SelectConnector;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/nio/channels/UnresolvedAddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 95
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 97
    :cond_2
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 101
    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 103
    :cond_3
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
