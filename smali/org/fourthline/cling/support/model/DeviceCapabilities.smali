.class public Lorg/fourthline/cling/support/model/DeviceCapabilities;
.super Ljava/lang/Object;
.source "DeviceCapabilities.java"


# instance fields
.field private playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

.field private recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

.field private recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;


# direct methods
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
    .line 33
    .line 34
    const-string v0, "PlayMedia"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v1

    .line 35
    const-string v0, "RecMedia"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v2

    .line 36
    const-string v0, "RecQualityModes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/RecordQualityMode;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/fourthline/cling/support/model/DeviceCapabilities;-><init>([Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    .line 38
    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v3, [Lorg/fourthline/cling/support/model/StorageMedium;

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    new-array v0, v3, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 41
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 42
    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/RecordQualityMode;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v3, [Lorg/fourthline/cling/support/model/StorageMedium;

    sget-object v1, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    new-array v0, v3, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 45
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 46
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 47
    iput-object p3, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 48
    return-void
.end method


# virtual methods
.method public getPlayMedia()[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getPlayMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecMedia()[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getRecMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecQualityModes()[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object v0
.end method

.method public getRecQualityModesString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
