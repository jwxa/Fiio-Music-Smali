.class public abstract Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "GetProtocolInfo.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "GetProtocolInfo"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    .line 40
    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;)V
.end method

.method public success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 46
    :try_start_0
    const-string v0, "Sink"

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v2

    .line 47
    const-string v0, "Source"

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/fourthline/cling/model/action/ActionArgumentValue;

    move-result-object v3

    .line 50
    if-eqz v2, :cond_0

    new-instance v0, Lorg/fourthline/cling/support/model/ProtocolInfos;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 51
    :goto_0
    if-eqz v3, :cond_1

    new-instance v0, Lorg/fourthline/cling/support/model/ProtocolInfos;

    invoke-virtual {v3}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>(Ljava/lang/String;)V

    .line 49
    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;->received(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_2
    return-void

    :cond_0
    move-object v2, v1

    .line 50
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 52
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v2, Lorg/fourthline/cling/model/action/ActionException;

    sget-object v3, Lorg/fourthline/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/fourthline/cling/model/types/ErrorCode;

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t parse ProtocolInfo response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lorg/fourthline/cling/model/action/ActionException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setFailure(Lorg/fourthline/cling/model/action/ActionException;)V

    .line 57
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/support/connectionmanager/callback/GetProtocolInfo;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_2
.end method
