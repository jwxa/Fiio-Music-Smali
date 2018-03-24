.class public Lorg/fourthline/cling/support/model/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private currentURI:Ljava/lang/String;

.field private currentURIMetaData:Ljava/lang/String;

.field private mediaDuration:Ljava/lang/String;

.field private nextURI:Ljava/lang/String;

.field private nextURIMetaData:Ljava/lang/String;

.field private numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field private playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

.field private recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

.field private writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 30
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 31
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 34
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 30
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 31
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 34
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 58
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 30
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 31
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 34
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 89
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 94
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 30
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 31
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 34
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 103
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 108
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 109
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 110
    iput-object p8, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 111
    iput-object p9, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 4

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 30
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 31
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 34
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 65
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 68
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 30
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 31
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 33
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 34
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NONE:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 36
    sget-object v0, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 76
    iput-object p1, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 79
    iput-object p4, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 81
    iput-object p6, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    .line 82
    iput-object p7, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 10
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
    .line 43
    .line 44
    const-string v0, "CurrentURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    const-string v0, "CurrentURIMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    const-string v0, "NextURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    const-string v0, "NextURIMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 49
    const-string v0, "NrTracks"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 50
    const-string v0, "MediaDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 51
    const-string v0, "PlayMedium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v7

    .line 52
    const-string v0, "RecordMedium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v8

    .line 53
    const-string v0, "WriteStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;->valueOrUnknownOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/support/model/MediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/StorageMedium;Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getCurrentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentURIMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getNextURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNextURIMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfTracks()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->numberOfTracks:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getPlayMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->playMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getRecordMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->recordMedium:Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getWriteStatus()Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/fourthline/cling/support/model/MediaInfo;->writeStatus:Lorg/fourthline/cling/support/model/RecordMediumWriteStatus;

    return-object v0
.end method
