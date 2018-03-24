.class public Lorg/fourthline/cling/protocol/sync/ReceivingAction;
.super Lorg/fourthline/cling/protocol/ReceivingSync;
.source "ReceivingAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/protocol/ReceivingSync",
        "<",
        "Lorg/fourthline/cling/model/message/StreamRequestMessage;",
        "Lorg/fourthline/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/protocol/ReceivingSync;-><init>(Lorg/fourthline/cling/UpnpService;Lorg/fourthline/cling/model/message/StreamRequestMessage;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected executeSync()Lorg/fourthline/cling/model/message/StreamResponseMessage;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/fourthline/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/fourthline/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/fourthline/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->isUDACompliantXML()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received invalid Content-Type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\': "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    new-instance v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/model/message/UpnpResponse;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 157
    :goto_0
    return-object v0

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received without Content-Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/UpnpService;->getRegistry()Lorg/fourthline/cling/registry/Registry;

    move-result-object v1

    .line 76
    const-class v2, Lorg/fourthline/cling/model/resource/ServiceControlResource;

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 75
    invoke-interface {v1, v2, v0}, Lorg/fourthline/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/resource/ServiceControlResource;

    .line 80
    if-nez v0, :cond_2

    .line 81
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No local resource found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v0, v3

    .line 82
    goto :goto_0

    .line 85
    :cond_2
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "Found local action resource matching relative request URI: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    :try_start_0
    new-instance v4, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/fourthline/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceControlResource;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {v4, v1, v2}, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;-><init>(Lorg/fourthline/cling/model/message/StreamRequestMessage;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 96
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Created incoming action request message: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    invoke-virtual {v4}, Lorg/fourthline/cling/model/message/control/IncomingActionRequestMessage;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V

    .line 100
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v5, "Reading body of request message"

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v2

    invoke-interface {v2, v4, v1}, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;->readBody(Lorg/fourthline/cling/model/message/control/ActionRequestMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 103
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Executing on local service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lorg/fourthline/cling/model/resource/ServiceControlResource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/meta/LocalService;->getExecutor(Lorg/fourthline/cling/model/meta/Action;)Lorg/fourthline/cling/model/action/ActionExecutor;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/fourthline/cling/model/action/ActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 106
    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v0

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/meta/Action;)V
    :try_end_0
    .catch Lorg/fourthline/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    :goto_1
    :try_start_1
    sget-object v2, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v3, "Writing body of response message"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getUpnpService()Lorg/fourthline/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpService;->getConfiguration()Lorg/fourthline/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/fourthline/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/fourthline/cling/transport/spi/SOAPActionProcessor;->writeBody(Lorg/fourthline/cling/model/message/control/ActionResponseMessage;Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 151
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returning finished response message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v2, "Failure writing body of response message, sending \'500 Internal Server Error\' without body"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception root cause: "

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance v0, Lorg/fourthline/cling/model/message/StreamResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0

    .line 111
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/action/ActionCancelledException;

    if-eqz v0, :cond_4

    .line 112
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v1, "Action execution was cancelled, returning 404 to client"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v0, v3

    .line 116
    goto/16 :goto_0

    .line 119
    :cond_4
    new-instance v0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;

    .line 120
    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    .line 121
    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v3

    .line 119
    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;Lorg/fourthline/cling/model/meta/Action;)V
    :try_end_2
    .catch Lorg/fourthline/cling/model/action/ActionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/fourthline/cling/model/UnsupportedDataException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    sget-object v1, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error executing local action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 129
    new-instance v1, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;-><init>(Lorg/fourthline/cling/model/action/ActionException;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V

    .line 130
    new-instance v0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v2, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v2}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_1

    .line 132
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 133
    sget-object v0, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading action request XML body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/fourthline/cling/model/UnsupportedDataException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v2, Lorg/fourthline/cling/model/action/RemoteActionInvocation;

    .line 137
    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/fourthline/cling/model/action/ActionException;

    if-eqz v0, :cond_5

    .line 138
    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionException;

    .line 140
    :goto_2
    invoke-virtual {p0}, Lorg/fourthline/cling/protocol/sync/ReceivingAction;->getRemoteClientInfo()Lorg/fourthline/cling/model/profile/RemoteClientInfo;

    move-result-object v1

    .line 136
    invoke-direct {v2, v0, v1}, Lorg/fourthline/cling/model/action/RemoteActionInvocation;-><init>(Lorg/fourthline/cling/model/action/ActionException;Lorg/fourthline/cling/model/profile/RemoteClientInfo;)V

    .line 142
    new-instance v0, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse$Status;)V

    move-object v1, v2

    goto/16 :goto_1

    .line 139
    :cond_5
    new-instance v0, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    goto :goto_2
.end method
