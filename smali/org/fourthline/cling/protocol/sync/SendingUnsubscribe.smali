.class public Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync",
        "<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
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
    .line 41
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V
    .locals 3

    .prologue
    .line 46
    .line 48
    new-instance v1, Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;

    .line 50
    invoke-interface {p1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-interface {v2, v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getEventSubscriptionHeaders(Lorg/fourthline/cling/model/meta/RemoteService;)Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 48
    invoke-direct {v1, p2, v0}, Lorg/fourthline/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/UpnpHeaders;)V

    invoke-direct {p0, p1, v1}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 53
    iput-object p2, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    .line 54
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending unsubscribe request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 63
    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    invoke-virtual {p0, v1}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 66
    throw v0
.end method

.method protected onUnsubscribe(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeRemoteSubscription(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    .line 73
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 74
    new-instance v1, Lorg/fourthline/cling/protocol/sync/l;

    invoke-direct {v1, p0, p1}, Lorg/fourthline/cling/protocol/sync/l;-><init>(Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 73
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
