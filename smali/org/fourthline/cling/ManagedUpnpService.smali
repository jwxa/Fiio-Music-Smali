.class public Lorg/fourthline/cling/ManagedUpnpService;
.super Ljava/lang/Object;
.source "ManagedUpnpService.java"

# interfaces
.implements Lorg/fourthline/cling/UpnpService;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field configuration:Lc/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/a",
            "<",
            "Lorg/fourthline/cling/UpnpServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field controlPointInstance:Lc/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/a",
            "<",
            "Lorg/fourthline/cling/controlpoint/ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field disableRouterEvent:Lc/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a",
            "<",
            "Lorg/fourthline/cling/transport/DisableRouter;",
            ">;"
        }
    .end annotation
.end field

.field enableRouterEvent:Lc/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a",
            "<",
            "Lorg/fourthline/cling/transport/EnableRouter;",
            ">;"
        }
    .end annotation
.end field

.field protocolFactoryInstance:Lc/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/a",
            "<",
            "Lorg/fourthline/cling/protocol/ProtocolFactory;",
            ">;"
        }
    .end annotation
.end field

.field registryInstance:Lc/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/a",
            "<",
            "Lorg/fourthline/cling/registry/Registry;",
            ">;"
        }
    .end annotation
.end field

.field registryListenerAdapter:Lorg/fourthline/cling/c;

.field routerInstance:Lc/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/a",
            "<",
            "Lorg/fourthline/cling/transport/Router;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/fourthline/cling/ManagedUpnpService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->configuration:Lc/a/b/a;

    invoke-interface {v0}, Lc/a/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->controlPointInstance:Lc/a/b/a;

    invoke-interface {v0}, Lc/a/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->protocolFactoryInstance:Lc/a/b/a;

    invoke-interface {v0}, Lc/a/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getRegistry()Lorg/fourthline/cling/registry/Registry;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->registryInstance:Lc/a/b/a;

    invoke-interface {v0}, Lc/a/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/Registry;

    return-object v0
.end method

.method public getRouter()Lorg/fourthline/cling/transport/Router;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->routerInstance:Lc/a/b/a;

    invoke-interface {v0}, Lc/a/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/transport/Router;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/ManagedUpnpService;->shutdown(Lorg/fourthline/cling/UpnpService$Shutdown;)V

    .line 134
    return-void
.end method

.method public shutdown(Lorg/fourthline/cling/UpnpService$Shutdown;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v1, ">>> Shutting down managed UPnP service..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->shutdown()V

    .line 145
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->disableRouterEvent:Lc/a/a/a;

    new-instance v0, Lorg/fourthline/cling/transport/DisableRouter;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/DisableRouter;-><init>()V

    .line 147
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->shutdown()V

    .line 149
    sget-object v0, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v1, "<<< Managed UPnP service shutdown completed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public start(Lorg/fourthline/cling/UpnpService$Start;)V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v1, ">>> Starting managed UPnP service..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/ManagedUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/ManagedUpnpService;->registryListenerAdapter:Lorg/fourthline/cling/c;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/ManagedUpnpService;->enableRouterEvent:Lc/a/a/a;

    new-instance v0, Lorg/fourthline/cling/transport/EnableRouter;

    invoke-direct {v0}, Lorg/fourthline/cling/transport/EnableRouter;-><init>()V

    .line 128
    sget-object v0, Lorg/fourthline/cling/ManagedUpnpService;->log:Ljava/util/logging/Logger;

    const-string v1, "<<< Managed UPnP service started successfully"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    return-void
.end method
