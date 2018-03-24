.class public Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;
.super Ljava/lang/Object;
.source "ConnectionManagerService.java"


# annotations
.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceId;
        value = "ConnectionManager"
    .end subannotation
    serviceType = .subannotation Lorg/fourthline/cling/binding/annotations/UpnpServiceType;
        value = "ConnectionManager"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/fourthline/cling/support/model/ProtocolInfo;,
        Lorg/fourthline/cling/support/model/ProtocolInfos;,
        Lorg/fourthline/cling/model/ServiceReference;
    }
.end annotation

.annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "SourceProtocolInfo"
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "SinkProtocolInfo"
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentConnectionIDs"
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/ConnectionInfo$Status;
            name = "A_ARG_TYPE_ConnectionStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ConnectionManager"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/fourthline/cling/support/model/ConnectionInfo$Direction;
            name = "A_ARG_TYPE_Direction"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ProtocolInfo"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_ConnectionID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_AVTransportID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_RcsID"
            sendEvents = false
        .end subannotation
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final activeConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/fourthline/cling/support/model/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final sinkProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;

.field protected final sourceProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/fourthline/cling/support/model/ConnectionInfo;

    const/4 v1, 0x0

    new-instance v2, Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-direct {v2}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 5

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance p1, Ljava/beans/PropertyChangeSupport;

    invoke-direct {p1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 97
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 101
    iput-object p2, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sourceProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;

    .line 102
    iput-object p3, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sinkProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;

    .line 104
    array-length v1, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 107
    return-void

    .line 104
    :cond_1
    aget-object v2, p4, v0

    .line 105
    iget-object v3, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;)V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/fourthline/cling/support/model/ConnectionInfo;

    const/4 v1, 0x0

    new-instance v2, Lorg/fourthline/cling/support/model/ConnectionInfo;

    invoke-direct {v2}, Lorg/fourthline/cling/support/model/ConnectionInfo;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 84
    return-void
.end method

.method public varargs constructor <init>(Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 92
    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/ConnectionInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    const/4 v0, 0x0

    new-instance v1, Lorg/fourthline/cling/support/model/ProtocolInfos;

    new-array v2, v3, [Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v1, v2}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>([Lorg/fourthline/cling/support/model/ProtocolInfo;)V

    new-instance v2, Lorg/fourthline/cling/support/model/ProtocolInfos;

    new-array v3, v3, [Lorg/fourthline/cling/support/model/ProtocolInfo;

    invoke-direct {v2, v3}, Lorg/fourthline/cling/support/model/ProtocolInfos;-><init>([Lorg/fourthline/cling/support/model/ProtocolInfo;)V

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/fourthline/cling/support/model/ProtocolInfos;Lorg/fourthline/cling/support/model/ProtocolInfos;[Lorg/fourthline/cling/support/model/ConnectionInfo;)V

    .line 88
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentConnectionIDs()Lorg/fourthline/cling/model/types/csv/CSV;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/fourthline/cling/model/types/csv/CSV",
            "<",
            "Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                name = "ConnectionIDs"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/fourthline/cling/model/types/csv/CSVUnsignedIntegerFourBytes;

    invoke-direct {v1}, Lorg/fourthline/cling/model/types/csv/CSVUnsignedIntegerFourBytes;-><init>()V

    .line 140
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returning current connection IDs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/csv/CSV;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-object v1

    .line 140
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    new-instance v3, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {v1, v3}, Lorg/fourthline/cling/model/types/csv/CSV;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentConnectionInfo(I)Lorg/fourthline/cling/support/model/ConnectionInfo;
    .locals 4
    .param p1    # I
        .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpInputArgument;
            name = "ConnectionID"
        .end annotation
    .end param
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRcsID"
                name = "RcsID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAvTransportID"
                name = "AVTransportID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getProtocolInfo"
                name = "ProtocolInfo"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPeerConnectionManager"
                name = "PeerConnectionManager"
                stateVariable = "A_ARG_TYPE_ConnectionManager"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPeerConnectionID"
                name = "PeerConnectionID"
                stateVariable = "A_ARG_TYPE_ConnectionID"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getDirection"
                name = "Direction"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getConnectionStatus"
                name = "Status"
                stateVariable = "A_ARG_TYPE_ConnectionStatus"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting connection information of connection ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/ConnectionInfo;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;

    .line 128
    sget-object v1, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non-active connection ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerException;-><init>(Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public declared-synchronized getProtocolInfo()V
    .locals 0
    .annotation runtime Lorg/fourthline/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getSourceProtocolInfo"
                name = "Source"
                stateVariable = "SourceProtocolInfo"
            .end subannotation,
            .subannotation Lorg/fourthline/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getSinkProtocolInfo"
                name = "Sink"
                stateVariable = "SinkProtocolInfo"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getSinkProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfos;
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sinkProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSourceProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfos;
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/connectionmanager/ConnectionManagerService;->sourceProtocolInfo:Lorg/fourthline/cling/support/model/ProtocolInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
