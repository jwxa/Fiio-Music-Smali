.class public Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "FileHeader.java"


# instance fields
.field private final duration:Ljava/math/BigInteger;

.field private final fileCreationTime:Ljava/util/Date;

.field private final fileSize:Ljava/math/BigInteger;

.field private final flags:J

.field private final maxPackageSize:J

.field private final minPackageSize:J

.field private final packageCount:Ljava/math/BigInteger;

.field private final timeEndPos:Ljava/math/BigInteger;

.field private final timeStartPos:Ljava/math/BigInteger;

.field private final uncompressedFrameSize:J


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;JJJJ)V
    .locals 4

    .prologue
    .line 122
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_FILE:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 123
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    .line 124
    iput-object p4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    .line 125
    iput-object p5, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    .line 126
    iput-object p6, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    .line 127
    iput-object p7, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    .line 128
    iput-wide p8, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->flags:J

    .line 129
    iput-wide p10, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->minPackageSize:J

    .line 130
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->maxPackageSize:J

    .line 131
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->uncompressedFrameSize:J

    .line 132
    invoke-static {p3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    .line 133
    return-void
.end method


# virtual methods
.method public getDuration()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDurationInSeconds()I
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->duration:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10000000"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getFileCreationTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->fileCreationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getFileSize()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->fileSize:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->flags:J

    return-wide v0
.end method

.method public getMaxPackageSize()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->maxPackageSize:J

    return-wide v0
.end method

.method public getMinPackageSize()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->minPackageSize:J

    return-wide v0
.end method

.method public getPackageCount()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->packageCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreciseDuration()F
    .locals 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getTimeEndPos()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->timeEndPos:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTimeStartPos()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->timeStartPos:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getUncompressedFrameSize()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->uncompressedFrameSize:J

    return-wide v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Filesize      = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    const-string v2, " Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Media duration= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getDuration()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "10000"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |-> Created at    = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getFileCreationTime()Ljava/util/Date;

    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
