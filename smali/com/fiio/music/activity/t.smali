.class public final Lcom/fiio/music/activity/t;
.super Lorg/fourthline/cling/registry/DefaultRegistryListener;
.source "DlnaActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/DlnaActivity;


# direct methods
.method public constructor <init>(Lcom/fiio/music/activity/DlnaActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/fiio/music/activity/t;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-direct {p0}, Lorg/fourthline/cling/registry/DefaultRegistryListener;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/t;)Lcom/fiio/music/activity/DlnaActivity;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fiio/music/activity/t;->a:Lcom/fiio/music/activity/DlnaActivity;

    return-object v0
.end method

.method private b(Lcom/fiio/music/d/a/d;)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/fiio/music/activity/t;->a:Lcom/fiio/music/activity/DlnaActivity;

    new-instance v1, Lcom/fiio/music/activity/v;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/activity/v;-><init>(Lcom/fiio/music/activity/t;Lcom/fiio/music/d/a/d;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/DlnaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method


# virtual methods
.method public final a(Lcom/fiio/music/d/a/d;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/fiio/music/activity/t;->a:Lcom/fiio/music/activity/DlnaActivity;

    new-instance v1, Lcom/fiio/music/activity/u;

    invoke-direct {v1, p0, p1}, Lcom/fiio/music/activity/u;-><init>(Lcom/fiio/music/activity/t;Lcom/fiio/music/d/a/d;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/DlnaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public final localDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 5

    .prologue
    .line 347
    const-string v0, "DeviceListRegistryListener"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localDeviceAdded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Lcom/fiio/music/d/a/d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 352
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(REMOTE) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/DeviceType;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcom/fiio/music/d/a/d;-><init>(Lorg/fourthline/cling/model/meta/Device;[Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/d/a/d;)V

    .line 355
    return-void
.end method

.method public final localDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 4

    .prologue
    .line 359
    const-string v0, "DeviceListRegistryListener"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localDeviceRemoved:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lcom/fiio/music/d/a/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 364
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    .line 363
    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcom/fiio/music/d/a/d;-><init>(Lorg/fourthline/cling/model/meta/Device;[Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/fiio/music/activity/t;->b(Lcom/fiio/music/d/a/d;)V

    .line 366
    return-void
.end method

.method public final remoteDeviceAdded(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 5

    .prologue
    .line 306
    const-string v0, "DeviceListRegistryListener"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remoteDeviceAdded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Lcom/fiio/music/d/a/d;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 313
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(REMOTE) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/DeviceType;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 312
    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcom/fiio/music/d/a/d;-><init>(Lorg/fourthline/cling/model/meta/Device;[Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/d/a/d;)V

    .line 327
    :cond_0
    return-void
.end method

.method public final remoteDeviceDiscoveryFailed(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public final remoteDeviceDiscoveryStarted(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public final remoteDeviceRemoved(Lorg/fourthline/cling/registry/Registry;Lorg/fourthline/cling/model/meta/RemoteDevice;)V
    .locals 4

    .prologue
    .line 331
    new-instance v0, Lcom/fiio/music/d/a/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    .line 331
    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcom/fiio/music/d/a/d;-><init>(Lorg/fourthline/cling/model/meta/Device;[Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/fiio/music/activity/t;->b(Lcom/fiio/music/d/a/d;)V

    .line 343
    return-void
.end method
