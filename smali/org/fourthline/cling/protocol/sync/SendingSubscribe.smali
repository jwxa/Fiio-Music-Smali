.class public Lorg/fourthline/cling/protocol/sync/SendingSubscribe;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync",
        "<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;",
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
    .line 51
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/UpnpService;",
            "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/NetworkAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .line 60
    new-instance v1, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    .line 64
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    .line 62
    invoke-virtual {p2, p3, v0}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getEventCallbackURLs(Ljava/util/List;Lorg/fourthline/cling/model/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 66
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {v3, v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 60
    invoke-direct {v1, p2, v2, v0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    invoke-direct {p0, p1, v1}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 70
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 71
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->hasCallbackURLs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription failed, no active local callback URLs available (network disabled?)"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 78
    new-instance v2, Lorg/fourthline/cling/protocol/sync/g;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/protocol/sync/g;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    .line 77
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 143
    :goto_0
    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending subscription request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->lockRemoteSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    :try_end_1
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 101
    if-nez v2, :cond_1

    .line 102
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->onSubscriptionFailure()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->onSubscriptionFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    move-object v0, v1

    .line 98
    goto :goto_0

    .line 106
    :cond_1
    :try_start_4
    new-instance v1, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 108
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscription failed, response was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 111
    new-instance v2, Lorg/fourthline/cling/protocol/sync/h;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/h;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 110
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    move-object v0, v1

    .line 143
    goto/16 :goto_0

    .line 117
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->isValidHeaders()Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v2, "Subscription failed, invalid or missing (SID, Timeout) response headers"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 120
    new-instance v2, Lorg/fourthline/cling/protocol/sync/i;

    invoke-direct {v2, p0, v1}, Lorg/fourthline/cling/protocol/sync/i;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 119
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    .line 146
    throw v0

    .line 128
    :cond_3
    :try_start_6
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription established, adding to registry, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->setSubscriptionId(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 132
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v2}, Lorg/fourthline/cling/registry/Registry;->addRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 134
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 135
    new-instance v2, Lorg/fourthline/cling/protocol/sync/j;

    invoke-direct {v2, p0}, Lorg/fourthline/cling/protocol/sync/j;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    .line 134
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method protected onSubscriptionFailure()V
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Subscription failed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 152
    new-instance v1, Lorg/fourthline/cling/protocol/sync/k;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/protocol/sync/k;-><init>(Lorg/fourthline/cling/protocol/sync/SendingSubscribe;)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method
