.class public Lorg/fourthline/cling/protocol/sync/SendingRenewal;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingRenewal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync",
        "<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 3

    .prologue
    .line 48
    .line 50
    new-instance v1, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;

    .line 52
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {v2, v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 50
    invoke-direct {v1, p2, v0}, Lorg/fourthline/cling/model/message/gena/OutgoingRenewalRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    invoke-direct {p0, p1, v1}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 55
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;
    .locals 5

    .prologue
    .line 59
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending subscription renewal request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->onRenewalFailure()V

    .line 71
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->onRenewalFailure()V

    .line 66
    throw v0

    .line 74
    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 76
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription renewal failed, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 79
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 80
    new-instance v2, Lorg/fourthline/cling/protocol/sync/d;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/d;-><init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 79
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    move-object v0, v1

    .line 101
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->isValidHeaders()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription renewal failed, invalid or missing (SID, Timeout) response headers"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 89
    new-instance v2, Lorg/fourthline/cling/protocol/sync/e;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/e;-><init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 88
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 96
    :cond_2
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription renewed, updating in registry, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 98
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->updateRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    goto :goto_1
.end method

.method protected onRenewalFailure()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    const-string v1, "Subscription renewal failed, removing subscription from registry"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 107
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 108
    new-instance v1, Lorg/fourthline/cling/protocol/sync/f;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/protocol/sync/f;-><init>(Lorg/fourthline/cling/protocol/sync/SendingRenewal;)V

    .line 107
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method
