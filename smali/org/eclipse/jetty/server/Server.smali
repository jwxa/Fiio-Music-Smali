.class public Lorg/eclipse/jetty/server/Server;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "Server.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Attributes;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __version:Ljava/lang/String;


# instance fields
.field private final _attributes:Lorg/eclipse/jetty/util/AttributesMap;

.field private _connectors:[Lorg/eclipse/jetty/server/Connector;

.field private final _container:Lorg/eclipse/jetty/util/component/Container;

.field private _dumpAfterStart:Z

.field private _dumpBeforeStop:Z

.field private _graceful:I

.field private _sendDateHeader:Z

.field private _sendServerVersion:Z

.field private _sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

.field private _stopAtShutdown:Z

.field private _threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private _uncheckedPrintWriter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 65
    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Eclipse.org - Jetty"

    const-class v1, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    const-class v0, Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "jetty.version"

    const-string v1, "8.y.z-SNAPSHOT"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/component/Container;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/component/Container;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 74
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 79
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 80
    iput v1, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 82
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 83
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 84
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 90
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/Server;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 91
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/component/Container;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/component/Container;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 74
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 78
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 79
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 80
    iput v2, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 82
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 83
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 84
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 99
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/Server;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 101
    new-instance v0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 102
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->setPort(I)V

    .line 103
    new-array v1, v1, [Lorg/eclipse/jetty/server/Connector;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 73
    new-instance v0, Lorg/eclipse/jetty/util/component/Container;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/component/Container;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    .line 74
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    .line 78
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 79
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 80
    iput v2, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 82
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 83
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 84
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 112
    invoke-virtual {p0, p0}, Lorg/eclipse/jetty/server/Server;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 114
    new-instance v0, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 115
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/Connector;->setHost(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/Connector;->setPort(I)V

    .line 117
    new-array v1, v3, [Lorg/eclipse/jetty/server/Connector;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 118
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 658
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {}, Lorg/eclipse/jetty/server/Server;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    return-void
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 513
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->addBean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/component/Container;->addBean(Ljava/lang/Object;)V

    .line 516
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addConnector(Lorg/eclipse/jetty/server/Connector;)V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/server/Connector;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Connector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 175
    return-void
.end method

.method public addLifeCycle(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Server;->addBean(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/AttributesMap;->clearAttributes()V

    .line 554
    return-void
.end method

.method protected doStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getStopAtShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jetty/util/component/LifeCycle;

    aput-object p0, v1, v0

    invoke-static {v1}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->register([Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 267
    invoke-static {}, Lorg/eclipse/jetty/server/ShutdownMonitor;->getInstance()Lorg/eclipse/jetty/server/ShutdownMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ShutdownMonitor;->start()V

    .line 270
    :cond_0
    sget-object v1, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jetty-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    sget-object v1, Lorg/eclipse/jetty/server/Server;->__version:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/http/HttpGenerator;->setServerVersion(Ljava/lang/String;)V

    .line 273
    new-instance v2, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v2}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 275
    iget-object v1, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-nez v1, :cond_1

    .line 276
    new-instance v1, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Server;->setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V

    .line 280
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 289
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 291
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :catch_0
    move-exception v1

    .line 284
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    :catch_1
    move-exception v1

    .line 294
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 299
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->isDumpAfterStart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->dumpStdErr()V

    .line 302
    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 303
    return-void
.end method

.method protected doStop()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->isDumpBeforeStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->dumpStdErr()V

    .line 312
    :cond_0
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 314
    iget v0, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    if-lez v0, :cond_3

    .line 316
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 320
    sget-object v0, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Graceful shutdown {}"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v6, v6, v1

    aput-object v6, v5, v2

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 325
    :cond_1
    const-class v0, Lorg/eclipse/jetty/server/Server$Graceful;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v4

    move v1, v2

    .line 326
    :goto_1
    array-length v0, v4

    if-ge v1, v0, :cond_2

    .line 328
    aget-object v0, v4, v1

    check-cast v0, Lorg/eclipse/jetty/server/Server$Graceful;

    .line 329
    sget-object v5, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Graceful shutdown {}"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-interface {v0, v8}, Lorg/eclipse/jetty/server/Server$Graceful;->setShutdown(Z)V

    .line 326
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 332
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 335
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    array-length v0, v0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_4

    .line 338
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 341
    :cond_4
    :try_start_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    :goto_3
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 345
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getStopAtShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    invoke-static {p0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 347
    :cond_5
    return-void

    .line 341
    :catch_2
    move-exception v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Server;->dumpThis(Ljava/lang/Appendable;)V

    .line 628
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/server/Server;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 629
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getConnectors()[Lorg/eclipse/jetty/server/Connector;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    return-object v0
.end method

.method public getContainer()Lorg/eclipse/jetty/util/component/Container;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    return-object v0
.end method

.method public getGracefulShutdown()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    return v0
.end method

.method public getMaxCookieVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public getSendDateHeader()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    return v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    return v0
.end method

.method public getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    return-object v0
.end method

.method public getStopAtShutdown()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_stopAtShutdown:Z

    return v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method public handle(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 357
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    .line 359
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    .line 361
    sget-object v3, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    sget-object v3, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REQUEST "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 365
    sget-object v2, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RESPONSE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " handled="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0
.end method

.method public handleAsync(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 379
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v2

    .line 383
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 385
    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Lc/c/s;

    move-result-object v0

    invoke-interface {v0}, Lc/c/s;->getContextPath()Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v4, Lorg/eclipse/jetty/http/HttpURI;

    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/server/Request;->setUri(Lorg/eclipse/jetty/http/HttpURI;)V

    .line 391
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/Request;->mergeQueryString(Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getRequest()Lc/c/ac;

    move-result-object v0

    check-cast v0, Lc/c/c/c;

    .line 399
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getResponse()Lc/c/ai;

    move-result-object v1

    check-cast v1, Lc/c/c/e;

    .line 401
    sget-object v4, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 403
    sget-object v4, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "REQUEST "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p0, v3, v2, v0, v1}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 405
    sget-object v0, Lorg/eclipse/jetty/server/Server;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RESPONSE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0, v3, v2, v0, v1}, Lorg/eclipse/jetty/server/Server;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0
.end method

.method public isDumpAfterStart()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    return v0
.end method

.method public isDumpBeforeStop()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    return v0
.end method

.method public isUncheckedPrintWriter()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    return v0
.end method

.method public join()V
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/util/thread/ThreadPool;->join()V

    .line 417
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/AttributesMap;->removeAttribute(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public removeBean(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 539
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->removeBean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/component/Container;->removeBean(Ljava/lang/Object;)V

    .line 542
    const/4 v0, 0x1

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeConnector(Lorg/eclipse/jetty/server/Connector;)V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/server/Connector;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->setConnectors([Lorg/eclipse/jetty/server/Connector;)V

    .line 185
    return-void
.end method

.method public removeLifeCycle(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Server;->removeBean(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_attributes:Lorg/eclipse/jetty/util/AttributesMap;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/AttributesMap;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    return-void
.end method

.method public setConnectors([Lorg/eclipse/jetty/server/Connector;)V
    .locals 3

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 196
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 197
    aget-object v1, p1, v0

    invoke-interface {v1, p0}, Lorg/eclipse/jetty/server/Connector;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    const-string v2, "connector"

    invoke-virtual {v0, p0, v1, p1, v2}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lorg/eclipse/jetty/server/Server;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    .line 202
    return-void
.end method

.method public setDumpAfterStart(Z)V
    .locals 0

    .prologue
    .line 240
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_dumpAfterStart:Z

    .line 241
    return-void
.end method

.method public setDumpBeforeStop(Z)V
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_dumpBeforeStop:Z

    .line 257
    return-void
.end method

.method public setGracefulShutdown(I)V
    .locals 0

    .prologue
    .line 613
    iput p1, p0, Lorg/eclipse/jetty/server/Server;->_graceful:I

    .line 614
    return-void
.end method

.method public setMaxCookieVersion(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    return-void
.end method

.method public setSendDateHeader(Z)V
    .locals 0

    .prologue
    .line 462
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_sendDateHeader:Z

    .line 463
    return-void
.end method

.method public setSendServerVersion(Z)V
    .locals 0

    .prologue
    .line 447
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_sendServerVersion:Z

    .line 448
    return-void
.end method

.method public setSessionIdManager(Lorg/eclipse/jetty/server/SessionIdManager;)V
    .locals 6

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->removeBean(Ljava/lang/Object;)Z

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    const-string v4, "sessionIdManager"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 439
    iput-object p1, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_sessionIdManager:Lorg/eclipse/jetty/server/SessionIdManager;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->addBean(Ljava/lang/Object;)Z

    .line 442
    :cond_1
    return-void
.end method

.method public setStopAtShutdown(Z)V
    .locals 2

    .prologue
    .line 146
    if-eqz p1, :cond_1

    .line 149
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Server;->_stopAtShutdown:Z

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Server;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jetty/util/component/LifeCycle;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->register([Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 159
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_stopAtShutdown:Z

    .line 160
    return-void

    .line 157
    :cond_1
    invoke-static {p0}, Lorg/eclipse/jetty/util/thread/ShutdownThread;->deregister(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0
.end method

.method public setThreadPool(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->removeBean(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_container:Lorg/eclipse/jetty/util/component/Container;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    const-string v4, "threadpool"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 222
    iput-object p1, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/server/Server;->_threadPool:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Server;->addBean(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    return-void
.end method

.method public setUncheckedPrintWriter(Z)V
    .locals 0

    .prologue
    .line 641
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Server;->_uncheckedPrintWriter:Z

    .line 642
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
