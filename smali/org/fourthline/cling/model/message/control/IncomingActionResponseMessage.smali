.class public Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;
.super Lorg/fourthline/cling/model/message/StreamResponseMessage;
.source "IncomingActionResponseMessage.java"

# interfaces
.implements Lorg/fourthline/cling/model/message/control/ActionResponseMessage;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/StreamResponseMessage;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/StreamResponseMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFailedNonRecoverable()Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v1

    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 43
    sget-object v0, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->hasBody()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedRecoverable()Z
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    sget-object v1, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/fourthline/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
