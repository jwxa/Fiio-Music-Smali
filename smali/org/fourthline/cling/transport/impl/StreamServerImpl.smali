.class public Lorg/fourthline/cling/transport/impl/StreamServerImpl;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer",
        "<",
        "Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

.field protected server:Lcom/d/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    .line 57
    return-void
.end method

.method static synthetic access$1()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    invoke-virtual {v0}, Lcom/d/a/a/m;->c()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/fourthline/cling/transport/Router;)V
    .locals 4

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;->getListenPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 63
    iget-object v1, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/StreamServerConfigurationImpl;->getTcpConnectionBacklog()I

    move-result v1

    invoke-static {}, Lcom/d/a/a/a/a;->a()Lcom/d/a/a/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/d/a/a/a/a;->a(Ljava/net/InetSocketAddress;I)Lcom/d/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    .line 64
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    const-string v1, "/"

    new-instance v2, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    invoke-direct {v2, p0, p2}, Lorg/fourthline/cling/transport/impl/StreamServerImpl$RequestHttpHandler;-><init>(Lorg/fourthline/cling/transport/impl/StreamServerImpl;Lorg/fourthline/cling/transport/Router;)V

    invoke-virtual {v0, v1, v2}, Lcom/d/a/a/m;->a(Ljava/lang/String;Lcom/d/a/a/k;)Lcom/d/a/a/i;

    .line 66
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created server (for receiving TCP streams) on: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    invoke-virtual {v2}, Lcom/d/a/a/m;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    new-instance v1, Lorg/fourthline/cling/transport/spi/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not initialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isConnectionOpen(Lcom/d/a/a/j;)Z
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Can\'t check client connection, socket access impossible on JDK webserver!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting StreamServer..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    invoke-virtual {v0}, Lcom/d/a/a/m;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Stopping StreamServer..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/StreamServerImpl;->server:Lcom/d/a/a/m;

    invoke-virtual {v0}, Lcom/d/a/a/m;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
