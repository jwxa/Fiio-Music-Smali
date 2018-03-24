.class public Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "StreamBitratePropertiesChunk.java"


# instance fields
.field private final bitRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final streamNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM_BITRATE_PROPERTIES:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public addBitrateRecord(IJ)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public getAvgBitrate(I)J
    .locals 2

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 85
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    const-wide/16 v0, -0x1

    .line 90
    :goto_0
    return-wide v0

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  |-> Stream no. \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->streamNumbers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    const-string v3, "\" has an average bitrate of \""

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamBitratePropertiesChunk;->bitRates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 106
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
