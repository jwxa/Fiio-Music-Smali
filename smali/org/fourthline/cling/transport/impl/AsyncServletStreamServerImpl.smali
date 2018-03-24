.class public Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;
.super Ljava/lang/Object;
.source "AsyncServletStreamServerImpl.java"

# interfaces
.implements Lorg/fourthline/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/transport/spi/StreamServer",
        "<",
        "Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

.field protected localPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/fourthline/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    .line 49
    return-void
.end method

.method static synthetic access$1()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createServlet(Lorg/fourthline/cling/transport/Router;)Lc/c/q;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/fourthline/cling/transport/impl/a;

    invoke-direct {v0, p0, p1}, Lorg/fourthline/cling/transport/impl/a;-><init>(Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;Lorg/fourthline/cling/transport/Router;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->configuration:Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/fourthline/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 57
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Setting executor service on servlet container adapter"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    .line 59
    invoke-interface {p2}, Lorg/fourthline/cling/transport/Router;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getStreamServerExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 62
    sget-object v0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding connector: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getListenPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getListenPort()I

    move-result v2

    .line 63
    invoke-interface {v0, v1, v2}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->addConnector(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->localPort:I

    .line 68
    invoke-interface {p2}, Lorg/fourthline/cling/transport/Router;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/Namespace;->getBasePath()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->createServlet(Lorg/fourthline/cling/transport/Router;)Lc/c/q;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->registerServlet(Ljava/lang/String;Lc/c/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 72
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

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isConnectionOpen(Lc/c/c/c;)Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->startIfNotRunning()V

    .line 86
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerImpl;->getConfiguration()Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/transport/impl/AsyncServletStreamServerConfigurationImpl;->getServletContainerAdapter()Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;->stopIfRunning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
