.class public Lorg/fourthline/cling/registry/DefaultRegistryListener;
.super Ljava/lang/Object;
.source "DefaultRegistryListener.java"

# interfaces
.implements Lorg/fourthline/cling/registry/RegistryListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterShutdown()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public deviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public deviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V

    .line 74
    return-void
.end method

.method public localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/registry/DefaultRegistryListener;->deviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V

    .line 84
    return-void
.end method

.method public remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V

    .line 50
    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/registry/DefaultRegistryListener;->deviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/Device;)V

    .line 64
    return-void
.end method

.method public remoteDeviceUpdated(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
