.class public Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;
.super Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;
.source "VideoStreamChunk.java"


# instance fields
.field private codecId:[B

.field private pictureHeight:J

.field private pictureWidth:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->codecId:[B

    .line 53
    return-void
.end method


# virtual methods
.method public getCodecId()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->codecId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCodecIdAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->codecId:[B

    if-nez v0, :cond_0

    .line 71
    const-string v0, "Unknown"

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->getCodecId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getPictureHeight()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    return-wide v0
.end method

.method public getPictureWidth()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|->VideoStream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Video info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      |->Width  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->getPictureWidth()J

    move-result-wide v2

    .line 103
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      |->Heigth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->getPictureHeight()J

    move-result-wide v2

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      |->Codec  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->getCodecIdAsString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCodecId([B)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->codecId:[B

    .line 118
    return-void
.end method

.method public setPictureHeight(J)V
    .locals 1

    .prologue
    .line 124
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->pictureHeight:J

    .line 125
    return-void
.end method

.method public setPictureWidth(J)V
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/VideoStreamChunk;->pictureWidth:J

    .line 132
    return-void
.end method
