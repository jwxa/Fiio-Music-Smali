.class final Lorg/eclipse/jetty/client/k;
.super Lorg/eclipse/jetty/util/thread/Timeout$Task;
.source "SelectConnector.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/client/SelectConnector;

.field private final b:Ljava/nio/channels/SocketChannel;

.field private final c:Lorg/eclipse/jetty/client/HttpDestination;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/SelectConnector;Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lorg/eclipse/jetty/client/k;->a:Lorg/eclipse/jetty/client/SelectConnector;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;-><init>()V

    .line 220
    iput-object p2, p0, Lorg/eclipse/jetty/client/k;->b:Ljava/nio/channels/SocketChannel;

    .line 221
    iput-object p3, p0, Lorg/eclipse/jetty/client/k;->c:Lorg/eclipse/jetty/client/HttpDestination;

    .line 222
    return-void
.end method


# virtual methods
.method public final expired()V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/client/k;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Channel {} timed out while connecting, closing it"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/client/k;->b:Ljava/nio/channels/SocketChannel;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/k;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/k;->c:Lorg/eclipse/jetty/client/HttpDestination;

    new-instance v1, Ljava/net/SocketTimeoutException;

    invoke-direct {v1}, Ljava/net/SocketTimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->onConnectionFailed(Ljava/lang/Throwable;)V

    .line 241
    :cond_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
    invoke-static {}, Lorg/eclipse/jetty/client/SelectConnector;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
