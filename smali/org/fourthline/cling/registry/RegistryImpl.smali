.class public Lorg/fourthline/cling/registry/RegistryImpl;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Lorg/fourthline/cling/registry/Registry;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final localItems:Lorg/fourthline/cling/registry/a;

.field protected final pendingExecutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final registryListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/fourthline/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation
.end field

.field protected registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

.field protected final remoteItems:Lorg/fourthline/cling/registry/j;

.field protected remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final resourceItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/fourthline/cling/registry/h",
            "<",
            "Ljava/net/URI;",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field protected upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 108
    new-instance v0, Lorg/fourthline/cling/registry/j;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/j;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    .line 109
    new-instance v0, Lorg/fourthline/cling/registry/a;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/a;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 108
    new-instance v0, Lorg/fourthline/cling/registry/j;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/j;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    .line 109
    new-instance v0, Lorg/fourthline/cling/registry/a;

    invoke-direct {v0, p0}, Lorg/fourthline/cling/registry/a;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    .line 72
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating Registry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 76
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting registry background maintenance..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 78
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResource(Lorg/fourthline/cling/model/resource/Resource;)V
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResource(Lorg/fourthline/cling/model/resource/Resource;I)V
    .locals 2

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/fourthline/cling/registry/h;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/registry/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 325
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized advertiseLocalDevices()V
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 98
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintenanceIntervalMillis()I

    move-result v1

    .line 96
    invoke-direct {v0, p0, v1}, Lorg/fourthline/cling/registry/RegistryMaintainer;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;I)V

    return-object v0
.end method

.method declared-synchronized executeAsyncProtocol(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 209
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 231
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/a;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/j;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevices(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 240
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDevices(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v1, p1}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->a(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/j;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->a(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/GENASubscription;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;
    .locals 4

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource URI can not be absolute, only path and query:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 283
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 291
    :cond_3
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 271
    :cond_4
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 272
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/Resource;

    .line 273
    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 283
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 284
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/Resource;

    .line 285
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized getResources()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 304
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 307
    monitor-exit p0

    return-object v1

    .line 304
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 305
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResources(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/fourthline/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 312
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 316
    monitor-exit p0

    return-object v2

    .line 312
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 313
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getService(Lorg/fourthline/cling/model/ServiceReference;)Lorg/fourthline/cling/model/meta/Service;
    .locals 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ServiceReference;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p1}, Lorg/fourthline/cling/model/ServiceReference;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceId;)Lorg/fourthline/cling/model/meta/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 259
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lockRemoteSubscriptions()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 511
    return-void
.end method

.method declared-synchronized maintain()V
    .locals 5

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Maintaining registry..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 437
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 455
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/j;->c()V

    .line 456
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/a;->d()V

    .line 459
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 438
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 439
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->c()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing expired resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 442
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 448
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    .line 449
    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 450
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->c()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v0

    .line 448
    invoke-virtual {v1, v3, v0}, Lorg/fourthline/cling/model/resource/Resource;->maintain(Ljava/util/List;Lorg/fourthline/cling/model/ExpirationDetails;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized notifyDiscoveryFailure(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 153
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 145
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 146
    new-instance v3, Lorg/fourthline/cling/registry/g;

    invoke-direct {v3, p0, v0, p1, p2}, Lorg/fourthline/cling/registry/g;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 145
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyDiscoveryStart(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 127
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lorg/fourthline/cling/registry/Registry;->getRemoteDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not notifying listeners, already registered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const/4 v0, 0x0

    .line 140
    :goto_0
    monitor-exit p0

    return v0

    .line 131
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 140
    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 132
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 133
    new-instance v4, Lorg/fourthline/cling/registry/f;

    invoke-direct {v4, p0, v0, p1}, Lorg/fourthline/cling/registry/f;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 132
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Pausing registry maintenance"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 408
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryMaintainer;->stop()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    monitor-exit p0

    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printDebugLog()V
    .locals 3

    .prologue
    .line 483
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "====================================    REMOTE   ================================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/j;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "====================================    LOCAL    ================================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "====================================  RESOURCES  ================================================"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "================================================================================================="

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void

    .line 486
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 487
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 493
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 499
    sget-object v2, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public declared-synchronized removeAllLocalDevices()V
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllRemoteDevices()V
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/j;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
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

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->b(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
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

.method public declared-synchronized removeDevice(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->removeDevice(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 203
    :goto_0
    monitor-exit p0

    return v0

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_1

    .line 202
    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->removeDevice(Lorg/fourthline/cling/model/meta/RemoteDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lorg/fourthline/cling/registry/RegistryListener;)V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->c(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
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

.method public declared-synchronized removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->c(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z
    .locals 3

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    new-instance v1, Lorg/fourthline/cling/registry/h;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/fourthline/cling/registry/h;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
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

.method public declared-synchronized resume()V
    .locals 2

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-nez v0, :cond_0

    .line 415
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Resuming registry maintenance"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/j;->d()V

    .line 417
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/fourthline/cling/registry/RegistryMaintainer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    .line 418
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :cond_0
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized runPendingExecutions(Z)V
    .locals 3

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing pending operations: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 476
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_1
    monitor-exit p0

    return-void

    .line 469
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 470
    if-eqz p1, :cond_3

    .line 471
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setDiscoveryOptions(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1, p2}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 377
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Shutting down registry..."

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryMaintainer:Lorg/fourthline/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryMaintainer;->stop()V

    .line 384
    :cond_0
    sget-object v0, Lorg/fourthline/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing final pending operations on shutdown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/fourthline/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 387
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    iget-object v2, p0, Lorg/fourthline/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/fourthline/cling/registry/h;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/registry/h;

    .line 392
    array-length v3, v0

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_2

    .line 396
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/j;->e()V

    .line 397
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/a;->e()V

    .line 399
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 402
    monitor-exit p0

    return-void

    .line 387
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 388
    invoke-interface {v0, p0}, Lorg/fourthline/cling/registry/RegistryListener;->beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 392
    :cond_2
    :try_start_2
    aget-object v1, v0, v2

    .line 393
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/resource/Resource;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/resource/Resource;->shutdown()V

    .line 392
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 399
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 400
    invoke-interface {v0}, Lorg/fourthline/cling/registry/RegistryListener;->afterShutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public unlockRemoteSubscriptions()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 516
    return-void
.end method

.method public declared-synchronized update(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->a(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)Z
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

.method public declared-synchronized updateLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->localItems:Lorg/fourthline/cling/registry/a;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
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

.method public declared-synchronized updateRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/RegistryImpl;->remoteItems:Lorg/fourthline/cling/registry/j;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/registry/j;->b(Lorg/fourthline/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
