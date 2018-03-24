.class public Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;
.super Ljava/lang/Object;
.source "OggInfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "org.FiioGetMusicInfo.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 4

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 151
    const/4 p1, 0x1

    .line 153
    :cond_0
    sget v0, Lorg/FiioGetMusicInfo/audio/generic/Utils;->KILOBYTE_MULTIPLIER:I

    int-to-long v0, v0

    div-long v0, p2, v0

    sget v2, Lorg/FiioGetMusicInfo/audio/generic/Utils;->BITS_IN_BYTE_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 43
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 44
    new-instance v4, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v4}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 45
    sget-object v5, Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;->logger:Ljava/util/logging/Logger;

    const-string v6, "Started"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 49
    sget-object v5, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v5, v5

    new-array v5, v5, [B

    .line 50
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 51
    sget-object v6, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 54
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 57
    sget-object v6, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 71
    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 73
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v6, 0x2

    sub-long/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v6, 0x4

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    move-wide v0, v2

    .line 102
    :goto_1
    cmpl-double v2, v0, v2

    if-nez v2, :cond_4

    .line 105
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_VORBIS_NO_SETUP_BLOCK:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v10, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v2, v11

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v1, v1, v9

    if-ne v0, v1, :cond_3

    .line 78
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v6, 0x4

    sub-long/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    new-array v0, v9, [B

    .line 80
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 81
    aget-byte v1, v0, v11

    sget-object v5, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v5, v5, v11

    if-ne v1, v5, :cond_3

    aget-byte v1, v0, v10

    sget-object v5, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v5, v5, v10

    if-ne v1, v5, :cond_3

    aget-byte v0, v0, v8

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    aget-byte v1, v1, v8

    if-ne v0, v1, :cond_3

    .line 83
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v6, 0x3

    sub-long/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 86
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    const-wide/16 v8, 0x1a

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 88
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 90
    add-int/lit8 v0, v5, 0x1b

    new-array v0, v0, [B

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 93
    new-instance v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;-><init>([B)V

    .line 94
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 95
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    move-result-wide v0

    goto/16 :goto_1

    .line 99
    :cond_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v6, 0x2

    sub-long/2addr v0, v6

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 109
    :cond_4
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageLength()I

    move-result v2

    new-array v2, v2, [B

    .line 111
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 112
    new-instance v3, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;

    invoke-direct {v3, v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;-><init>([B)V

    .line 115
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    move-result v2

    int-to-double v6, v2

    div-double/2addr v0, v6

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-virtual {v4, v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 116
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getChannelNumber()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 117
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getSamplingRate()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 118
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 121
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 124
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    move-result v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    move-result v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 127
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 128
    invoke-virtual {v4, v11}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    .line 143
    :goto_2
    return-object v4

    .line 131
    :cond_5
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getMaxBitrate()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getMinBitrate()I

    move-result v0

    if-nez v0, :cond_6

    .line 134
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/VorbisIdentificationHeader;->getNominalBitrate()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 135
    invoke-virtual {v4, v10}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    goto :goto_2

    .line 140
    :cond_6
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->getTrackLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 141
    invoke-virtual {v4, v10}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    goto :goto_2
.end method
