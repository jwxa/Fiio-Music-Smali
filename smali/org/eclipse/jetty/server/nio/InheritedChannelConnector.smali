.class public Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "InheritedChannelConnector.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    return-void
.end method


# virtual methods
.method public open()V
    .locals 4

    .prologue
    .line 52
    monitor-enter p0

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->inheritedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    .line 57
    instance-of v1, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_2

    .line 58
    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    iput-object v0, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v0, :cond_1

    .line 71
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->open()V

    .line 72
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 60
    :cond_2
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to use System.inheritedChannel() ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]. Trying a new ServerSocketChannel at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    :try_start_3
    sget-object v0, Lorg/eclipse/jetty/server/nio/InheritedChannelConnector;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Need at least Java 5 to use socket inherited from xinetd/inetd."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
