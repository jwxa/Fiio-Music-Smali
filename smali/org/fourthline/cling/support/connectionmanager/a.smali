.class final Lorg/fourthline/cling/support/connectionmanager/a;
.super Lorg/fourthline/cling/support/connectionmanager/callback/PrepareForConnection;
.source "AbstractPeeringConnectionManagerService.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

.field private final synthetic b:I

.field private final synthetic c:Lorg/fourthline/cling/support/model/ProtocolInfo;

.field private final synthetic d:Lorg/fourthline/cling/model/meta/Service;

.field private final synthetic e:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

.field private final synthetic f:[Z


# direct methods
.method constructor <init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;ILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;[Z)V
    .locals 8

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/a;->a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    move/from16 v0, p8

    iput v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->b:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->c:Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->d:Lorg/fourthline/cling/model/meta/Service;

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->e:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->f:[Z

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 152
    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/support/connectionmanager/callback/PrepareForConnection;-><init>(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;)V

    return-void
.end method


# virtual methods
.method public final failure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->peerFailure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/a;->f:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 181
    return-void
.end method

.method public final received(Lorg/fourthline/cling/model/action/ActionInvocation;III)V
    .locals 9

    .prologue
    .line 162
    new-instance v0, Lorg/fourthline/cling/support/model/ConnectionInfo;

    .line 163
    iget v1, p0, Lorg/fourthline/cling/support/connectionmanager/a;->b:I

    .line 166
    iget-object v4, p0, Lorg/fourthline/cling/support/connectionmanager/a;->c:Lorg/fourthline/cling/support/model/ProtocolInfo;

    .line 167
    iget-object v2, p0, Lorg/fourthline/cling/support/connectionmanager/a;->d:Lorg/fourthline/cling/model/meta/Service;

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/Service;->getReference()Lorg/fourthline/cling/model/ServiceReference;

    move-result-object v5

    .line 169
    iget-object v2, p0, Lorg/fourthline/cling/support/connectionmanager/a;->e:Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->getOpposite()Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;

    move-result-object v7

    .line 170
    sget-object v8, Lorg/fourthline/cling/support/model/ConnectionInfo$Status;->OK:Lorg/fourthline/cling/support/model/ConnectionInfo$Status;

    move v2, p3

    move v3, p4

    move v6, p2

    .line 162
    invoke-direct/range {v0 .. v8}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>(IIILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ConnectionInfo$Status;)V

    .line 172
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/a;->a:Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->storeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 173
    return-void
.end method
