.class public Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;
.super Lorg/fourthline/cling/model/message/StreamRequestMessage;
.source "OutgoingActionRequestMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionRequestMessage;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final actionNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpRequest;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-direct {v1, v2, p2}, Lorg/fourthline/cling/model/message/UpnpRequest;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0, v1}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/message/UpnpRequest;)V

    .line 46
    instance-of v0, p1, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    .line 48
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 51
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 52
    new-instance v2, Lorg/fourthline/cling/model/message/header/UserAgentHeader;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/profile/RemoteClientInfo;->getRequestUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/UserAgentHeader;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getClientInfo()Lorg/fourthline/cling/model/profile/ClientInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getClientInfo()Lorg/fourthline/cling/model/profile/ClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/profile/ClientInfo;->getRequestHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/message/UpnpRequest;)V
    .locals 6

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lorg/fourthline/cling/model/message/StreamRequestMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpRequest;)V

    .line 63
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 64
    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    .line 65
    new-instance v2, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    sget-object v3, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/seamless/util/MimeType;

    invoke-direct {v2, v3}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/seamless/util/MimeType;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 69
    instance-of v0, p1, Lorg/fourthline/cling/model/meta/QueryStateVariableAction;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    const-string v1, "Adding magic control SOAP action header for state variable query action"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    .line 72
    new-instance v1, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 73
    const-string v2, "schemas-upnp-org"

    const-string v3, "control-1-0"

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 71
    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;-><init>(Lorg/fourthline/cling/model/types/SoapActionType;)V

    move-object v1, v0

    .line 86
    :goto_0
    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/SoapActionType;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->POST:Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v2, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v2, v1}, Lorg/fourthline/cling/model/message/UpnpHeaders;->add(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Lorg/fourthline/cling/model/message/header/UpnpHeader;)V

    .line 91
    sget-object v0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added SOAP action header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    return-void

    .line 77
    :cond_0
    new-instance v0, Lorg/fourthline/cling/model/message/header/SoapActionHeader;

    .line 78
    new-instance v1, Lorg/fourthline/cling/model/types/SoapActionType;

    .line 79
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/model/types/SoapActionType;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Ljava/lang/String;)V

    .line 77
    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/SoapActionHeader;-><init>(Lorg/fourthline/cling/model/types/SoapActionType;)V

    move-object v1, v0

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t send action with request method: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpRequest;->getMethod()Lorg/fourthline/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/fourthline/cling/model/message/control/OutgoingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
