.class final Lorg/fourthline/cling/support/connectionmanager/b;
.super Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;
.source "AbstractPeeringConnectionManagerService.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

.field private final synthetic b:Lorg/fourthline/cling/support/model/ConnectionInfo;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;ILorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/b;->a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    iput-object p5, p0, Lorg/fourthline/cling/support/connectionmanager/b;->b:Lorg/fourthline/cling/support/model/ConnectionInfo;

    .line 205
    invoke-direct {p0, p2, p3, p4}, Lorg/fourthline/cling/support/connectionmanager/callback/ConnectionComplete;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;I)V

    return-void
.end method


# virtual methods
.method public final failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/b;->a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->peerFailure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final success(Lorg/fourthline/cling/model/action/ActionInvocation;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/b;->a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/b;->b:Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->removeConnection(I)V

    .line 214
    return-void
.end method
