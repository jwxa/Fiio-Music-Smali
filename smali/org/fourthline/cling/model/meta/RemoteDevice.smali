.class public Lorg/fourthline/cling/model/meta/RemoteDevice;
.super Lorg/fourthline/cling/model/meta/Device;
.source "RemoteDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/meta/Device",
        "<",
        "Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;",
        "Lorg/fourthline/cling/model/meta/RemoteDevice;",
        "Lorg/fourthline/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    new-array v4, v1, [Lorg/fourthline/cling/model/meta/Icon;

    aput-object p4, v4, v0

    new-array v5, v1, [Lorg/fourthline/cling/model/meta/RemoteService;

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    new-array v4, v1, [Lorg/fourthline/cling/model/meta/Icon;

    aput-object p4, v4, v0

    new-array v5, v1, [Lorg/fourthline/cling/model/meta/RemoteService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6

    .prologue
    .line 79
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7

    .prologue
    .line 84
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6

    .prologue
    .line 49
    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    const/4 v4, 0x0

    new-array v5, v1, [Lorg/fourthline/cling/model/meta/RemoteService;

    aput-object p4, v5, v0

    new-array v6, v1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6

    .prologue
    .line 89
    const/4 v0, 0x1

    new-array v5, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/RemoteService;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    new-array v5, v1, [Lorg/fourthline/cling/model/meta/RemoteService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct/range {p0 .. p6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 6

    .prologue
    .line 59
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 7

    .prologue
    .line 64
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 65
    return-void
.end method


# virtual methods
.method public discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 187
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-lt v0, v3, :cond_3

    .line 194
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/resource/Resource;

    return-object v0

    .line 181
    :cond_1
    aget-object v5, v3, v1

    .line 182
    if-eqz v5, :cond_2

    .line 183
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getEventCallbackPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/RemoteService;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_3
    aget-object v4, v1, v0

    .line 189
    if-eqz v4, :cond_4

    .line 190
    invoke-virtual {v4, p1}, Lorg/fourthline/cling/model/meta/Device;->discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object v0
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    goto :goto_0
.end method

.method public bridge synthetic getRoot()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :goto_0
    return-object p0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-object p0, v0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getServices()[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->services:[Lorg/fourthline/cling/model/meta/Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/meta/RemoteDevice;->services:[Lorg/fourthline/cling/model/meta/Service;

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    goto :goto_0
.end method

.method public bridge synthetic getServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getServices()[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;
    .locals 8

    .prologue
    .line 1
    move-object v6, p6

    check-cast v6, [Lorg/fourthline/cling/model/meta/RemoteService;

    move-object v7, p7

    check-cast v7, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    .line 143
    new-instance v1, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-direct {v1, p1, v2}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;)V

    .line 146
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {p7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-object v7, v2

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 142
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;-><init>(Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/RemoteService;[Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    return-object v0

    .line 146
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;[",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/RemoteService;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lorg/fourthline/cling/model/meta/RemoteService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .locals 8

    .prologue
    .line 1
    move-object v6, p6

    check-cast v6, [Lorg/fourthline/cling/model/meta/Action;

    move-object v7, p7

    check-cast v7, [Lorg/fourthline/cling/model/meta/StateVariable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public newServiceArray(I)[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1

    .prologue
    .line 168
    new-array v0, p1, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public normalizeURI(Ljava/net/URI;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/seamless/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteDevice;

    return-object v0
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/fourthline/cling/model/meta/RemoteService;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/RemoteService;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method
