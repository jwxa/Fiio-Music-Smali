.class public abstract Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;
.super Lorg/fourthline/cling/controlpoint/ActionCallback;
.source "ConnectionComplete.java"


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/fourthline/cling/model/action/ActionInvocation;

    const-string v1, "ConnectionComplete"

    invoke-virtual {p1, v1}, Lorg/fourthline/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/action/ActionInvocation;-><init>(Lorg/fourthline/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/fourthline/cling/controlpoint/ActionCallback;-><init>(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/controlpoint/ControlPoint;)V

    .line 34
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;->getActionInvocation()Lorg/fourthline/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "ConnectionID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method
