.class public abstract Lorg/fourthline/cling/controlpoint/ActionCallback;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

.field protected controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 100
    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    .line 95
    iput-object p2, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 96
    return-void
.end method


# virtual methods
.method protected createDefaultFailureMessage(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    const-string v0, "Error: "

    .line 161
    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " (HTTP response was: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_1
    return-object v0
.end method

.method protected failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;->createDefaultFailureMessage(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public abstract failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    return-object v0
.end method

.method public declared-synchronized getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Action;->getService()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 119
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/LocalService;

    if-eqz v1, :cond_2

    .line 120
    check-cast v0, Lorg/fourthline/cling/model/meta/LocalService;

    .line 123
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionInvocation;->getAction()Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/model/meta/LocalService;->getExecutor(Lorg/fourthline/cling/model/meta/Action;)Lorg/fourthline/cling/model/action/ActionExecutor;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v0, v1}, Lorg/fourthline/cling/model/action/ActionExecutor;->execute(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    .line 125
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionInvocation;->getFailure()Lorg/fourthline/cling/model/action/ActionException;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0, v3}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto :goto_0

    .line 132
    :cond_2
    instance-of v1, v0, Lorg/fourthline/cling/model/meta/RemoteService;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    if-nez v1, :cond_3

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be executed through ControlPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    check-cast v0, Lorg/fourthline/cling/model/meta/RemoteService;

    .line 141
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/fourthline/cling/protocol/ProtocolFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-interface {v1, v2, v0}, Lorg/fourthline/cling/protocol/ProtocolFactory;->createSendingAction(Lorg/fourthline/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/fourthline/cling/protocol/sync/SendingAction;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->run()V

    .line 147
    invoke-virtual {v0}, Lorg/fourthline/cling/protocol/sync/SendingAction;->getOutputMessage()Lorg/fourthline/cling/model/message/StreamResponseMessage;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;

    .line 149
    if-nez v0, :cond_4

    .line 150
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0, v3}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/fourthline/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/message/UpnpResponse;

    invoke-virtual {p0, v1, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/controlpoint/ActionCallback;->success(Lorg/fourthline/cling/model/action/ActionInvocation;)V

    goto :goto_0
.end method

.method public declared-synchronized setControlPoint(Lorg/fourthline/cling/controlpoint/ControlPoint;)Lorg/fourthline/cling/controlpoint/ActionCallback;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->controlPoint:Lorg/fourthline/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-object p0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(ActionCallback) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/fourthline/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/fourthline/cling/model/action/ActionInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
