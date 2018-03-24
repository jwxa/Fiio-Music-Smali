.class public abstract Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "StreamChunk.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private contentEncrypted:Z

.field private streamNumber:I

.field private streamSpecificDataSize:J

.field private timeOffset:J

.field private final type:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field private typeSpecificDataSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 82
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_VIDEOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->type:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 85
    return-void
.end method


# virtual methods
.method public getStreamNumber()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->streamNumber:I

    return v0
.end method

.method public getStreamSpecificDataSize()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->streamSpecificDataSize:J

    return-wide v0
.end method

.method public getStreamType()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->type:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public getTimeOffset()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->timeOffset:J

    return-wide v0
.end method

.method public getTypeSpecificDataSize()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->typeSpecificDataSize:J

    return-wide v0
.end method

.method public isContentEncrypted()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->contentEncrypted:Z

    return v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Stream number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->getStreamNumber()I

    move-result v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Type specific data size  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->getTypeSpecificDataSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Stream specific data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->getStreamSpecificDataSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Time Offset              : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->getTimeOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Content Encryption       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->isContentEncrypted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentEncrypted(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->contentEncrypted:Z

    .line 159
    return-void
.end method

.method public setStreamNumber(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->streamNumber:I

    .line 167
    return-void
.end method

.method public setStreamSpecificDataSize(J)V
    .locals 1

    .prologue
    .line 174
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->streamSpecificDataSize:J

    .line 175
    return-void
.end method

.method public setTimeOffset(J)V
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->timeOffset:J

    .line 183
    return-void
.end method

.method public setTypeSpecificDataSize(J)V
    .locals 1

    .prologue
    .line 190
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->typeSpecificDataSize:J

    .line 191
    return-void
.end method
