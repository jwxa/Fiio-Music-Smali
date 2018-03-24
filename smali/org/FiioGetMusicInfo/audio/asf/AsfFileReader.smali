.class public Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "AsfFileReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HEADER_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 50
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->$assertionsDisabled:Z

    .line 56
    const-string v0, "org.FiioGetMusicInfo.audio.asf"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 55
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-class v2, Lorg/FiioGetMusicInfo/audio/asf/io/ContentDescriptionReader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-class v2, Lorg/FiioGetMusicInfo/audio/asf/io/ContentBrandingReader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-class v2, Lorg/FiioGetMusicInfo/audio/asf/io/MetadataReader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-class v2, Lorg/FiioGetMusicInfo/audio/asf/io/LanguageListReader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;

    invoke-direct {v2, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 75
    const-class v3, Lorg/FiioGetMusicInfo/audio/asf/io/FileHeaderReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-class v3, Lorg/FiioGetMusicInfo/audio/asf/io/StreamChunkReader;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v3, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-direct {v3, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;-><init>(Ljava/util/List;Z)V

    .line 78
    sput-object v3, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->HEADER_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-virtual {v3, v2}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->setExtendedHeaderReader(Lorg/FiioGetMusicInfo/audio/asf/io/AsfExtHeaderReader;)V

    .line 79
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private determineVariableBitrate(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    sget-boolean v1, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->findExtendedContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 97
    const-string v2, "IsVBR"

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    :cond_1
    return v0
.end method

.method private getAudioHeader(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 6

    .prologue
    .line 118
    new-instance v1, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 120
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFileHeader()Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    .line 122
    const-string v1, "Invalid ASF/WMA file. File header object not available."

    .line 121
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    .line 126
    const-string v1, "Invalid ASF/WMA file. No audio stream contained."

    .line 125
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getKbps()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 129
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getChannelCount()J

    move-result-wide v2

    long-to-int v0, v2

    .line 129
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ASF (audio): "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getCodecDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getCompressionFormat()J

    move-result-wide v2

    const-wide/16 v4, 0x163

    .line 134
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setLossless(Z)V

    .line 136
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFileHeader()Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getPreciseDuration()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 137
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getSamplingRate()J

    move-result-wide v2

    long-to-int v0, v2

    .line 137
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 139
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->determineVariableBitrate(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 140
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getAudioStreamChunk()Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AudioStreamChunk;->getBitsPerSample()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 141
    return-object v1

    .line 134
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTag(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;
    .locals 3

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 187
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p2, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->createTagOf(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;

    move-result-object v0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 4

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    :try_start_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->readInfoHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    .line 160
    const-string v1, "Some values must have been incorrect for interpretation as asf with wma content."

    .line 159
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 166
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 163
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->getAudioHeader(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 174
    return-object v0

    .line 167
    :cond_1
    instance-of v1, v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    if-eqz v1, :cond_2

    .line 168
    check-cast v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    throw v0

    .line 170
    :cond_2
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read. Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-direct {v1, v2, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;
    .locals 4

    .prologue
    .line 203
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 206
    :try_start_0
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->readTagHeader(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    move-result-object v0

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    .line 209
    const-string v1, "Some values must have been incorrect for interpretation as asf with wma content."

    .line 208
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 217
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 218
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 213
    :cond_0
    :try_start_1
    invoke-static {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/TagConverter;->createTagOf(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 226
    return-object v0

    .line 219
    :cond_1
    instance-of v1, v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    if-eqz v1, :cond_2

    .line 220
    check-cast v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    throw v0

    .line 222
    :cond_2
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read. Cause: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    .line 240
    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ_FAILED_DO_NOT_HAVE_PERMISSION_TO_READ_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v2, 0x0

    .line 245
    :try_start_0
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/io/FullRequestInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    .line 246
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/asf/io/FullRequestInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->HEADER_READER:Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    .line 248
    const-wide/16 v4, 0x0

    .line 247
    invoke-virtual {v0, v2, v1, v4, v5}, Lorg/FiioGetMusicInfo/audio/asf/io/AsfHeaderReader;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;

    .line 249
    if-nez v0, :cond_2

    .line 250
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ASF_HEADER_MISSING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-direct {v0, v2}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :catchall_0
    move-exception v0

    .line 275
    :goto_1
    if-eqz v1, :cond_1

    .line 276
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 281
    :cond_1
    :goto_2
    throw v0

    .line 253
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFileHeader()Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    move-result-object v2

    if-nez v2, :cond_3

    .line 254
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    .line 255
    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ASF_FILE_HEADER_MISSING:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 255
    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-direct {v0, v2}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :catch_1
    move-exception v0

    .line 272
    :goto_3
    :try_start_5
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    :cond_3
    :try_start_6
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFileHeader()Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 261
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->logger:Ljava/util/logging/Logger;

    .line 262
    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ASF_FILE_HEADER_SIZE_DOES_NOT_MATCH_FILE_SIZE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 264
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->getFileHeader()Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/asf/data/FileHeader;->getFileSize()Ljava/math/BigInteger;

    move-result-object v6

    .line 265
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 263
    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 267
    :cond_4
    new-instance v2, Lorg/FiioGetMusicInfo/audio/AudioFile;

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->getAudioHeader(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v3

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->getTag(Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/asf/AsfTag;

    move-result-object v0

    invoke-direct {v2, p1, v3, v0}, Lorg/FiioGetMusicInfo/audio/AudioFile;-><init>(Ljava/io/File;Lorg/FiioGetMusicInfo/audio/AudioHeader;Lorg/FiioGetMusicInfo/tag/Tag;)V
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 275
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 267
    :goto_4
    return-object v2

    .line 278
    :catch_2
    move-exception v0

    .line 279
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_4

    .line 278
    :catch_3
    move-exception v1

    .line 279
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/AsfFileReader;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 273
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    .line 271
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    .line 269
    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_0
.end method
