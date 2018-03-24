.class public Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field protected final chunkLength:Ljava/math/BigInteger;

.field protected final guid:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field protected position:J


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GUID must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    const-string v1, "Position of header can\'t be negative."

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    if-eqz p4, :cond_2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    const-string v1, "chunkLen must not be null nor negative."

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->guid:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 94
    iput-wide p2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->position:J

    .line 95
    iput-object p4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GUID must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string v1, "chunkLen must not be null nor negative."

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->guid:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 67
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    .line 68
    return-void
.end method


# virtual methods
.method public getChunckEnd()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->position:J

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunkEnd()J
    .locals 4

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->position:J

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunkLength()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->chunkLength:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->guid:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->position:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-> GUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->guid:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getGuidDescription(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  | : Starts at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getPosition()J

    move-result-wide v2

    .line 156
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  | : Last byte at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(J)V
    .locals 1

    .prologue
    .line 170
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->position:J

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
