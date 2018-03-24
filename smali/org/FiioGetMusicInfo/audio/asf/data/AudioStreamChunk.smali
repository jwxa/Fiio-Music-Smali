.class public final Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;
.super Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;
.source "AudioStreamChunk.java"


# static fields
.field public static final CODEC_DESCRIPTIONS:[[Ljava/lang/String;

.field public static final WMA:J = 0x161L

.field public static final WMA_CBR:J = 0x7a21L

.field public static final WMA_LOSSLESS:J = 0x163L

.field public static final WMA_PRO:J = 0x162L

.field public static final WMA_VBR:J = 0x7a22L


# instance fields
.field private averageBytesPerSec:J

.field private bitsPerSample:I

.field private blockAlignment:J

.field private channelCount:J

.field private codecData:[B

.field private compressionFormat:J

.field private errorConcealment:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

.field private samplingRate:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    .line 35
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "161"

    aput-object v2, v1, v4

    const-string v2, " (Windows Media Audio (ver 7,8,9))"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 36
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "162"

    aput-object v2, v1, v4

    const-string v2, " (Windows Media Audio 9 series (Professional))"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 37
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "163"

    aput-object v2, v1, v4

    const-string v2, "(Windows Media Audio 9 series (Lossless))"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 38
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7A21"

    aput-object v3, v2, v4

    const-string v3, " (GSM-AMR (CBR))"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "7A22"

    aput-object v3, v2, v4

    const-string v3, " (GSM-AMR (VBR))"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIOSTREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->codecData:[B

    .line 111
    return-void
.end method


# virtual methods
.method public final getAverageBytesPerSec()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    return-wide v0
.end method

.method public final getBitsPerSample()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->bitsPerSample:I

    return v0
.end method

.method public final getBlockAlignment()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->blockAlignment:J

    return-wide v0
.end method

.method public final getChannelCount()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->channelCount:J

    return-wide v0
.end method

.method public final getCodecData()[B
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->codecData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getCodecDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getCompressionFormat()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v0, " (Unknown)"

    .line 159
    sget-object v4, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->CODEC_DESCRIPTIONS:[[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_0

    .line 165
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 166
    const-string v1, "0x"

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    aget-object v6, v4, v1

    .line 160
    aget-object v7, v6, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    const/4 v0, 0x1

    aget-object v0, v6, v0

    goto :goto_1

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "0x0"

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public final getCompressionFormat()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->compressionFormat:J

    return-wide v0
.end method

.method public final getErrorConcealment()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->errorConcealment:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    return-object v0
.end method

.method public final getKbps()I
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getAverageBytesPerSec()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public final getSamplingRate()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->samplingRate:J

    return-wide v0
.end method

.method public final isErrorConcealed()Z
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getErrorConcealment()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    .line 214
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_AUDIO_ERROR_CONCEALEMENT_INTERLEAVED:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 213
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/StreamChunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Audio info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 225
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |  : Bitrate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getKbps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |  : Channels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v2

    .line 228
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |  : Bits per Sample: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getBitsPerSample()I

    move-result v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |  : Formatcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAverageBytesPerSec(J)V
    .locals 1

    .prologue
    .line 243
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->averageBytesPerSec:J

    .line 244
    return-void
.end method

.method public final setBitsPerSample(I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->bitsPerSample:I

    .line 253
    return-void
.end method

.method public final setBlockAlignment(J)V
    .locals 1

    .prologue
    .line 261
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->blockAlignment:J

    .line 262
    return-void
.end method

.method public final setChannelCount(J)V
    .locals 1

    .prologue
    .line 269
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->channelCount:J

    .line 270
    return-void
.end method

.method public final setCodecData([B)V
    .locals 1

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 281
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->codecData:[B

    .line 282
    return-void
.end method

.method public final setCompressionFormat(J)V
    .locals 1

    .prologue
    .line 289
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->compressionFormat:J

    .line 290
    return-void
.end method

.method public final setErrorConcealment(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->errorConcealment:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 300
    return-void
.end method

.method public final setSamplingRate(J)V
    .locals 1

    .prologue
    .line 307
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->samplingRate:J

    .line 308
    return-void
.end method
