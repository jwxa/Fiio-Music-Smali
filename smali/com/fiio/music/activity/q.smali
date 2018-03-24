.class final Lcom/fiio/music/activity/q;
.super Ljava/lang/Object;
.source "DlnaActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/DlnaActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/DlnaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 69
    const-string v0, "Dendy-DlnaActivity"

    const-string v1, "onServiceConnected.............."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    check-cast p2, Lorg/fourthline/cling/android/AndroidUpnpService;

    invoke-static {v0, p2}, Lcom/fiio/music/activity/DlnaActivity;->access$1(Lcom/fiio/music/activity/DlnaActivity;Lorg/fourthline/cling/android/AndroidUpnpService;)V

    .line 73
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$2(Lcom/fiio/music/activity/DlnaActivity;)Lorg/fourthline/cling/android/AndroidUpnpService;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->c:Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 75
    const-string v0, "xyz"

    const-string v1, "Connected to UPnP Service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$2(Lcom/fiio/music/activity/DlnaActivity;)Lorg/fourthline/cling/android/AndroidUpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->getDevices()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$2(Lcom/fiio/music/activity/DlnaActivity;)Lorg/fourthline/cling/android/AndroidUpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/DlnaActivity;->access$3(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/activity/t;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->addListener(Lorg/fourthline/cling/registry/RegistryListener;)V

    .line 132
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$2(Lcom/fiio/music/activity/DlnaActivity;)Lorg/fourthline/cling/android/AndroidUpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->search()V

    .line 135
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$0(Lcom/fiio/music/activity/DlnaActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/d/a/d;

    sput-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->a:Lcom/fiio/music/d/a/d;

    .line 139
    :cond_1
    return-void

    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Device;

    .line 118
    const-string v2, "xyz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "device.getDisplayString()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v2

    const-string v3, "schemas-upnp-org"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaServer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    new-instance v2, Lcom/fiio/music/d/a/d;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    .line 123
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(REMOTE) "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/fourthline/cling/model/types/DeviceType;->getDisplayString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    aput-object v5, v3, v4

    invoke-direct {v2, v0, v3}, Lcom/fiio/music/d/a/d;-><init>(Lorg/fourthline/cling/model/meta/Device;[Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$3(Lcom/fiio/music/activity/DlnaActivity;)Lcom/fiio/music/activity/t;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/t;->a(Lcom/fiio/music/d/a/d;)V

    goto/16 :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, "Dendy-DlnaActivity"

    const-string v1, "onServiceDisconnected.............."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/fiio/music/activity/q;->a:Lcom/fiio/music/activity/DlnaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/activity/DlnaActivity;->access$1(Lcom/fiio/music/activity/DlnaActivity;Lorg/fourthline/cling/android/AndroidUpnpService;)V

    .line 144
    return-void
.end method
