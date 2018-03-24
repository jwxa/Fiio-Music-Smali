.class final Lorg/eclipse/jetty/server/handler/a;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "ConnectHandler.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/handler/ConnectHandler;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/a;->a:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;B)V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/a;-><init>(Lorg/eclipse/jetty/server/handler/ConnectHandler;)V

    return-void
.end method


# virtual methods
.method public final dispatch(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/a;->a:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$200(Lorg/eclipse/jetty/server/handler/ConnectHandler;)Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected final endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method protected final endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .line 500
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->ready()V

    .line 501
    return-void
.end method

.method protected final endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public final newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 2

    .prologue
    .line 490
    check-cast p3, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->setTimeStamp(J)V

    .line 492
    invoke-virtual {p3, p2}, Lorg/eclipse/jetty/server/handler/ConnectHandler$ProxyToServerConnection;->setEndPoint(Lorg/eclipse/jetty/io/AsyncEndPoint;)V

    .line 493
    return-object p3
.end method

.method protected final newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 3

    .prologue
    .line 481
    new-instance v0, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 482
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 483
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/a;->a:Lorg/eclipse/jetty/server/handler/ConnectHandler;

    invoke-static {v1}, Lorg/eclipse/jetty/server/handler/ConnectHandler;->access$100(Lorg/eclipse/jetty/server/handler/ConnectHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setMaxIdleTime(I)V

    .line 484
    return-object v0
.end method
