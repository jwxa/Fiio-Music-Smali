.class public abstract Lorg/fourthline/cling/controlpoint/SubscriptionCallback;
.super Ljava/lang/Object;
.source "SubscriptionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static log:Ljava/util/logging/Logger;


# instance fields
.field private controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

.field protected final requestedDurationSeconds:Ljava/lang/Integer;

.field protected final service:Lorg/fourthline/cling/model/meta/Service;

.field private subscription:Lorg/fourthline/cling/model/gena/GENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 87
    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    .line 88
    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    .line 93
    return-void
.end method

.method public static createDefaultFailureMessage(Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    const-string v0, "Subscription failed: "

    .line 334
    if-eqz p0, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " HTTP response was: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 336
    :cond_0
    if-eqz p1, :cond_1

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " Exception occured: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " No response received."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private endLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 3

    .prologue
    .line 260
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing local subscription and ending it in callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->end(Lorg/fourthline/cling/model/gena/CancelReason;)V

    .line 263
    return-void
.end method

.method private endRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 3

    .prologue
    .line 266
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ending remote subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSyncProtocolExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingUnsubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    move-result-object v1

    .line 267
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method private establishLocalSubscription(Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/LocalService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/fourthline/cling/registry/Registry;->getLocalDevice(Lorg/fourthline/cling/model/types/UDN;Z)Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v1, "Local device service is currently not registered, failing subscription immediately"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Local device is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v2, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 194
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/controlpoint/a;

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, p0, p1, v0, v3}, Lorg/fourthline/cling/controlpoint/a;-><init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v3, "Local device service is currently registered, also registering subscription"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    .line 177
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v3, "Notifying subscription callback of local subscription availablity"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->establish()V

    .line 180
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Simulating first initial event for local subscription callback, sequence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V

    .line 182
    invoke-virtual {v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 184
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v3, "Starting to monitor state changes of local service"

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->registerOnService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :goto_1
    sget-object v3, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local callback creation failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 189
    sget-object v3, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Exception root cause: "

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    .line 192
    :cond_1
    invoke-virtual {p0, v1, v2, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private establishRemoteSubscription(Lorg/fourthline/cling/model/meta/RemoteService;)V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lorg/fourthline/cling/controlpoint/b;

    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lorg/fourthline/cling/controlpoint/b;-><init>(Lorg/fourthline/cling/controlpoint/SubscriptionCallback;Lorg/fourthline/cling/model/meta/RemoteService;I)V

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingSubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingSubscribe;
    :try_end_0
    .catch Lorg/fourthline/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->run()V

    .line 248
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 1

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;

    instance-of v0, v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;

    check-cast v0, Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->endLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;

    instance-of v0, v0, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;

    check-cast v0, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->endRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract ended(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/gena/CancelReason;Lorg/fourthline/cling/model/message/UpnpResponse;)V
.end method

.method protected abstract established(Lorg/fourthline/cling/model/gena/GENASubscription;)V
.end method

.method protected abstract eventReceived(Lorg/fourthline/cling/model/gena/GENASubscription;)V
.end method

.method protected abstract eventsMissed(Lorg/fourthline/cling/model/gena/GENASubscription;I)V
.end method

.method protected failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {p2, p3}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->createDefaultFailureMessage(Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method protected abstract failed(Lorg/fourthline/cling/model/gena/GENASubscription;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public declared-synchronized getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getService()Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    return-object v0
.end method

.method public declared-synchronized getSubscription()Lorg/fourthline/cling/model/gena/GENASubscription;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected invalidMessage(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V
    .locals 3

    .prologue
    .line 361
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid event message received, causing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v1, "------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 364
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/UnsupportedDataException;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 365
    sget-object v0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v1, "------------------------------------------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 367
    :cond_0
    return-void
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be executed through ControlPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/meta/LocalService;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/fourthline/cling/model/meta/LocalService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/meta/RemoteService;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->service:Lorg/fourthline/cling/model/meta/Service;

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->establishRemoteSubscription(Lorg/fourthline/cling/model/meta/RemoteService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscription(Lorg/fourthline/cling/model/gena/GENASubscription;)V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/fourthline/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(SubscriptionCallback) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/SubscriptionCallback;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
