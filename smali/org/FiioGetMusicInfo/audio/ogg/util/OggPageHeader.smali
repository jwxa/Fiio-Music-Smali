.class public Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field public static final CAPTURE_PATTERN:[B

.field public static final FIELD_ABSOLUTE_GRANULE_LENGTH:I = 0x8

.field public static final FIELD_ABSOLUTE_GRANULE_POS:I = 0x6

.field public static final FIELD_CAPTURE_PATTERN_LENGTH:I = 0x4

.field public static final FIELD_CAPTURE_PATTERN_POS:I = 0x0

.field public static final FIELD_HEADER_TYPE_FLAG_LENGTH:I = 0x1

.field public static final FIELD_HEADER_TYPE_FLAG_POS:I = 0x5

.field public static final FIELD_PAGE_CHECKSUM_LENGTH:I = 0x4

.field public static final FIELD_PAGE_CHECKSUM_POS:I = 0x16

.field public static final FIELD_PAGE_SEGMENTS_LENGTH:I = 0x1

.field public static final FIELD_PAGE_SEGMENTS_POS:I = 0x1a

.field public static final FIELD_PAGE_SEQUENCE_NO_LENGTH:I = 0x4

.field public static final FIELD_PAGE_SEQUENCE_NO_POS:I = 0x12

.field public static final FIELD_SEGMENT_TABLE_POS:I = 0x1b

.field public static final FIELD_STREAM_SERIAL_NO_LENGTH:I = 0x4

.field public static final FIELD_STREAM_SERIAL_NO_POS:I = 0xe

.field public static final FIELD_STREAM_STRUCTURE_VERSION_LENGTH:I = 0x1

.field public static final FIELD_STREAM_STRUCTURE_VERSION_POS:I = 0x4

.field public static final MAXIMUM_NO_OF_SEGMENT_SIZE:I = 0xff

.field public static final MAXIMUM_PAGE_DATA_SIZE:I = 0xfe01

.field public static final MAXIMUM_PAGE_HEADER_SIZE:I = 0x11a

.field public static final MAXIMUM_PAGE_SIZE:I = 0xff1b

.field public static final MAXIMUM_SEGMENT_SIZE:I = 0xff

.field public static final OGG_PAGE_HEADER_FIXED_LENGTH:I = 0x1b

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private absoluteGranulePosition:D

.field private checksum:I

.field private headerTypeFlag:B

.field private isValid:Z

.field private lastPacketIncomplete:Z

.field private packetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation
.end field

.field private pageLength:I

.field private pageSequenceNumber:I

.field private rawHeaderData:[B

.field private segmentTable:[B

.field private startByte:J

.field private streamSerialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "org.FiioGetMusicInfo.audio.ogg.atom"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    .line 89
    return-void

    .line 50
    nop

    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 12

    .prologue
    const/16 v11, 0xff

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isValid:Z

    .line 97
    iput v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    .line 102
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->startByte:J

    .line 187
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    .line 188
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    .line 189
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    .line 190
    if-nez v0, :cond_1

    .line 192
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    move v0, v1

    .line 193
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    .line 198
    const/16 v0, 0xe

    const/16 v2, 0x11

    invoke-static {p1, v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([BII)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->streamSerialNumber:I

    .line 199
    const/16 v0, 0x12

    const/16 v2, 0x15

    invoke-static {p1, v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([BII)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageSequenceNumber:I

    .line 200
    const/16 v0, 0x16

    const/16 v2, 0x19

    invoke-static {p1, v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([BII)I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->checksum:I

    .line 201
    const/16 v0, 0x1a

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->u(I)I

    .line 203
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1b

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->segmentTable:[B

    .line 205
    const/4 v0, 0x0

    move v2, v1

    move v4, v1

    .line 206
    :goto_1
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->segmentTable:[B

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 222
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v11, :cond_0

    .line 226
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    new-instance v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    sub-int/2addr v2, v4

    invoke-direct {v1, v2, v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iput-boolean v10, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    .line 230
    :cond_0
    iput-boolean v10, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isValid:Z

    .line 233
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructed OggPage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 237
    :cond_2
    return-void

    .line 195
    :cond_3
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->u(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-int/lit8 v8, v0, 0x8

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->segmentTable:[B

    add-int/lit8 v3, v2, 0x1b

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    .line 209
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->segmentTable:[B

    aget-byte v0, v0, v2

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->u(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 210
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    .line 211
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    .line 213
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v11, :cond_5

    .line 215
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    new-instance v5, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    iget v6, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    sub-int/2addr v6, v0

    invoke-direct {v5, v6, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 206
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    move-object v0, v3

    goto/16 :goto_1
.end method

.method public static read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 148
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to read OggPage at:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 150
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 151
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 152
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_CONTAINS_ID3TAG:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 159
    sget-object v3, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v2, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 171
    :cond_0
    const-wide/16 v2, 0x1a

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 173
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    add-int/lit8 v2, v2, 0x1b

    new-array v2, v2, [B

    .line 176
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 179
    new-instance v3, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    invoke-direct {v3, v2}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;-><init>([B)V

    .line 180
    invoke-virtual {v3, v0, v1}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->setStartByte(J)V

    .line 182
    return-object v3

    .line 167
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v8

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 117
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to read OggPage at:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 119
    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 120
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    sget-object v2, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->CAPTURE_PATTERN:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_HEADER_CANNOT_BE_FOUND:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    add-int/lit8 v1, v0, 0x1a

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 128
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    add-int/lit8 v0, v1, 0x1b

    new-array v0, v0, [B

    .line 131
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    new-instance v1, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;-><init>([B)V

    .line 135
    return-object v1
.end method

.method private u(I)I
    .locals 1

    .prologue
    .line 241
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getAbsoluteGranulePosition()D
    .locals 4

    .prologue
    .line 254
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number Of Samples: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 255
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->absoluteGranulePosition:D

    return-wide v0
.end method

.method public getCheckSum()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->checksum:I

    return v0
.end method

.method public getHeaderType()B
    .locals 1

    .prologue
    .line 267
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    return v0
.end method

.method public getPacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->packetList:Ljava/util/List;

    return-object v0
.end method

.method public getPageLength()I
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This page length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 274
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    return v0
.end method

.method public getPageSequence()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageSequenceNumber:I

    return v0
.end method

.method public getRawHeaderData()[B
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    return-object v0
.end method

.method public getSegmentTable()[B
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->segmentTable:[B

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->streamSerialNumber:I

    return v0
.end method

.method public getStartByte()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->startByte:J

    return-wide v0
.end method

.method public isLastPacketIncomplete()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->lastPacketIncomplete:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isValid:Z

    return v0
.end method

.method public setStartByte(J)V
    .locals 1

    .prologue
    .line 336
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->startByte:J

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ogg Page Header:isValid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->headerTypeFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":oggPageHeaderLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->rawHeaderData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->pageLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":seqNo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPageSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":packetIncomplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->isLastPacketIncomplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":serNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getSerialNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader;->getPacketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    return-object v1

    .line 317
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/ogg/util/OggPageHeader$PacketStartAndLength;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
