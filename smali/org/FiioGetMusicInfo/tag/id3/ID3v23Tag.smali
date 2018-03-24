.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
.source "ID3v23Tag.java"


# static fields
.field protected static FIELD_TAG_EXT_SIZE_LENGTH:I = 0x0

.field public static final MAJOR_VERSION:B = 0x3t

.field public static final MASK_V23_CRC_DATA_PRESENT:I = 0x80

.field public static final MASK_V23_EMBEDDED_INFO_FLAG:I = 0x2

.field public static final MASK_V23_EXPERIMENTAL:I = 0x20

.field public static final MASK_V23_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V23_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_DATA_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_LENGTH:I = 0x0

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field protected compression:Z

.field private crc32:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field private paddingSize:I

.field protected unsynchronization:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 55
    const/16 v0, 0xa

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 56
    sput v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 57
    sput v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    .line 58
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    sget v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    sub-int/2addr v0, v1

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->compression:Z

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 323
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->compression:Z

    .line 309
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->read(Ljava/nio/ByteBuffer;)V

    .line 311
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 88
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->compression:Z

    .line 270
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 274
    if-eqz p1, :cond_1

    .line 278
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_2

    .line 284
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 291
    :goto_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 295
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 296
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Created tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 298
    :cond_1
    return-void

    .line 289
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 88
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->compression:Z

    .line 258
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 260
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 262
    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 459
    sget v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    if-ne v0, v3, :cond_3

    .line 462
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 463
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 464
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 472
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 473
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez v0, :cond_1

    .line 475
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 477
    :cond_1
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 510
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 463
    goto :goto_0

    .line 479
    :cond_3
    sget v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    sget v4, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v3, v4

    if-ne v0, v3, :cond_7

    .line 481
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_CRC:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 485
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 486
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-nez v0, :cond_4

    .line 488
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 491
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 493
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 494
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez v0, :cond_5

    .line 496
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 498
    :cond_5
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 500
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    .line 501
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_CRC_SIZE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 485
    goto :goto_2

    .line 507
    :cond_7
    sget-object v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_INVALID:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sget v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_1
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 401
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 402
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 403
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 404
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 407
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 412
    :cond_0
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_1

    .line 414
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 417
    :cond_1
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_2

    .line 419
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 422
    :cond_2
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_3

    .line 424
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 427
    :cond_3
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_4

    .line 429
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 432
    :cond_4
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 437
    :cond_5
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v0, :cond_6

    .line 439
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 442
    :cond_6
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz v0, :cond_7

    .line 444
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 446
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 402
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 403
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 404
    goto/16 :goto_2
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    const/16 v1, -0x80

    const/4 v2, 0x0

    .line 643
    iput-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 644
    iput-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 645
    iput-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 649
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v0, v0, 0xa

    sget v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 652
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_ID:[B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 655
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getMajorVersion()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 658
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getRevision()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 662
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 666
    :goto_0
    iget-boolean v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v4, :cond_0

    .line 668
    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 670
    :cond_0
    iget-boolean v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz v4, :cond_1

    .line 672
    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 674
    :cond_1
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 678
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v0, :cond_5

    .line 680
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v0, v0, 0x0

    .line 681
    iget-boolean v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v4, :cond_2

    .line 683
    sget v4, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v4

    .line 688
    :cond_2
    :goto_1
    add-int v4, p1, p2

    add-int/2addr v0, v4

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 691
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v0, :cond_3

    .line 693
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v0, :cond_4

    .line 699
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    sget v4, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 700
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 702
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 703
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 717
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 718
    return-object v3

    .line 709
    :cond_4
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 710
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 711
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 713
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDRC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->translateFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 212
    :goto_0
    return-void

    .line 198
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to convert frame:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    :try_start_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 205
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 174
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 176
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    .line 179
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 180
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    .line 181
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    .line 182
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    .line 183
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    .line 185
    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 989
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 992
    const-string v2, "PictureData"

    invoke-virtual {v0, v2, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 993
    const-string v2, "PictureType"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 994
    const-string v2, "MIMEType"

    invoke-virtual {v0, v2, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 995
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 996
    return-object v1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 1016
    if-nez p1, :cond_0

    .line 1018
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1021
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 1023
    if-nez p2, :cond_1

    .line 1025
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    .line 1028
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 1029
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 1030
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 1032
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1034
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .line 1114
    :goto_1
    return-object v0

    .line 1038
    :cond_2
    invoke-static {p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1042
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_b

    .line 1045
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1047
    const-string v0, "TYER"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 1048
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    move-object v0, v1

    .line 1049
    goto :goto_1

    .line 1051
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1053
    const-string v0, "TYER"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 1054
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "00"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    move-object v0, v1

    .line 1055
    goto :goto_1

    .line 1057
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 1059
    const-string v0, "TYER"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 1060
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    move-object v0, v1

    .line 1061
    goto/16 :goto_1

    .line 1063
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1065
    const-string v0, "TYER"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 1066
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    move-object v0, v1

    .line 1067
    goto/16 :goto_1

    .line 1069
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 1071
    const-string v0, "TYER"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 1072
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v6, :cond_8

    .line 1077
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1078
    const/16 v0, 0x8

    invoke-virtual {p2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1079
    const-string v0, "TDAT"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v4

    .line 1080
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1082
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1083
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1084
    invoke-virtual {v0, v4}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto/16 :goto_1

    .line 1087
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_9

    .line 1091
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1092
    const-string v3, "01"

    .line 1093
    const-string v0, "TDAT"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v4

    .line 1094
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1097
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1098
    invoke-virtual {v0, v4}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    .line 1104
    goto/16 :goto_1

    .line 1109
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1114
    :cond_b
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 838
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/FiioGetMusicInfo/tag/id3/c;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 5

    .prologue
    .line 952
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v1

    .line 953
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 954
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->isLinked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 956
    const-string v2, "PictureData"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 957
    const-string v2, "PictureType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    const-string v2, "MIMEType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 975
    :goto_0
    return-object v0

    .line 966
    :cond_0
    :try_start_0
    const-string v2, "PictureData"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    const-string v2, "PictureType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 973
    const-string v2, "MIMEType"

    const-string v3, "-->"

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 974
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 975
    goto :goto_0

    .line 968
    :catch_0
    move-exception v0

    .line 970
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    move-result-object v0

    return-object v0
.end method

.method public createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .locals 3

    .prologue
    .line 789
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 794
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 796
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "extended"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 797
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "experimental"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 798
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "crcdata"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 799
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "paddingsize"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 800
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 802
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 803
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 888
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 889
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;)V
    .locals 3

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 877
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 879
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 880
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 365
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    if-nez v0, :cond_0

    move v0, v1

    .line 386
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 369
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    .line 370
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    iget v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 372
    goto :goto_0

    .line 374
    :cond_1
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iget-boolean v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 376
    goto :goto_0

    .line 378
    :cond_2
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    iget-boolean v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->experimental:Z

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 380
    goto :goto_0

    .line 382
    :cond_3
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    iget-boolean v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 384
    goto :goto_0

    .line 386
    :cond_4
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    iget v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    if-ne v2, v0, :cond_5

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 1242
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1246
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1247
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 1249
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1258
    :goto_1
    return-object v0

    .line 1249
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1251
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1258
    :cond_2
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 924
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 925
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 927
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    return-object v1

    .line 927
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 929
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 930
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v3

    .line 931
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 932
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setPictureType(I)V

    .line 933
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 935
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setLinked(Z)V

    .line 936
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    .line 942
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 940
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setBinaryData([B)V

    goto :goto_1
.end method

.method public getCrc32()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crc32:I

    return v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 852
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 855
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getGenericKeyFromId3(Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_1

    .line 858
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    .line 862
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/FiioGetMusicInfo/tag/id3/c;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;
    .locals 3

    .prologue
    .line 893
    if-nez p1, :cond_0

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getId3KeyFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;

    move-result-object v0

    .line 898
    if-nez v0, :cond_1

    .line 900
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getID3Frames()Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string v0, "ID3v2.30"

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x3

    return v0
.end method

.method public getPaddingSize()I
    .locals 1

    .prologue
    .line 1001
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->paddingSize:I

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 916
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23PreferredFrameOrderComparator;->getInstanceof()Lorg/FiioGetMusicInfo/tag/id3/ID3v23PreferredFrameOrderComparator;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()B
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 344
    const/16 v0, 0xa

    .line 345
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v1, :cond_0

    .line 347
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v0, v0, 0xa

    .line 348
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v1, :cond_0

    .line 350
    sget v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v1

    .line 353
    :cond_0
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    return v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1128
    if-nez p1, :cond_0

    .line 1130
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1133
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 1135
    const-string v0, "TYERTDAT"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;

    .line 1136
    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1158
    :goto_0
    return-object v0

    .line 1142
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1145
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_4

    .line 1147
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1150
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1151
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 1152
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1154
    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 1158
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsynchronization()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    return v0
.end method

.method protected loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .prologue
    .line 1164
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 1168
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1169
    return-void
.end method

.method protected loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .prologue
    .line 1173
    const-string v0, "TYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1175
    invoke-super {p0, p1, p2, p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    const-string v0, "TDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1184
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "TDAT is empty so just ignoring"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TYERTDAT"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1191
    :cond_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1193
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1195
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1196
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateBytes:I

    invoke-virtual {p3}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->duplicateBytes:I

    goto :goto_0

    .line 1198
    :cond_5
    const-string v0, "TYER"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1200
    const-string v0, "TDAT"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1202
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1203
    invoke-virtual {v1, p3}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1204
    const-string v0, "TDAT"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1205
    const-string v0, "TDAT"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string v0, "TYERTDAT"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1210
    :cond_6
    const-string v0, "TYER"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1213
    :cond_7
    const-string v0, "TDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    const-string v0, "TYER"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1217
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1218
    const-string v0, "TYER"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1219
    invoke-virtual {v1, p3}, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 1220
    const-string v0, "TYER"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string v0, "TYERTDAT"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1225
    :cond_8
    const-string v0, "TDAT"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " tag not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Reading ID3v23 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 528
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 529
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID_TAG_SIZE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 532
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v0, :cond_1

    .line 534
    invoke-direct {p0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 538
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 540
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 545
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 546
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Loaded Frames,there are:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method protected readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 563
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    .line 564
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 568
    iput p2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->fileReadSize:I

    .line 569
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Start of frame body at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",frames data size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 573
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 625
    :goto_1
    return-void

    .line 579
    :cond_0
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Looking for next frame at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 580
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Found padding starting at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1

    .line 591
    :catch_1
    move-exception v0

    .line 593
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Empty Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/EmptyFrameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 594
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    .line 596
    :catch_2
    move-exception v0

    .line 598
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Invalid Frame Identifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 599
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->invalidFrames:I

    goto/16 :goto_1

    .line 605
    :catch_3
    move-exception v0

    .line 607
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Invalid Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/InvalidFrameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 608
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->invalidFrames:I

    goto/16 :goto_1

    .line 614
    :catch_4
    move-exception v0

    .line 616
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Corrupt Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 617
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->invalidFrames:I

    goto/16 :goto_0

    .line 621
    :catch_5
    move-exception v0

    const-string v0, "long"

    const-string v1, "id3v23\u4fe1\u606f\u8bfb\u53d6\u5185\u5b58\u6ea2\u51fa----ID3v23Tag.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected translateFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 5

    .prologue
    .line 222
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    .line 223
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    .line 225
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    const-string v1, "TYER"

    invoke-direct {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTYER;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTYER;->setText(Ljava/lang/String;)V

    .line 229
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding Frame:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    const-string v1, "TDAT"

    invoke-direct {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->setText(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->setMonthOnly(Z)V

    .line 237
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding Frame:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;

    const-string v1, "TIME"

    invoke-direct {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;->setText(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;->setHoursOnly(Z)V

    .line 245
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Adding Frame:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_2
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 8

    .prologue
    .line 733
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 734
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing tag to file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 738
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 742
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v3

    .line 745
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 748
    :cond_0
    array-length v0, v3

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->calculateTagSize(II)I

    move-result v5

    .line 749
    array-length v0, v3

    add-int/lit8 v0, v0, 0xa

    sub-int v4, v5, v0

    .line 750
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Current audiostart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 751
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Size including padding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 752
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Padding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 754
    array-length v0, v3

    invoke-direct {p0, v4, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    .line 755
    invoke-virtual/range {v0 .. v7}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    .line 756
    int-to-long v0, v5

    return-wide v0

    .line 741
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 765
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Writing tag to channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 768
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 772
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 775
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 777
    :goto_1
    array-length v2, v0

    invoke-direct {p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 779
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 780
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 781
    return-void

    :cond_0
    move v0, v1

    .line 771
    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
