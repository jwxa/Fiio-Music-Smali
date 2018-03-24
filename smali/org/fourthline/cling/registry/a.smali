.class final Lorg/fourthline/cling/registry/a;
.super Lorg/fourthline/cling/registry/i;
.source "LocalItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/registry/i",
        "<",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        "Lorg/fourthline/cling/model/gena/LocalGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static g:Ljava/util/logging/Logger;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/DiscoveryOptions;",
            ">;"
        }
    .end annotation
.end field

.field protected b:J

.field protected c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/fourthline/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/fourthline/cling/registry/RegistryImpl;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/fourthline/cling/registry/i;-><init>(Lorg/fourthline/cling/registry/RegistryImpl;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/a;->a:Ljava/util/Map;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/fourthline/cling/registry/a;->b:J

    .line 287
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/registry/a;->c:Ljava/util/Random;

    .line 50
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 207
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 210
    return-void

    .line 207
    :cond_0
    aget-object v3, v0, v1

    .line 208
    invoke-direct {p0, v3, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    .line 144
    if-eqz v0, :cond_8

    .line 146
    sget-object v1, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Removing local device from registry: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 149
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->g()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/fourthline/cling/registry/h;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/fourthline/cling/registry/h;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v2

    array-length v5, v2

    move v1, v3

    :goto_0
    if-lt v1, v5, :cond_3

    .line 158
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 159
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 180
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    if-eqz p2, :cond_6

    move v0, v3

    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V

    .line 183
    :cond_1
    if-nez p2, :cond_2

    .line 184
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 198
    :cond_2
    :goto_4
    return v4

    .line 151
    :cond_3
    aget-object v6, v2, v1

    .line 152
    iget-object v7, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v7, v6}, Lorg/fourthline/cling/registry/RegistryImpl;->removeResource(Lorg/fourthline/cling/model/resource/Resource;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 153
    sget-object v7, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unregistered resource: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 151
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/fourthline/cling/registry/h;

    .line 163
    invoke-virtual {v2}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/LocalService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    .line 162
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    sget-object v6, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "Removing incoming subscription: "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 167
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 168
    if-nez p2, :cond_0

    .line 169
    iget-object v1, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 170
    new-instance v6, Lorg/fourthline/cling/registry/c;

    invoke-direct {v6, p0, v2}, Lorg/fourthline/cling/registry/c;-><init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/registry/h;)V

    .line 169
    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_6
    move v0, v4

    .line 181
    goto/16 :goto_2

    .line 184
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 185
    iget-object v2, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 186
    new-instance v3, Lorg/fourthline/cling/registry/d;

    invoke-direct {v3, p0, v0, p1}, Lorg/fourthline/cling/registry/d;-><init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 185
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_8
    move v4, v3

    .line 198
    goto/16 :goto_4
.end method

.method private b(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingNotificationByebye(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;

    move-result-object v0

    .line 305
    if-eqz p2, :cond_0

    .line 306
    iget-object v1, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/SendingAsync;->run()V

    goto :goto_0
.end method

.method private b(Lorg/fourthline/cling/model/types/UDN;)Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/DiscoveryOptions;->isAdvertised()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    new-instance v1, Lorg/fourthline/cling/registry/e;

    invoke-direct {v1, p0, p1}, Lorg/fourthline/cling/registry/e;-><init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method static synthetic f()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/Collection;
    .locals 3
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
    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 132
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final a(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/DiscoveryOptions;

    return-object v0
.end method

.method final a(Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 75
    return-void
.end method

.method final a(Lorg/fourthline/cling/model/meta/LocalDevice;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V

    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring addition, device already registered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding local device to registry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_0
    if-lt v0, v4, :cond_4

    .line 100
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding item to registry with expiration in seconds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 102
    new-instance v3, Lorg/fourthline/cling/registry/h;

    .line 103
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 102
    invoke-direct {v3, v0, p1, v4}, Lorg/fourthline/cling/registry/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registered local device: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3}, Lorg/fourthline/cling/registry/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/DiscoveryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/DiscoveryOptions;->isByeByeBeforeFirstAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 112
    invoke-direct {p0, p1, v1}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/meta/LocalDevice;Z)V

    .line 114
    :cond_2
    invoke-virtual {v3}, Lorg/fourthline/cling/registry/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-direct {p0, p1}, Lorg/fourthline/cling/registry/a;->c(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 117
    :cond_3
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/RegistryListener;

    .line 118
    iget-object v2, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v2}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 119
    new-instance v3, Lorg/fourthline/cling/registry/b;

    invoke-direct {v3, p0, v0, p1}, Lorg/fourthline/cling/registry/b;-><init>(Lorg/fourthline/cling/registry/a;Lorg/fourthline/cling/registry/RegistryListener;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 118
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 89
    :cond_4
    aget-object v5, v3, v0

    .line 91
    iget-object v6, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v5}, Lorg/fourthline/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/fourthline/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 92
    new-instance v0, Lorg/fourthline/cling/registry/RegistrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI namespace conflict with already registered resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5
    iget-object v6, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v6, v5}, Lorg/fourthline/cling/registry/RegistryImpl;->addResource(Lorg/fourthline/cling/model/resource/Resource;)V

    .line 96
    sget-object v6, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Registered resource: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 111
    goto :goto_1
.end method

.method protected final a(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/DiscoveryOptions;)V
    .locals 1

    .prologue
    .line 53
    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/registry/a;->a(Z)V

    .line 203
    return-void
.end method

.method final b(Lorg/fourthline/cling/model/meta/LocalDevice;)Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/registry/a;->a(Lorg/fourthline/cling/model/meta/LocalDevice;Z)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    return-void

    .line 215
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 216
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/types/UDN;

    invoke-direct {p0, v1}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/registry/a;->c(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    goto :goto_0
.end method

.method final d()V
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    return-void

    .line 227
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 230
    iget-object v0, p0, Lorg/fourthline/cling/registry/a;->d:Lorg/fourthline/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/RegistryImpl;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAliveIntervalMillis()I

    move-result v0

    .line 231
    if-lez v0, :cond_6

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 233
    iget-wide v6, p0, Lorg/fourthline/cling/registry/a;->b:J

    sub-long v6, v4, v6

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_3

    .line 234
    iput-wide v4, p0, Lorg/fourthline/cling/registry/a;->b:J

    .line 235
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 256
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 263
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 269
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 270
    sget-object v1, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing expired: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/registry/a;->c(Lorg/fourthline/cling/model/gena/GENASubscription;)Z

    .line 272
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    sget-object v1, Lorg/fourthline/cling/model/gena/CancelReason;->EXPIRED:Lorg/fourthline/cling/model/gena/CancelReason;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    goto :goto_3

    .line 235
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/fourthline/cling/registry/h;

    .line 236
    invoke-virtual {v1}, Lorg/fourthline/cling/registry/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/UDN;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Flooding advertisement of local item: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 238
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 244
    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/fourthline/cling/registry/a;->b:J

    .line 247
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 248
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/types/UDN;

    invoke-direct {p0, v1}, Lorg/fourthline/cling/registry/a;->b(Lorg/fourthline/cling/model/types/UDN;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->c()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 249
    sget-object v1, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local item has expired: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 250
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 256
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 257
    sget-object v1, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Refreshing local device advertisement: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-direct {p0, v1}, Lorg/fourthline/cling/registry/a;->c(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 259
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->c()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ExpirationDetails;->stampLastRefresh()V

    goto/16 :goto_1

    .line 264
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/registry/h;

    .line 265
    invoke-virtual {v0}, Lorg/fourthline/cling/registry/h;->c()Lorg/fourthline/cling/model/ExpirationDetails;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/fourthline/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method final e()V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    const-string v1, "Clearing all registered subscriptions to local devices during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lorg/fourthline/cling/registry/a;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 281
    sget-object v0, Lorg/fourthline/cling/registry/a;->g:Ljava/util/logging/Logger;

    const-string v1, "Removing all local devices from registry during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/fourthline/cling/registry/a;->a(Z)V

    .line 283
    return-void
.end method
