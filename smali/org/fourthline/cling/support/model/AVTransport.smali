.class public Lorg/fourthline/cling/support/model/AVTransport;
.super Ljava/lang/Object;
.source "AVTransport.java"


# instance fields
.field protected deviceCapabilities:Lorg/fourthline/cling/support/model/DeviceCapabilities;

.field protected final instanceID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected final lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

.field protected mediaInfo:Lorg/fourthline/cling/support/model/MediaInfo;

.field protected positionInfo:Lorg/fourthline/cling/support/model/PositionInfo;

.field protected transportInfo:Lorg/fourthline/cling/support/model/TransportInfo;

.field protected transportSettings:Lorg/fourthline/cling/support/model/TransportSettings;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/model/AVTransport;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;[Lorg/fourthline/cling/support/model/StorageMedium;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;[Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->instanceID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 42
    iput-object p2, p0, Lorg/fourthline/cling/support/model/AVTransport;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    .line 43
    new-instance v0, Lorg/fourthline/cling/support/model/DeviceCapabilities;

    invoke-direct {v0, p3}, Lorg/fourthline/cling/support/model/DeviceCapabilities;-><init>([Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setDeviceCapabilities(Lorg/fourthline/cling/support/model/DeviceCapabilities;)V

    .line 44
    new-instance v0, Lorg/fourthline/cling/support/model/MediaInfo;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/MediaInfo;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setMediaInfo(Lorg/fourthline/cling/support/model/MediaInfo;)V

    .line 45
    new-instance v0, Lorg/fourthline/cling/support/model/TransportInfo;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/TransportInfo;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportInfo(Lorg/fourthline/cling/support/model/TransportInfo;)V

    .line 46
    new-instance v0, Lorg/fourthline/cling/support/model/PositionInfo;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/PositionInfo;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setPositionInfo(Lorg/fourthline/cling/support/model/PositionInfo;)V

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/TransportSettings;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDeviceCapabilities()Lorg/fourthline/cling/support/model/DeviceCapabilities;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->deviceCapabilities:Lorg/fourthline/cling/support/model/DeviceCapabilities;

    return-object v0
.end method

.method public getInstanceId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->instanceID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->lastChange:Lorg/fourthline/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public getMediaInfo()Lorg/fourthline/cling/support/model/MediaInfo;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->mediaInfo:Lorg/fourthline/cling/support/model/MediaInfo;

    return-object v0
.end method

.method public getPositionInfo()Lorg/fourthline/cling/support/model/PositionInfo;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->positionInfo:Lorg/fourthline/cling/support/model/PositionInfo;

    return-object v0
.end method

.method public getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportInfo:Lorg/fourthline/cling/support/model/TransportInfo;

    return-object v0
.end method

.method public getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportSettings:Lorg/fourthline/cling/support/model/TransportSettings;

    return-object v0
.end method

.method public setDeviceCapabilities(Lorg/fourthline/cling/support/model/DeviceCapabilities;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->deviceCapabilities:Lorg/fourthline/cling/support/model/DeviceCapabilities;

    .line 88
    return-void
.end method

.method public setMediaInfo(Lorg/fourthline/cling/support/model/MediaInfo;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->mediaInfo:Lorg/fourthline/cling/support/model/MediaInfo;

    .line 64
    return-void
.end method

.method public setPositionInfo(Lorg/fourthline/cling/support/model/PositionInfo;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->positionInfo:Lorg/fourthline/cling/support/model/PositionInfo;

    .line 80
    return-void
.end method

.method public setTransportInfo(Lorg/fourthline/cling/support/model/TransportInfo;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportInfo:Lorg/fourthline/cling/support/model/TransportInfo;

    .line 72
    return-void
.end method

.method public setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/fourthline/cling/support/model/AVTransport;->transportSettings:Lorg/fourthline/cling/support/model/TransportSettings;

    .line 96
    return-void
.end method
