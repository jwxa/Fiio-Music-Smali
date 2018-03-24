.class public Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;
.super Ljava/lang/Object;
.source "ProtocolFactoryImpl.java"

# interfaces
.implements Lorg/fourthline/cling/protocol/ProtocolFactory;


# static fields
.field private static synthetic $SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method:[I

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final upnpService:Lorg/fourthline/cling/UpnpService;


# direct methods
.method static synthetic $SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method()[I
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->$SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->values()[Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->$SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/fourthline/cling/protocol/ProtocolFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating ProtocolFactory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    .line 79
    return-void
.end method


# virtual methods
.method protected createReceivingAction(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingAction;
    .locals 2

    .prologue
    .line 244
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public createReceivingAsync(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 86
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating protocol for incoming asynchronous: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    if-eqz v0, :cond_3

    .line 91
    invoke-static {}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->$SWITCH_TABLE$org$fourthline$cling$model$message$UpnpRequest$Method()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :cond_0
    new-instance v0, Lorg/fourthline/cling/protocol/ProtocolCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Protocol for incoming datagram message not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->isByeBye(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->isSupportedServiceAdvertisement(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingNotification(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    .line 93
    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingSearch(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->isSupportedServiceAdvertisement(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingSearchResponse(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 102
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createReceivingEvent(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingEvent;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingEvent;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method protected createReceivingNotification(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage",
            "<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)",
            "Lorg/fourthline/cling/protocol/ReceivingAsync;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lorg/fourthline/cling/protocol/async/ReceivingNotification;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingNotification;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-object v0
.end method

.method protected createReceivingRetrieval(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method protected createReceivingSearch(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage",
            "<",
            "Lorg/fourthline/cling/model/message/UpnpRequest;",
            ">;)",
            "Lorg/fourthline/cling/protocol/ReceivingAsync;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lorg/fourthline/cling/protocol/async/ReceivingSearch;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-object v0
.end method

.method protected createReceivingSearchResponse(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Lorg/fourthline/cling/protocol/ReceivingAsync;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/message/IncomingDatagramMessage",
            "<",
            "Lorg/fourthline/cling/model/message/UpnpResponse;",
            ">;)",
            "Lorg/fourthline/cling/protocol/ReceivingAsync;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/fourthline/cling/protocol/async/ReceivingSearchResponse;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/ReceivingSearchResponse;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)V

    return-object v0
.end method

.method protected createReceivingSubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public createReceivingSync(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/ReceivingSync;
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating protocol for incoming synchronous: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->GET:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingRetrieval(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingRetrieval;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isControlPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingAction(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isEventSubscriptionPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingSubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingSubscribe;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingUnsubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isEventCallbackPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingEvent(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :cond_4
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/event/cb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    sget-object v0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fixing trailing garbage in event message path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    const-string v2, "/cb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->setUri(Ljava/net/URI;)V

    .line 186
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getNamespace()Lorg/fourthline/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/Namespace;->isEventCallbackPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->createReceivingEvent(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingEvent;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_5
    new-instance v0, Lorg/fourthline/cling/protocol/ProtocolCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Protocol for message type not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createReceivingUnsubscribe(Lorg/fourthline/cling/model/message/StreamRequestMessage;)Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/ReceivingUnsubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    return-object v0
.end method

.method public createSendingAction(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/fourthline/cling/protocol/sync/SendingAction;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingAction;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/protocol/sync/SendingAction;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    return-object v0
.end method

.method public createSendingEvent(Lorg/fourthline/cling/model/gena/LocalGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingEvent;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingEvent;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/SendingEvent;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/LocalGENASubscription;)V

    return-object v0
.end method

.method public createSendingNotificationAlive(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/SendingNotificationAlive;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingNotificationByebye(Lorg/fourthline/cling/model/meta/LocalDevice;)Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/async/SendingNotificationByebye;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingRenewal(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingRenewal;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingRenewal;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/SendingRenewal;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public createSendingSearch(Lorg/fourthline/cling/model/message/header/UpnpHeader;I)Lorg/fourthline/cling/protocol/async/SendingSearch;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lorg/fourthline/cling/protocol/async/SendingSearch;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/fourthline/cling/protocol/async/SendingSearch;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method

.method public createSendingSubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingSubscribe;
    .locals 3

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRouter()Lorg/fourthline/cling/transport/Router;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteDeviceIdentity;->getDiscoveredOnLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 215
    invoke-interface {v1, v0}, Lorg/fourthline/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object v0

    .line 218
    new-instance v1, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/fourthline/cling/protocol/sync/SendingSubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Lorg/fourthline/cling/protocol/ProtocolCreationException;

    .line 221
    const-string v2, "Failed to obtain local stream servers (for event callback URL creation) from router"

    .line 220
    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createSendingUnsubscribe(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/fourthline/cling/protocol/sync/SendingUnsubscribe;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public getUpnpService()Lorg/fourthline/cling/UpnpService;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/fourthline/cling/UpnpService;

    return-object v0
.end method

.method protected isByeBye(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    sget-object v1, Lorg/fourthline/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/fourthline/cling/model/types/NotificationSubtype;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSupportedServiceAdvertisement(Lorg/fourthline/cling/model/message/IncomingDatagramMessage;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getExclusiveServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v3

    .line 130
    if-nez v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    array-length v2, v3

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lorg/fourthline/cling/model/message/IncomingDatagramMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v4, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    if-eqz v4, :cond_0

    .line 137
    :try_start_0
    invoke-static {v4}, Lorg/fourthline/cling/model/types/NamedServiceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/NamedServiceType;

    move-result-object v5

    .line 138
    array-length v6, v3
    :try_end_0
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :goto_1
    if-lt v2, v6, :cond_3

    .line 145
    :goto_2
    sget-object v1, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service advertisement not supported, dropping it: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_3
    :try_start_1
    aget-object v7, v3, v2

    .line 139
    invoke-virtual {v5}, Lorg/fourthline/cling/model/types/NamedServiceType;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z
    :try_end_1
    .catch Lorg/fourthline/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    move v0, v1

    .line 140
    goto :goto_0

    .line 138
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    sget-object v1, Lorg/fourthline/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a named service type header value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_2
.end method
