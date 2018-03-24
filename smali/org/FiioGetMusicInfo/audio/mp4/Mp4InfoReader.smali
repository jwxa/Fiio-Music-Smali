.class public Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;
.super Ljava/lang/Object;
.source "Mp4InfoReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "org.FiioGetMusicInfo.audio.mp4.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isTrackAtomVideo(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FtypBox;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 67
    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->VMHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 92
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;-><init>()V

    .line 96
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->FTYP:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 97
    if-nez v1, :cond_0

    .line 99
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 103
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 104
    new-instance v3, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FtypBox;

    invoke-direct {v3, v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FtypBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FtypBox;->processData()V

    .line 106
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FtypBox;->getMajorBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBrand(Ljava/lang/String;)V

    .line 110
    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v1

    .line 111
    if-nez v1, :cond_1

    .line 113
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 116
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 122
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MVHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 123
    if-nez v2, :cond_2

    .line 125
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 128
    new-instance v4, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MvhdBox;

    invoke-direct {v4, v2, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MvhdBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 129
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MvhdBox;->getLength()I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v0, v6, v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setPreciseLength(D)V

    .line 132
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 136
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    add-int/2addr v5, v6

    .line 138
    if-nez v2, :cond_3

    .line 140
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDIA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 144
    if-nez v2, :cond_4

    .line 146
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_4
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MDHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 150
    if-nez v2, :cond_5

    .line 152
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_5
    new-instance v6, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 155
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MdhdBox;->getSampleRate()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setSamplingRate(I)V

    .line 170
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MINF:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 172
    if-nez v2, :cond_6

    .line 174
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 180
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->SMHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 181
    if-nez v6, :cond_8

    .line 183
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 184
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->VMHD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_7

    .line 188
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadVideoException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_7
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STBL:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 199
    if-nez v2, :cond_9

    .line 201
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_AUDIO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 209
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STSD:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 210
    if-eqz v6, :cond_b

    .line 212
    new-instance v7, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;

    invoke-direct {v7, v6, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 213
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StsdBox;->processData()V

    .line 214
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 217
    sget-object v7, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MP4A:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    .line 218
    if-eqz v7, :cond_15

    .line 220
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 221
    new-instance v8, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4Mp4aBox;

    invoke-direct {v8, v7, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4Mp4aBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 222
    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4Mp4aBox;->processData()V

    .line 224
    sget-object v7, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ESDS:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    .line 225
    if-eqz v7, :cond_b

    .line 227
    new-instance v8, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 230
    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    if-eqz v6, :cond_a

    .line 231
    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 239
    :cond_a
    invoke-virtual {v8}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setKind(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 242
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 313
    :cond_b
    :goto_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->STCO:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 315
    if-eqz v2, :cond_c

    .line 317
    new-instance v6, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;

    invoke-direct {v6, v2, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 318
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v2

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setAudioDataStartPosition(Ljava/lang/Long;)V

    .line 319
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setAudioDataEndPosition(Ljava/lang/Long;)V

    .line 320
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4StcoBox;->getFirstOffSet()I

    move-result v2

    int-to-long v6, v2

    sub-long v6, v8, v6

    invoke-virtual {v0, v6, v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setAudioDataLength(J)V

    .line 324
    :cond_c
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->getChannelNumber()I

    move-result v2

    if-eq v2, v10, :cond_d

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->getChannelNumber()I

    move-result v2

    if-nez v2, :cond_e

    .line 326
    :cond_d
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 330
    :cond_e
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->getBitRateAsNumber()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_f

    .line 332
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 334
    :cond_f
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->getBitRateAsNumber()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_10

    .line 336
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MvhdBox;->getLength()I

    move-result v2

    int-to-long v8, v2

    div-long/2addr v6, v8

    long-to-int v2, v6

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 341
    :cond_10
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->getBitsPerSample()I

    move-result v2

    if-ne v2, v10, :cond_11

    .line 343
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitsPerSample(I)V

    .line 347
    :cond_11
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 349
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 352
    :cond_12
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    :cond_13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_19

    .line 377
    :cond_14
    return-object v0

    .line 253
    :cond_15
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    sget-object v7, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->DRMS:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v7

    .line 255
    if-eqz v7, :cond_18

    .line 257
    new-instance v6, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4DrmsBox;

    invoke-direct {v6, v7, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4DrmsBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 258
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4DrmsBox;->processData()V

    .line 261
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ESDS:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 263
    if-eqz v6, :cond_b

    .line 265
    new-instance v7, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 268
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    if-eqz v6, :cond_16

    .line 269
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getAvgBitrate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 273
    :cond_16
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    if-eqz v6, :cond_17

    .line 274
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getNumberOfChannels()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 277
    :cond_17
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getKind()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setKind(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$Kind;)V

    .line 278
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox;->getAudioProfile()Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setProfile(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V

    .line 280
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->DRM_AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_18
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ALAC:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 289
    if-eqz v6, :cond_b

    .line 292
    new-instance v7, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 293
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 296
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ALAC:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v6

    .line 298
    if-eqz v6, :cond_b

    .line 300
    new-instance v7, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;

    invoke-direct {v7, v6, v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 301
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;->processData()V

    .line 302
    sget-object v6, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setEncodingType(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;->getChannels()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setChannelNumber(I)V

    .line 304
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;->getBitRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitRate(I)V

    .line 305
    invoke-virtual {v7}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4AlacBox;->getSampleSize()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AudioHeader;->setBitsPerSample(I)V

    goto/16 :goto_0

    .line 360
    :cond_19
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->TRAK:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v2

    .line 361
    if-eqz v2, :cond_14

    .line 363
    invoke-direct {p0, v3, v2, v1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4InfoReader;->isTrackAtomVideo(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4FtypBox;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 365
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadVideoException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_IS_VIDEO:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadVideoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
