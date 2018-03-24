.class public abstract Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;
.super Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;
.source "AbstractPeeringConnectionManagerService.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected varargs constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 62
    return-void
.end method

.method protected varargs constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 56
    return-void
.end method

.method protected varargs constructor <init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract closeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V
.end method

.method public declared-synchronized closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;I)V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionInfo(I)Lorg/fourthline/cling/support/model/ConnectionInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeConnectionWithPeer(Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 6

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing connection ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with peer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/b;

    .line 208
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getPeerConnectionID()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    .line 205
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/connectionmanager/b;-><init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;ILorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 222
    invoke-virtual {v0}, Lorg/fourthline/cling/support/connectionmanager/b;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionComplete(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "ConnectionID"
            stateVariable = "A_ARG_TYPE_ConnectionID"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionInfo(I)Lorg/fourthline/cling/support/model/ConnectionInfo;

    move-result-object v0

    .line 128
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closing connection ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 130
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->removeConnection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createConnection(IILorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ProtocolInfo;)Lorg/fourthline/cling/support/model/ConnectionInfo;
.end method

.method public declared-synchronized createConnectionWithPeer(Lorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;)I
    .locals 14

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getNewConnectionId()I

    move-result v7

    .line 150
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating new connection ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with peer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x1

    new-array v13, v1, [Z

    .line 152
    new-instance v1, Lorg/fourthline/cling/support/connectionmanager/a;

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v6, p1

    move-object/from16 v8, p5

    move v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v13}, Lorg/fourthline/cling/support/connectionmanager/a;-><init>(Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/controlpoint/ControlPoint;Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILorg/fourthline/cling/support/model/ConnectionInfo$Direction;ILorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;[Z)V

    .line 182
    invoke-virtual {v1}, Lorg/fourthline/cling/support/connectionmanager/a;->run()V

    .line 184
    const/4 v1, 0x0

    aget-boolean v1, v13, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v7, -0x1

    :cond_0
    monitor-exit p0

    return v7

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized getNewConnectionId()I
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, -0x1

    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 69
    add-int/lit8 v0, v1, 0x1

    monitor-exit p0

    return v0

    .line 66
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v1, v0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract peerFailure(Lorg/fourthline/cling/model/action/ActionInvocation;Lorg/fourthline/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public declared-synchronized prepareForConnection(Lorg/fourthline/cling/support/model/ProtocolInfo;Lorg/fourthline/cling/model/ServiceReference;ILjava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo;
    .locals 6
    .param p1    # Lorg/fourthline/cling/support/model/ProtocolInfo;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "RemoteProtocolInfo"
            stateVariable = "A_ARG_TYPE_ProtocolInfo"
        .end annotation
    .end param
    .param p2    # Lorg/fourthline/cling/model/ServiceReference;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "PeerConnectionManager"
            stateVariable = "A_ARG_TYPE_ConnectionManager"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "PeerConnectionID"
            stateVariable = "A_ARG_TYPE_ConnectionID"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "Direction"
            stateVariable = "A_ARG_TYPE_Direction"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getConnectionID"
                name = "ConnectionID"
                stateVariable = "A_ARG_TYPE_ConnectionID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAvTransportID"
                name = "AVTransportID"
                stateVariable = "A_ARG_TYPE_AVTransportID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRcsID"
                name = "RcsID"
                stateVariable = "A_ARG_TYPE_RcsID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getNewConnectionId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 104
    :try_start_1
    invoke-static {p4}, Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 109
    :try_start_2
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing for connection with local new ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and peer connection ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v0, p0

    move v2, p3

    move-object v3, p2

    move-object v5, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->createConnection(IILorg/fourthline/cling/model/ServiceReference;Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;Lorg/fourthline/cling/support/model/ProtocolInfo;)Lorg/fourthline/cling/support/model/ConnectionInfo;

    move-result-object v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->storeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    monitor-exit p0

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;

    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/fourthline/cling/model/types/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported direction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized removeConnection(I)V
    .locals 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection removed, firing event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v2

    const-string v3, "CurrentConnectionIDs"

    invoke-virtual {v2, v3, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized storeConnection(Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection stored, firing event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;

    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lorg/fourthline/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v2

    const-string v3, "CurrentConnectionIDs"

    invoke-virtual {v2, v3, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
