.class public Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;
.super Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;
.source "AVTransportService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/fourthline/cling/support/model/AVTransport;",
        ">",
        "Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field final initialState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end field

.field final stateMachineDefinition:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field final transportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/AVTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    const-class v0, Lorg/fourthline/cling/support/model/AVTransport;

    invoke-direct {p0, p1, p2, v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/fourthline/cling/support/avtransport/AbstractAVTransportService;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 98
    iput-object p2, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 99
    iput-object p3, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    .line 100
    return-void
.end method


# virtual methods
.method protected createStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 307
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 308
    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 309
    new-array v2, v4, [Ljava/lang/Class;

    iget-object v3, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 310
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->createTransport(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;)Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v4

    aput-object v4, v3, v5

    .line 306
    invoke-static {v0, v1, v2, v3}, Lorg/seamless/statemachine/StateMachineBuilder;->build(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/seamless/statemachine/StateMachine;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    return-object v0
.end method

.method protected createTransport(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;)Lorg/fourthline/cling/support/model/AVTransport;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Lorg/fourthline/cling/support/model/AVTransport;

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->NETWORK:Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-direct {v0, p1, p2, v1}, Lorg/fourthline/cling/support/model/AVTransport;-><init>(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/support/lastchange/LastChange;Lorg/fourthline/cling/support/model/StorageMedium;)V

    return-object v0
.end method

.method protected findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    return-object v0
.end method

.method protected findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 7

    .prologue
    .line 289
    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    monitor-enter v1

    .line 290
    :try_start_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 291
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 292
    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    if-eqz p2, :cond_1

    .line 293
    sget-object v0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    const-string v4, "Creating default transport instance with ID \'0\'"

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->createStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    .line 295
    iget-object v4, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    sget-object v4, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found transport control with ID \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 300
    monitor-exit v1

    return-object v0

    .line 296
    :cond_1
    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-direct {v0, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentInstanceIds()[Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 8

    .prologue
    .line 273
    iget-object v2, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    monitor-enter v2

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 275
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    monitor-exit v2

    return-object v3

    .line 276
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 277
    new-instance v5, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    aput-object v5, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected getCurrentTransportActions(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    .line 265
    :try_start_0
    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getCurrentTransportActions()[Lorg/fourthline/cling/support/model/TransportAction;
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/TransportAction;

    goto :goto_0
.end method

.method public getDeviceCapabilities(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/DeviceCapabilities;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getDeviceCapabilities()Lorg/fourthline/cling/support/model/DeviceCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/MediaInfo;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getMediaInfo()Lorg/fourthline/cling/support/model/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/PositionInfo;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getPositionInfo()Lorg/fourthline/cling/support/model/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportInfo(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportInfo;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportSettings(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/model/TransportSettings;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object v0

    return-object v0
.end method

.method public next(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->next()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public pause(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 3

    .prologue
    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->pause()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    :catch_0
    move-exception v0

    .line 216
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public play(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-void

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public previous(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 3

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->previous()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-void

    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public record(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 3

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->record()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-void

    :catch_0
    move-exception v0

    .line 224
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public seek(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 231
    :try_start_0
    invoke-static {p2}, Lorg/fourthline/cling/support/model/SeekMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/SeekMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->seek(Lorg/fourthline/cling/support/model/SeekMode;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    return-void

    .line 233
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 234
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported seek mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public setAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    .line 117
    invoke-interface {v1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->setTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    return-void

    .line 110
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 111
    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v2, "CurrentURI can not be null or malformed"

    .line 110
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public setNextAVTransportURI(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    .line 138
    invoke-interface {v1, v0, p3}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->setNextTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    return-void

    .line 131
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 132
    sget-object v1, Lorg/fourthline/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/fourthline/cling/model/types/ErrorCode;

    const-string v2, "NextURI can not be null or malformed"

    .line 131
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public setPlayMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    .line 148
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/model/TransportSettings;

    .line 149
    invoke-static {p2}, Lorg/fourthline/cling/support/model/PlayMode;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v2

    .line 150
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/TransportSettings;->getRecQualityMode()Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v3

    .line 148
    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 147
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-void

    .line 154
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 155
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported play mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public setRecordQualityMode(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    .line 164
    :try_start_0
    new-instance v1, Lorg/fourthline/cling/support/model/TransportSettings;

    .line 165
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportSettings()Lorg/fourthline/cling/support/model/TransportSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/TransportSettings;->getPlayMode()Lorg/fourthline/cling/support/model/PlayMode;

    move-result-object v2

    .line 166
    invoke-static {p2}, Lorg/fourthline/cling/support/model/RecordQualityMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v3

    .line 164
    invoke-direct {v1, v2, v3}, Lorg/fourthline/cling/support/model/TransportSettings;-><init>(Lorg/fourthline/cling/support/model/PlayMode;Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 163
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportSettings(Lorg/fourthline/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 170
    :catch_0
    move-exception v0

    new-instance v0, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    .line 171
    sget-object v1, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported record quality mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method public stop(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 3

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/support/avtransport/impl/AVTransportStateMachine;->stop()V
    :try_end_0
    .catch Lorg/seamless/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    return-void

    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Lorg/fourthline/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/seamless/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/support/avtransport/AVTransportException;-><init>(Lorg/fourthline/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method
