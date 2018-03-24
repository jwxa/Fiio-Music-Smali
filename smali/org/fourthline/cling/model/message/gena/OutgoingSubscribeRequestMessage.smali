.class public Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "OutgoingSubscribeRequestMessage.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/gena/RemoteGENASubscription;Ljava/util/List;Lorg/fourthline/cling/model/message/UpnpHeaders;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/gena/RemoteGENASubscription;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Lorg/fourthline/cling/model/message/UpnpHeaders;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getEventSubscriptionURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 42
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 43
    new-instance v2, Lorg/fourthline/cling/model/message/header/CallbackHeader;

    invoke-direct {v2, p2}, Lorg/fourthline/cling/model/message/header/CallbackHeader;-><init>(Ljava/util/List;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 46
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 47
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 48
    new-instance v2, Lorg/fourthline/cling/model/message/header/NTEventHeader;

    invoke-direct {v2}, Lorg/fourthline/cling/model/message/header/NTEventHeader;-><init>()V

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 52
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 53
    new-instance v2, Lorg/fourthline/cling/model/message/header/TimeoutHeader;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/gena/RemoteGENASubscription;->getRequestedDurationSeconds()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/TimeoutHeader;-><init>(I)V

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 56
    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public hasCallbackURLs()Z
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/CallbackHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/CallbackHeader;

    .line 61
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/CallbackHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
