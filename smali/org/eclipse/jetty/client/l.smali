.class final Lorg/eclipse/jetty/client/l;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "SelectConnector.java"


# instance fields
.field a:Lorg/eclipse/jetty/util/log/Logger;

.field final synthetic b:Lorg/eclipse/jetty/client/SelectConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/client/SelectConnector;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    .line 110
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/client/l;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method private declared-synchronized a(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->a(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpClient;->getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    move-result-object v0

    .line 179
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 189
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 190
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-object v0

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->b(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 206
    :cond_0
    instance-of v0, p3, Lorg/eclipse/jetty/client/HttpDestination;

    if-eqz v0, :cond_1

    .line 207
    check-cast p3, Lorg/eclipse/jetty/client/HttpDestination;

    invoke-virtual {p3, p2}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final dispatch(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->a(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jetty/client/HttpClient;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected final endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected final endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected final endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public final newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lorg/eclipse/jetty/client/AsyncHttpConnection;

    iget-object v1, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v1}, Lorg/eclipse/jetty/client/SelectConnector;->a(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v2}, Lorg/eclipse/jetty/client/SelectConnector;->a(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/HttpClient;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lorg/eclipse/jetty/client/AsyncHttpConnection;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object v0
.end method

.method protected final newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/client/SelectConnector;->b(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->cancel()V

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/l;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/client/l;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Channels with connection pending: {}"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v3}, Lorg/eclipse/jetty/client/SelectConnector;->b(Lorg/eclipse/jetty/client/SelectConnector;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_1
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 152
    new-instance v3, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/client/l;->b:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-static {v1}, Lorg/eclipse/jetty/client/SelectConnector;->a(Lorg/eclipse/jetty/client/SelectConnector;)Lorg/eclipse/jetty/client/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpClient;->getIdleTimeout()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v3, p1, p2, p3, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 155
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lorg/eclipse/jetty/client/l;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "secure to {}, proxied={}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v1, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    new-instance v2, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/client/l;->a(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;-><init>(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)V

    .line 161
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v4}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    .line 162
    invoke-interface {v2, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 164
    check-cast v1, Lorg/eclipse/jetty/client/AbstractHttpConnection;

    .line 165
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/AbstractHttpConnection;->setDestination(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 167
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->isProxied()Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    check-cast v2, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;

    invoke-virtual {v2}, Lorg/eclipse/jetty/client/SelectConnector$UpgradableEndPoint;->upgrade()V

    .line 170
    :cond_2
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->onNewConnection(Lorg/eclipse/jetty/client/AbstractHttpConnection;)V

    .line 172
    return-object v3

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method
