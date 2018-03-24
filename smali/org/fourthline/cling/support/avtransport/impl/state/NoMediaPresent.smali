.class public abstract Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;
.super Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;
.source "NoMediaPresent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/fourthline/cling/support/model/AVTransport;",
        ">",
        "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/fourthline/cling/support/avtransport/impl/state/Stopped;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/AVTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;-><init>(Lorg/fourthline/cling/support/model/AVTransport;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCurrentTransportActions()[Lorg/fourthline/cling/support/model/TransportAction;
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/fourthline/cling/support/model/TransportAction;

    const/4 v1, 0x0

    .line 58
    sget-object v2, Lorg/fourthline/cling/support/model/TransportAction;->Stop:Lorg/fourthline/cling/support/model/TransportAction;

    aput-object v2, v0, v1

    .line 57
    return-object v0
.end method

.method public onEntry()V
    .locals 6

    .prologue
    .line 39
    sget-object v0, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->log:Ljava/util/logging/Logger;

    const-string v1, "Setting transport state to NO_MEDIA_PRESENT"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    .line 41
    new-instance v1, Lorg/fourthline/cling/support/model/TransportInfo;

    .line 42
    sget-object v2, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/TransportInfo;->getCurrentTransportStatus()Lorg/fourthline/cling/support/model/TransportStatus;

    move-result-object v3

    .line 44
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/AVTransport;->getTransportInfo()Lorg/fourthline/cling/support/model/TransportInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/TransportInfo;->getCurrentSpeed()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/support/model/TransportInfo;-><init>(Lorg/fourthline/cling/support/model/TransportState;Lorg/fourthline/cling/support/model/TransportStatus;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, v1}, Lorg/fourthline/cling/support/model/AVTransport;->setTransportInfo(Lorg/fourthline/cling/support/model/TransportInfo;)V

    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/AVTransport;->getLastChange()Lorg/fourthline/cling/support/lastchange/LastChange;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->getTransport()Lorg/fourthline/cling/support/model/AVTransport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/AVTransport;->getInstanceId()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/fourthline/cling/support/lastchange/EventedValue;

    const/4 v3, 0x0

    .line 49
    new-instance v4, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;

    sget-object v5, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    invoke-direct {v4, v5}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;-><init>(Lorg/fourthline/cling/support/model/TransportState;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 50
    new-instance v4, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;

    invoke-virtual {p0}, Lorg/fourthline/cling/support/avtransport/impl/state/NoMediaPresent;->getCurrentTransportActions()[Lorg/fourthline/cling/support/model/TransportAction;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/fourthline/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;-><init>([Lorg/fourthline/cling/support/model/TransportAction;)V

    aput-object v4, v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/fourthline/cling/support/lastchange/LastChange;->setEventedValue(Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;[Lorg/fourthline/cling/support/lastchange/EventedValue;)V

    .line 52
    return-void
.end method

.method public abstract setTransportURI(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end method
