.class public Lorg/fourthline/cling/support/model/TransportInfo;
.super Ljava/lang/Object;
.source "TransportInfo.java"


# instance fields
.field private currentSpeed:Ljava/lang/String;

.field private currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

.field private currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .line 36
    const-string v0, "CurrentTransportState"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/TransportState;->valueOrCustomOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportState;

    move-result-object v1

    .line 37
    const-string v0, "CurrentTransportStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/TransportStatus;->valueOrCustomOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/TransportStatus;

    move-result-object v2

    .line 38
    const-string v0, "CurrentSpeed"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lorg/fourthline/cling/support/model/TransportInfo;-><init>(Lorg/fourthline/cling/support/model/TransportState;Lorg/fourthline/cling/support/model/TransportStatus;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/TransportState;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/TransportState;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 48
    iput-object p2, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/TransportState;Lorg/fourthline/cling/support/model/TransportStatus;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 53
    iput-object p2, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/TransportState;Lorg/fourthline/cling/support/model/TransportStatus;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lorg/fourthline/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/fourthline/cling/support/model/TransportState;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 28
    sget-object v0, Lorg/fourthline/cling/support/model/TransportStatus;->OK:Lorg/fourthline/cling/support/model/TransportStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 29
    const-string v0, "1"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    .line 58
    iput-object p2, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    .line 59
    iput-object p3, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getCurrentSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTransportState()Lorg/fourthline/cling/support/model/TransportState;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportState:Lorg/fourthline/cling/support/model/TransportState;

    return-object v0
.end method

.method public getCurrentTransportStatus()Lorg/fourthline/cling/support/model/TransportStatus;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/support/model/TransportInfo;->currentTransportStatus:Lorg/fourthline/cling/support/model/TransportStatus;

    return-object v0
.end method
