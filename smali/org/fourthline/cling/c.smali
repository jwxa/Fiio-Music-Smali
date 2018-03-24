.class final Lorg/fourthline/cling/c;
.super Ljava/lang/Object;
.source "ManagedUpnpService.java"

# interfaces
.implements Lorg/fourthline/cling/registry/RegistryListener;


# instance fields
.field a:Lc/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a",
            "<",
            "Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field b:Lc/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a",
            "<",
            "Lorg/fourthline/cling/registry/event/FailedRemoteDeviceDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field c:Lc/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a",
            "<",
            "Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field d:Lc/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a",
            "<",
            "Lorg/fourthline/cling/registry/event/RegistryShutdown;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final afterShutdown()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lorg/fourthline/cling/c;->d:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    new-instance v2, Lorg/fourthline/cling/e;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/e;-><init>(Lorg/fourthline/cling/c;)V

    aput-object v2, v0, v1

    .line 232
    new-instance v0, Lorg/fourthline/cling/registry/event/RegistryShutdown;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/RegistryShutdown;-><init>()V

    .line 231
    return-void
.end method

.method public final beforeShutdown(Lorg/fourthline/cling/registry/Registry;)V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/fourthline/cling/c;->d:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    new-instance v2, Lorg/fourthline/cling/d;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/d;-><init>(Lorg/fourthline/cling/c;)V

    aput-object v2, v0, v1

    .line 224
    new-instance v0, Lorg/fourthline/cling/registry/event/RegistryShutdown;

    invoke-direct {v0}, Lorg/fourthline/cling/registry/event/RegistryShutdown;-><init>()V

    .line 223
    return-void
.end method

.method public final localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lorg/fourthline/cling/c;->c:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    sget-object v2, Lorg/fourthline/cling/registry/event/Phase;->COMPLETE:Lc/a/c/a;

    aput-object v2, v0, v1

    .line 209
    new-instance v0, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 208
    return-void
.end method

.method public final localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/fourthline/cling/c;->c:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    sget-object v2, Lorg/fourthline/cling/registry/event/Phase;->BYEBYE:Lc/a/c/a;

    aput-object v2, v0, v1

    .line 216
    new-instance v0, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/LocalDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/LocalDevice;)V

    .line 215
    return-void
.end method

.method public final remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lorg/fourthline/cling/c;->a:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    sget-object v2, Lorg/fourthline/cling/registry/event/Phase;->COMPLETE:Lc/a/c/a;

    aput-object v2, v0, v1

    .line 188
    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 187
    return-void
.end method

.method public final remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/fourthline/cling/c;->b:Lc/a/a/a;

    .line 181
    new-instance v0, Lorg/fourthline/cling/registry/event/FailedRemoteDeviceDiscovery;

    invoke-direct {v0, p2, p3}, Lorg/fourthline/cling/registry/event/FailedRemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 180
    return-void
.end method

.method public final remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lorg/fourthline/cling/c;->a:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    sget-object v2, Lorg/fourthline/cling/registry/event/Phase;->ALIVE:Lc/a/c/a;

    aput-object v2, v0, v1

    .line 174
    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 173
    return-void
.end method

.method public final remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/fourthline/cling/c;->a:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    sget-object v2, Lorg/fourthline/cling/registry/event/Phase;->BYEBYE:Lc/a/c/a;

    aput-object v2, v0, v1

    .line 202
    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 201
    return-void
.end method

.method public final remoteDeviceUpdated(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lorg/fourthline/cling/c;->a:Lc/a/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    sget-object v2, Lorg/fourthline/cling/registry/event/Phase;->UPDATED:Lc/a/c/a;

    aput-object v2, v0, v1

    .line 195
    new-instance v0, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;

    invoke-direct {v0, p2}, Lorg/fourthline/cling/registry/event/RemoteDeviceDiscovery;-><init>(Lorg/fourthline/cling/model/meta/RemoteDevice;)V

    .line 194
    return-void
.end method
