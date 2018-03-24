.class public Lorg/fourthline/cling/UpnpServiceImpl;
.super Ljava/lang/Object;
.source "UpnpServiceImpl.java"

# interfaces
.implements Lorg/fourthline/cling/UpnpService;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

.field protected final controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

.field protected final protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

.field protected final registry:Lorg/fourthline/cling/registry/Registry;

.field protected final router:Lorg/fourthline/cling/transport/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/fourthline/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/fourthline/cling/registry/RegistryListener;

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/UpnpServiceImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 62
    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 4

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/fourthline/cling/UpnpServiceImpl;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    .line 71
    sget-object v0, Lorg/fourthline/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    const-string v1, ">>> Starting UPnP service..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lorg/fourthline/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using configuration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->createProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/UpnpServiceImpl;->createRegistry(Lorg/fourthline/cling/protocol/ProtocolFactory;)Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->registry:Lorg/fourthline/cling/registry/Registry;

    .line 80
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    iget-object v1, p0, Lorg/fourthline/cling/UpnpServiceImpl;->registry:Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/UpnpServiceImpl;->createRouter(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->router:Lorg/fourthline/cling/transport/Router;

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->router:Lorg/fourthline/cling/transport/Router;

    invoke-interface {v0}, Lorg/fourthline/cling/transport/Router;->enable()Z
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    iget-object v1, p0, Lorg/fourthline/cling/UpnpServiceImpl;->registry:Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/UpnpServiceImpl;->createControlPoint(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 94
    sget-object v0, Lorg/fourthline/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "<<< UPnP service started successfully"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 95
    return-void

    .line 80
    :cond_0
    aget-object v2, p2, v0

    .line 81
    iget-object v3, p0, Lorg/fourthline/cling/UpnpServiceImpl;->registry:Lorg/fourthline/cling/registry/Registry;

    invoke-interface {v3, v2}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabling network router failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/fourthline/cling/DefaultUpnpServiceConfiguration;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/fourthline/cling/UpnpServiceImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;[Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 66
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/fourthline/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createControlPoint(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lorg/fourthline/cling/controlpoint/ControlPointImpl;

    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/controlpoint/ControlPointImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)V

    return-object v0
.end method

.method protected createProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;-><init>(Lorg/fourthline/cling/UpnpService;)V

    return-object v0
.end method

.method protected createRegistry(Lorg/fourthline/cling/protocol/ProtocolFactory;)Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/RegistryImpl;-><init>(Lorg/fourthline/cling/UpnpService;)V

    return-object v0
.end method

.method protected createRouter(Lorg/fourthline/cling/protocol/ProtocolFactory;Lorg/fourthline/cling/registry/Registry;)Lorg/fourthline/cling/transport/Router;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/fourthline/cling/transport/RouterImpl;

    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/transport/RouterImpl;-><init>(Lorg/fourthline/cling/UpnpServiceConfiguration;Lorg/fourthline/cling/protocol/ProtocolFactory;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->configuration:Lorg/fourthline/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->protocolFactory:Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->registry:Lorg/fourthline/cling/registry/Registry;

    return-object v0
.end method

.method public getRouter()Lorg/fourthline/cling/transport/Router;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/fourthline/cling/UpnpServiceImpl;->router:Lorg/fourthline/cling/transport/Router;

    return-object v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/UpnpServiceImpl;->shutdown(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected shutdown(Z)V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lorg/fourthline/cling/f;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/f;-><init>(Lorg/fourthline/cling/UpnpServiceImpl;)V

    .line 148
    if-eqz p1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected shutdownConfiguration()V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->shutdown()V

    .line 175
    return-void
.end method

.method protected shutdownRegistry()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->shutdown()V

    .line 158
    return-void
.end method

.method protected shutdownRouter()V
    .locals 6

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/UpnpServiceImpl;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/transport/Router;->shutdown()V
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 165
    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_0

    .line 166
    sget-object v2, Lorg/fourthline/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Router shutdown was interrupted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Router error on shutdown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
