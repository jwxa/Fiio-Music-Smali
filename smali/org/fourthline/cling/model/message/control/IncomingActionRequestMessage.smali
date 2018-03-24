.class public Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "IncomingActionRequestMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionRequestMessage;


# instance fields
.field private final action:Lorg/fourthline/cling/model/meta/Action;

.field private final actionNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 5

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v2, "Missing SOAP action header"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 47
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/fourthline/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    iput-object v1, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/fourthline/cling/model/meta/Action;

    .line 48
    iget-object v1, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/fourthline/cling/model/meta/Action;

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v2, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service doesn\'t implement action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    const-string v1, "QueryStateVariable"

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/LocalService;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/SoapActionType;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v2, "Service doesn\'t support the requested service version"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getAction()Lorg/fourthline/cling/model/meta/Action;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/fourthline/cling/model/meta/Action;

    return-object v0
.end method

.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
