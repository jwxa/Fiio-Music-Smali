.class public Lorg/fourthline/cling/protocol/sync/SendingEvent;
.super Lorg/fourthline/cling/protocol/SendingSync;
.source "SendingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/SendingSync",
        "<",
        "Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected final requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

.field protected final subscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V
    .locals 5

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/protocol/SendingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 54
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    iput-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 68
    invoke-virtual {p2}, Lorg/fourthline/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 69
    return-void

    .line 58
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 59
    iget-object v3, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    new-instance v4, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    invoke-direct {v4, p2, v0}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;-><init>(Lorg/fourthline/cling/model/gena/GENASubscription;Ljava/net/URL;)V

    aput-object v4, v3, v1

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/fourthline/cling/transport/spi/GENAEventProcessor;

    move-result-object v0

    iget-object v3, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Lorg/fourthline/cling/transport/spi/GENAEventProcessor;->writeBody(Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;)V

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 8

    .prologue
    .line 73
    sget-object v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending event for subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 94
    return-object v1

    .line 77
    :cond_0
    aget-object v1, v2, v0

    .line 79
    iget-object v4, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 80
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending initial event message to callback URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    :goto_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/SendingEvent;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/fourthline/cling/transport/Router;->send(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v1

    .line 88
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received event callback response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    sget-object v4, Lorg/fourthline/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending event message \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/fourthline/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to callback URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/gena/OutgoingEventRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method
