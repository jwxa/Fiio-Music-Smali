.class public Lorg/fourthline/cling/protocol/sync/ReceivingEvent;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "ReceivingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync",
        "<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 49
    return-void
.end method

.method static synthetic access$1()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->isContentTypeTextUDA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received without or with invalid Content-Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    .line 61
    const-class v2, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 60
    invoke-interface {v1, v2, v0}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;

    .line 65
    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No local resource found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 146
    :goto_0
    return-object v0

    .line 71
    :cond_1
    new-instance v2, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceEventCallbackResource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-direct {v2, v1, v0}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/RemoteService;)V

    .line 74
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 75
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscription ID missing in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->hasValidNotificationHeaders()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing NT and/or NTS headers in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->hasValidNotificationHeaders()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid NT and/or NTS headers in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 89
    :cond_4
    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    if-nez v0, :cond_5

    .line 90
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sequence missing in event request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;->readBody(Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->lockRemoteSubscriptions()V

    .line 124
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/fourthline/cling/registry/Registry;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    move-result-object v0

    .line 126
    if-nez v0, :cond_7

    .line 127
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid subscription ID, no active subscription: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t read event message request body, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-virtual {v2}, Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/fourthline/cling/registry/Registry;->getRemoteSubscription(Ljava/lang/String;)Lorg/fourthline/cling/model/gena/RemoteGENASubscription;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 106
    new-instance v3, Lorg/fourthline/cling/protocol/sync/a;

    invoke-direct {v3, p0, v1, v0}, Lorg/fourthline/cling/protocol/sync/a;-><init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/UnsupportedDataException;)V

    .line 105
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 114
    :cond_6
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 131
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 132
    new-instance v3, Lorg/fourthline/cling/protocol/sync/b;

    invoke-direct {v3, p0, v0, v2}, Lorg/fourthline/cling/protocol/sync/b;-><init>(Lorg/fourthline/cling/protocol/sync/ReceivingEvent;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Lorg/fourthline/cling/model/message/gena/IncomingEventRequestMessage;)V

    .line 131
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    .line 146
    new-instance v0, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;

    invoke-direct {v0}, Lorg/fourthline/cling/model/message/gena/OutgoingEventResponseMessage;-><init>()V

    goto/16 :goto_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/registry/Registry;->unlockRemoteSubscriptions()V

    .line 144
    throw v0
.end method
