.class public Lorg/FiioGetMusicInfo/audio/AudioFile;
.super Ljava/lang/Object;
.source "AudioFile.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

.field protected extension:Ljava/lang/String;

.field protected file:Ljava/io/File;

.field protected tag:Lorg/FiioGetMusicInfo/tag/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "org.FiioGetMusicInfo.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/FiioGetMusicInfo/audio/AudioHeader;Lorg/FiioGetMusicInfo/tag/Tag;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->file:Ljava/io/File;

    .line 172
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    .line 173
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/audio/AudioHeader;Lorg/FiioGetMusicInfo/tag/Tag;)V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->file:Ljava/io/File;

    .line 188
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    .line 189
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    .line 190
    return-void
.end method

.method public static getBaseFilename(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 360
    if-lez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public checkFileExists(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 289
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reading file:path"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":abs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/io/FileNotFoundException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->UNABLE_TO_FIND_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method protected checkFilePermissions(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/AudioFile;->checkFileExists(Ljava/io/File;)V

    .line 313
    if-eqz p2, :cond_0

    .line 315
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-object v0

    .line 319
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    sget-object v0, Lorg/FiioGetMusicInfo/audio/AudioFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to write:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 322
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NO_PERMISSIONS_TO_WRITE_TO_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/ReadOnlyFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public displayStructureAsPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, ""

    return-object v0
.end method

.method public displayStructureAsXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    const-string v0, ""

    return-object v0
.end method

.method public getAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    return-object v0
.end method

.method public getBitRateAsNumber()J
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getBitRateAsNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getBitRate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitrateInt()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getBitsPerSample()I

    move-result v0

    return v0
.end method

.method public getBitsPerSample()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getBitsPerSample()I

    move-result v0

    return v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getChannels()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    .line 120
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 121
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 122
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFieLength()J
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFieldCount()I

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreciseTrackLength()D
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getPreciseTrackLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/AudioHeader;->getSampleRate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTag()Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    return-object v0
.end method

.method public getWzId3(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public returnAudioHeader()Lorg/FiioGetMusicInfo/audio/AudioHeader;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->extension:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->file:Ljava/io/File;

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioFile "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/AudioFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 278
    const-string v1, "  --------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->audioHeader:Lorg/FiioGetMusicInfo/audio/AudioHeader;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n-------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/AudioFile;->tag:Lorg/FiioGetMusicInfo/tag/Tag;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
