.class public Lorg/fourthline/cling/support/igd/PortMappingListener;
.super Lorg/fourthline/cling/registry/DefaultRegistryListener;
.source "PortMappingListener.java"


# static fields
.field public static final CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

.field public static final IGD_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

.field public static final IP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

.field public static final PPP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected activePortMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/fourthline/cling/model/meta/Service;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/PortMapping;",
            ">;>;"
        }
    .end annotation
.end field

.field protected portMappings:[Lorg/fourthline/cling/support/model/PortMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    const-class v0, Lorg/fourthline/cling/support/igd/PortMappingListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    .line 74
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "InternetGatewayDevice"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->IGD_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    .line 75
    new-instance v0, Lorg/fourthline/cling/model/types/UDADeviceType;

    const-string v1, "WANConnectionDevice"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    .line 77
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "WANIPConnection"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->IP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    .line 78
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    const-string v1, "WANPPPConnection"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->PPP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/fourthline/cling/support/model/PortMapping;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/igd/PortMappingListener;-><init>([Lorg/fourthline/cling/support/model/PortMapping;)V

    .line 87
    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/PortMapping;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/fourthline/cling/registry/DefaultRegistryListener;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->portMappings:[Lorg/fourthline/cling/support/model/PortMapping;

    .line 91
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    .locals 10

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 163
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v8, v0

    .line 142
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 143
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/support/model/PortMapping;

    .line 145
    sget-object v1, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to delete port mapping on IGD: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    new-instance v1, Lorg/fourthline/cling/support/igd/b;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/model/meta/Service;

    invoke-interface {p1}, Lorg/fourthline/cling/registry/Registry;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v4

    move-object v2, p0

    move-object v6, v5

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/support/igd/b;-><init>(Lorg/fourthline/cling/support/igd/PortMappingListener;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;Lorg/fourthline/cling/support/model/PortMapping;Ljava/util/Iterator;)V

    .line 160
    invoke-virtual {v1}, Lorg/fourthline/cling/support/igd/b;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V
    .locals 10

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/igd/PortMappingListener;->discoverConnectionService(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Activating port mappings on: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v8, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->portMappings:[Lorg/fourthline/cling/support/model/PortMapping;

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-lt v7, v9, :cond_1

    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_1
    :try_start_2
    aget-object v4, v8, v7

    .line 103
    new-instance v0, Lorg/fourthline/cling/support/igd/a;

    invoke-interface {p1}, Lorg/fourthline/cling/registry/Registry;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v3

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/support/igd/a;-><init>(Lorg/fourthline/cling/support/igd/PortMappingListener;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/PortMapping;Lorg/fourthline/cling/support/model/PortMapping;Ljava/util/List;)V

    .line 116
    invoke-virtual {v0}, Lorg/fourthline/cling/support/igd/a;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1
.end method

.method public declared-synchronized deviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V
    .locals 8

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->findServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 136
    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    aget-object v5, v3, v2

    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 126
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/Service;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Device disappeared, couldn\'t delete port mappings: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 133
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected discoverConnectionService(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    sget-object v2, Lorg/fourthline/cling/support/igd/PortMappingListener;->IGD_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 170
    :cond_1
    sget-object v1, Lorg/fourthline/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Device;->findDevices(Lorg/fourthline/cling/model/types/DeviceType;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    .line 171
    array-length v2, v1

    if-nez v2, :cond_2

    .line 172
    sget-object v1, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IGD doesn\'t support \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/fourthline/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/fourthline/cling/model/types/DeviceType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x0

    aget-object v1, v1, v0

    .line 177
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using first discovered WAN connection device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 179
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->IP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 180
    sget-object v2, Lorg/fourthline/cling/support/igd/PortMappingListener;->PPP_SERVICE_TYPE:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    .line 182
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 183
    sget-object v2, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IGD doesn\'t support IP or PPP WAN connection service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 186
    :cond_3
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method protected handleFailureMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lorg/fourthline/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 191
    return-void
.end method
