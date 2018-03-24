.class public Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "ReceivingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync",
        "<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    .line 70
    const-class v2, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    .line 71
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 69
    invoke-interface {v1, v2, v0}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    .line 74
    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No local resource found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Found local event subscription matching relative request URI: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    new-instance v3, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {v3, v1, v2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 85
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 87
    :cond_1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscription ID and NT or Callback in subscribe request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {p0, v0, v3}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->processRenewal(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {p0, v0, v3}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->processNewSubscription(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    goto/16 :goto_0

    .line 96
    :cond_4
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No subscription ID, no NT or Callback, neither subscription or renewal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0
.end method

.method protected processNewSubscription(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing or invalid Callback URLs in subscribe request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 169
    :goto_0
    return-object v0

    .line 133
    :cond_1
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing or invalid NT header in subscribe request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->isReceivedSubscriptionTimeoutIgnored()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x0

    .line 146
    :goto_1
    :try_start_0
    new-instance v2, Lorg/fourthline/cling/protocol/sync/c;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/fourthline/cling/protocol/sync/c;-><init>(Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;Lorg/fourthline/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    iput-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding subscription to registry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->addLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    .line 168
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Returning subscription response, waiting to send initial event"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 169
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getRequestedTimeoutSeconds()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t create local subscription to service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 162
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0
.end method

.method protected processRenewal(Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->getLocalSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid subscription ID for renewal request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    .line 119
    :goto_0
    return-object v0

    .line 113
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Renewing subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/gena/IncomingSubscribeRequestMessage;->getRequestedTimeoutSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->setSubscriptionDuration(Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->updateLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    goto :goto_0

    .line 118
    :cond_1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscription went away before it could be renewed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0
.end method

.method public responseException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response could not be send to subscriber, removing local GENA subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    goto :goto_0
.end method

.method public responseSent(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 174
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 184
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Establishing subscription"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->registerOnService()V

    .line 186
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->establish()V

    .line 188
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Response to subscription sent successfully, now sending initial event asynchronously"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-interface {v1, v2}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingEvent(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingEvent;

    move-result-object v1

    .line 189
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Subscription request\'s response aborted, not sending initial event"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 195
    if-nez p1, :cond_3

    .line 196
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Reason: No response at all from subscriber"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 200
    :goto_1
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing subscription from registry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/fourthline/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->removeLocalSubscription(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Z

    goto/16 :goto_0

    .line 198
    :cond_3
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method
