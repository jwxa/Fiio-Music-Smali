.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
.source "ID3v24Tag.java"


# static fields
.field public static final MAJOR_VERSION:B = 0x4t

.field public static final MASK_V24_COMPRESSION:I = 0x10

.field public static final MASK_V24_CRC_DATA_PRESENT:I = 0x20

.field public static final MASK_V24_DATA_LENGTH_INDICATOR:I = 0x2

.field public static final MASK_V24_ENCRYPTION:I = 0x8

.field public static final MASK_V24_EXPERIMENTAL:I = 0x20

.field public static final MASK_V24_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V24_FILE_ALTER_PRESERVATION:I = 0x20

.field public static final MASK_V24_FOOTER_PRESENT:I = 0x10

.field public static final MASK_V24_FRAME_UNSYNCHRONIZATION:I = 0x4

.field public static final MASK_V24_GROUPING_IDENTITY:I = 0x40

.field public static final MASK_V24_IMAGE_ENCODING:I = 0x4

.field public static final MASK_V24_IMAGE_SIZE_RESTRICTIONS:I = 0x6

.field public static final MASK_V24_READ_ONLY:I = 0x10

.field public static final MASK_V24_TAG_ALTER_PRESERVATION:I = 0x40

.field public static final MASK_V24_TAG_RESTRICTIONS:I = 0x10

.field public static final MASK_V24_TAG_SIZE_RESTRICTIONS:I = -0x40

.field public static final MASK_V24_TAG_UPDATE:I = 0x40

.field public static final MASK_V24_TEXT_ENCODING_RESTRICTIONS:I = 0x20

.field public static final MASK_V24_TEXT_FIELD_SIZE_RESTRICTIONS:I = 0x18

.field public static final MASK_V24_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_DATA_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_RESTRICTION_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_UPDATE_LENGTH:I = 0x0

.field protected static TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I = 0x0

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_FOOTER:Ljava/lang/String; = "footer"

.field protected static final TYPE_IMAGEENCODINGRESTRICTION:Ljava/lang/String; = "imageEncodingRestriction"

.field protected static final TYPE_IMAGESIZERESTRICTION:Ljava/lang/String; = "imageSizeRestriction"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_TAGRESTRICTION:Ljava/lang/String; = "tagRestriction"

.field protected static final TYPE_TAGSIZERESTRICTION:Ljava/lang/String; = "tagSizeRestriction"

.field protected static final TYPE_TEXTENCODINGRESTRICTION:Ljava/lang/String; = "textEncodingRestriction"

.field protected static final TYPE_TEXTFIELDSIZERESTRICTION:Ljava/lang/String; = "textFieldSizeRestriction"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"

.field protected static final TYPE_UPDATETAG:Ljava/lang/String; = "updateTag"


# instance fields
.field protected crcData:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field protected footer:Z

.field protected imageEncodingRestriction:B

.field protected imageSizeRestriction:B

.field protected paddingSize:I

.field protected tagRestriction:Z

.field protected tagSizeRestriction:B

.field protected textEncodingRestriction:B

.field protected textFieldSizeRestriction:B

.field protected unsynchronization:Z

.field protected updateTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 66
    sput v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 67
    sput v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    .line 68
    sput v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 69
    const/4 v0, 0x2

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    .line 70
    const/4 v0, 0x5

    sput v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    .line 71
    sput v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I

    .line 72
    sput v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I

    .line 280
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 181
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 186
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    .line 191
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    .line 196
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 201
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    .line 207
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 212
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    .line 217
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 225
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 236
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 246
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 255
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 260
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->paddingSize:I

    .line 276
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 312
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    .line 313
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 620
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 601
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 181
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 186
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    .line 191
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    .line 196
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 201
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    .line 207
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 212
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    .line 217
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 225
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 236
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 246
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 255
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 260
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->paddingSize:I

    .line 276
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 603
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    .line 604
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 606
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->read(Ljava/nio/ByteBuffer;)V

    .line 608
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 474
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 181
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 186
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    .line 191
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    .line 196
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 201
    iput v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    .line 207
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 212
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    .line 217
    iput-boolean v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 225
    iput-byte v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 236
    iput-byte v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 246
    iput-byte v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 255
    iput-byte v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 260
    iput v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->paddingSize:I

    .line 276
    iput-byte v5, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 476
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    .line 478
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 480
    if-eqz p1, :cond_1

    .line 483
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 493
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->setLoggingFilename(Ljava/lang/String;)V

    move-object v0, p1

    .line 494
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 495
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 501
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    .line 504
    iget-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 506
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIT2;

    iget-object v2, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    invoke-direct {v1, v5, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    .line 507
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v3, "TIT2"

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 509
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_3
    iget-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 513
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPE1;

    iget-object v2, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    invoke-direct {v1, v5, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    .line 514
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v3, "TPE1"

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 516
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_4
    iget-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 520
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTALB;

    iget-object v2, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    invoke-direct {v1, v5, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    .line 521
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v3, "TALB"

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 523
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_5
    iget-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 527
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    iget-object v2, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    invoke-direct {v1, v5, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    .line 528
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v3, "TDRC"

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 530
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_6
    iget-object v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 534
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;

    const-string v2, "ENG"

    const-string v3, ""

    iget-object v4, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v3, "COMM"

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 537
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_7
    iget-byte v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 v1, v1, 0xff

    if-ltz v1, :cond_8

    iget-byte v1, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-eq v1, v2, :cond_8

    .line 541
    iget-byte v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;->genre:B

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    invoke-direct {v1, v5, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    .line 545
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v2, "TCON"

    invoke-direct {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 547
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_8
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    if-eqz v0, :cond_1

    .line 551
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;

    .line 552
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    if-lez v0, :cond_1

    .line 554
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;

    iget-byte v1, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v11Tag;->track:B

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    .line 555
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    const-string v2, "TRCK"

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 557
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 562
    :cond_9
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;

    if-eqz v0, :cond_1

    .line 566
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_a

    .line 568
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    check-cast p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;)V

    .line 574
    :goto_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 577
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    .line 582
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V

    .line 583
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 587
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    const-string v2, "Unable to convert Lyrics3 to v24 Frame:Frame Identifier"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 572
    :cond_a
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 181
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 186
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    .line 191
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    .line 196
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 201
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    .line 207
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 212
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    .line 217
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 225
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 236
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 246
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 255
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 260
    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->paddingSize:I

    .line 276
    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 464
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 466
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 467
    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 775
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 778
    sget v3, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    if-gt v0, v3, :cond_0

    .line 780
    new-instance v3, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_TOO_SMALL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 784
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 787
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 788
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    .line 789
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    .line 790
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 795
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v0, :cond_1

    .line 797
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 801
    :cond_1
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v0, :cond_2

    .line 804
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 805
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    new-array v3, v0, [B

    .line 806
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    invoke-virtual {p1, v3, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 807
    iput v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    move v0, v2

    .line 808
    :goto_3
    sget v4, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    if-lt v0, v4, :cond_7

    .line 816
    :cond_2
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v0, :cond_3

    .line 818
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 819
    new-array v0, v1, [B

    .line 820
    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 821
    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, -0x40

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 822
    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, 0x20

    shr-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 823
    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 824
    aget-byte v1, v0, v2

    and-int/lit8 v1, v1, 0x4

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 825
    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 827
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 788
    goto :goto_0

    :cond_5
    move v0, v2

    .line 789
    goto :goto_1

    :cond_6
    move v0, v2

    .line 790
    goto :goto_2

    .line 810
    :cond_7
    iget v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    shl-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    .line 811
    iget v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    aget-byte v5, v3, v0

    add-int/2addr v4, v5

    iput v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 714
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 715
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 716
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    .line 717
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    .line 718
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 721
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 726
    :cond_0
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1

    .line 728
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 731
    :cond_1
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_2

    .line 733
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 736
    :cond_2
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3

    .line 738
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 742
    :cond_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 744
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 747
    :cond_4
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v0, :cond_5

    .line 749
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 752
    :cond_5
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    if-eqz v0, :cond_6

    .line 754
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 757
    :cond_6
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    if-eqz v0, :cond_7

    .line 759
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_FOOTER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v3, v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 761
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 715
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 716
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 717
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 718
    goto/16 :goto_3
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 944
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    .line 949
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    .line 950
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    .line 951
    iput-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 954
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 956
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_ID:[B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 959
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getMajorVersion()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 962
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getRevision()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 966
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 968
    const/16 v0, -0x80

    .line 970
    :goto_0
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v2, :cond_0

    .line 972
    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 974
    :cond_0
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    if-eqz v2, :cond_1

    .line 976
    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 978
    :cond_1
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    if-eqz v2, :cond_2

    .line 980
    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 982
    :cond_2
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 987
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v0, :cond_11

    .line 989
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v0, v0, 0x0

    .line 990
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v2, :cond_3

    .line 992
    sget v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v0, v2

    .line 994
    :cond_3
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v2, :cond_4

    .line 996
    sget v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v2

    .line 998
    :cond_4
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v2, :cond_5

    .line 1000
    sget v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v0, v2

    .line 1005
    :cond_5
    :goto_1
    add-int v2, p1, p2

    add-int/2addr v0, v2

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1008
    const/4 v0, 0x0

    .line 1009
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v2, :cond_e

    .line 1012
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    .line 1013
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v2, :cond_6

    .line 1015
    sget v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v0, v2

    .line 1017
    :cond_6
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v2, :cond_7

    .line 1019
    sget v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v2

    .line 1021
    :cond_7
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v2, :cond_8

    .line 1023
    sget v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v0, v2

    .line 1025
    :cond_8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1026
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1028
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_NUMBER_BYTES_DATA_LENGTH:I

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1031
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v0, :cond_10

    .line 1033
    const/16 v0, 0x40

    .line 1035
    :goto_2
    iget-boolean v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v4, :cond_9

    .line 1037
    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 1039
    :cond_9
    iget-boolean v4, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v4, :cond_a

    .line 1041
    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 1043
    :cond_a
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1045
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v0, :cond_b

    .line 1047
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1050
    :cond_b
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v0, :cond_c

    .line 1052
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_DATA_LENGTH:I

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1053
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1054
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1057
    :cond_c
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v0, :cond_d

    .line 1059
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_DATA_LENGTH:I

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1061
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_d
    move-object v0, v2

    .line 1065
    :cond_e
    if-eqz v0, :cond_f

    .line 1067
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1068
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1071
    :cond_f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1072
    return-object v3

    :cond_10
    move v0, v1

    goto :goto_2

    :cond_11
    move v0, v1

    goto :goto_1

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .prologue
    .line 344
    :try_start_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 358
    :goto_0
    return-void

    .line 350
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 351
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

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
.end method

.method protected copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 384
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 385
    instance-of v1, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    if-eqz v1, :cond_7

    .line 388
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 395
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v1, :cond_6

    .line 397
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v1, :cond_4

    .line 399
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Modifying frame in map:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    .line 401
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    .line 404
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 456
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TYER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setYear(Ljava/lang/String;)V

    .line 423
    :cond_1
    :goto_1
    const-string v1, "Text"

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getFormattedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TDAT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setDate(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setMonthOnly(Z)V

    goto :goto_1

    .line 418
    :cond_3
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getOriginalID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TIME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setTime(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->setHoursOnly(Z)V

    goto :goto_1

    .line 427
    :cond_4
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUnsupported;

    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found duplicate TDRC frame in invalid situation,discarding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 448
    :cond_7
    check-cast v0, Ljava/util/List;

    .line 449
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 454
    :cond_8
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 324
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 326
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 329
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    .line 330
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    .line 331
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    .line 332
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    .line 333
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    .line 334
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    .line 335
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    .line 336
    iget-byte v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    .line 338
    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 1334
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    move-result-object v1

    .line 1335
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 1336
    const-string v2, "PictureData"

    invoke-virtual {v0, v2, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1337
    const-string v2, "PictureType"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1338
    const-string v2, "MIMEType"

    invoke-virtual {v0, v2, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1339
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1340
    return-object v1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 1345
    if-nez p1, :cond_0

    .line 1347
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1350
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 1352
    if-nez p2, :cond_1

    .line 1354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    move-result-object v1

    .line 1358
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 1360
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1362
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    :goto_0
    move-object v0, v1

    .line 1372
    :goto_1
    return-object v0

    .line 1366
    :cond_2
    invoke-static {p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v24Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 1184
    if-nez p1, :cond_0

    .line 1186
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1188
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/FiioGetMusicInfo/tag/id3/c;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 5

    .prologue
    .line 1297
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    move-result-object v1

    .line 1298
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 1299
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->isLinked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1301
    const-string v2, "PictureData"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1302
    const-string v2, "PictureType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1303
    const-string v2, "MIMEType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1304
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 1320
    :goto_0
    return-object v0

    .line 1311
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

    .line 1317
    const-string v2, "PictureType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1318
    const-string v2, "MIMEType"

    const-string v3, "-->"

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1319
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 1320
    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1315
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
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    move-result-object v0

    return-object v0
.end method

.method public createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;
    .locals 1

    .prologue
    .line 1166
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .locals 3

    .prologue
    .line 1118
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 1123
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->isUnsynchronization()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1125
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "crcdata"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcData:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1126
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "experimental"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->experimental:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1127
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "extended"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1128
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "paddingsize"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->paddingSize:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1129
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "footer"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1130
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "imageEncodingRestriction"

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->paddingSize:I

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1131
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "imageSizeRestriction"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1132
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tagRestriction"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1133
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tagSizeRestriction"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1134
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "textFieldSizeRestriction"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1135
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "textEncodingRestriction"

    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 1136
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "updateTag"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 1137
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1140
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 1142
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1239
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 1240
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;)V
    .locals 3

    .prologue
    .line 1226
    if-nez p1, :cond_0

    .line 1228
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1230
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 1231
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 667
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-nez v0, :cond_0

    move v0, v1

    .line 700
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 671
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 672
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    iget-boolean v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->footer:Z

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 674
    goto :goto_0

    .line 676
    :cond_1
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    iget-byte v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageEncodingRestriction:B

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 678
    goto :goto_0

    .line 680
    :cond_2
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    iget-byte v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->imageSizeRestriction:B

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 682
    goto :goto_0

    .line 684
    :cond_3
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    iget-boolean v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 686
    goto :goto_0

    .line 688
    :cond_4
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    iget-byte v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagSizeRestriction:B

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 690
    goto :goto_0

    .line 692
    :cond_5
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    iget-byte v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textEncodingRestriction:B

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 694
    goto :goto_0

    .line 696
    :cond_6
    iget-byte v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    iget-byte v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->textFieldSizeRestriction:B

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 698
    goto :goto_0

    .line 700
    :cond_7
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    iget-boolean v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-ne v2, v0, :cond_8

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
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
    .line 1385
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 1387
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1391
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1392
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 1394
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

    .line 1403
    :goto_1
    return-object v0

    .line 1394
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1396
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1403
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
    .line 1272
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1273
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    return-object v1

    .line 1275
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 1277
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;

    .line 1278
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v3

    .line 1279
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setPictureType(I)V

    .line 1281
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1283
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setLinked(Z)V

    .line 1284
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    .line 1290
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1288
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setBinaryData([B)V

    goto :goto_1
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1200
    if-nez p1, :cond_0

    .line 1202
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1205
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getGenericKeyFromId3(Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_1

    .line 1208
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    :goto_0
    return-object v0

    .line 1212
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/FiioGetMusicInfo/tag/id3/c;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;
    .locals 3

    .prologue
    .line 1244
    if-nez p1, :cond_0

    .line 1246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getId3KeyFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;

    move-result-object v0

    .line 1249
    if-nez v0, :cond_1

    .line 1251
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getID3Frames()Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;
    .locals 1

    .prologue
    .line 1258
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    const-string v0, "ID3v2.40"

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 1267
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24PreferredFrameOrderComparator;->getInstanceof()Lorg/FiioGetMusicInfo/tag/id3/ID3v24PreferredFrameOrderComparator;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()B
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 639
    const/16 v0, 0xa

    .line 640
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v1, :cond_2

    .line 642
    sget v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v0, v0, 0xa

    .line 643
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->updateTag:Z

    if-eqz v1, :cond_0

    .line 645
    sget v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_UPDATE_LENGTH:I

    add-int/2addr v0, v1

    .line 647
    :cond_0
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->crcDataFlag:Z

    if-eqz v1, :cond_1

    .line 649
    sget v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v1

    .line 651
    :cond_1
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->tagRestriction:Z

    if-eqz v1, :cond_2

    .line 653
    sget v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->TAG_EXT_HEADER_RESTRICTION_LENGTH:I

    add-int/2addr v0, v1

    .line 656
    :cond_2
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 657
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tag Size is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 658
    return v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1419
    if-nez p1, :cond_0

    .line 1421
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 1424
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 1426
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 1427
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1429
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 1430
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 1431
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1437
    :goto_0
    return-object v0

    .line 1433
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1437
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsynchronization()Z
    .locals 1

    .prologue
    .line 1155
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Reading ID3v24 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 843
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 846
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 847
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":Reading tag from file size set in header is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 849
    iget-boolean v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->extended:Z

    if-eqz v1, :cond_1

    .line 851
    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 856
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 857
    return-void
.end method

.method protected readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 866
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Start of frame body at"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 869
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->frameMap:Ljava/util/HashMap;

    .line 870
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 873
    iput p2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->fileReadSize:I

    .line 875
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 876
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 927
    :goto_1
    return-void

    .line 882
    :cond_0
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":looking for next frame at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 883
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 894
    :catch_1
    move-exception v0

    .line 896
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 897
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    .line 899
    :catch_2
    move-exception v0

    .line 901
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 902
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->invalidFrames:I

    goto/16 :goto_1

    .line 907
    :catch_3
    move-exception v0

    .line 909
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 910
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->invalidFrames:I

    goto/16 :goto_1

    .line 916
    :catch_4
    move-exception v0

    .line 918
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 919
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->invalidFrames:I

    goto/16 :goto_0

    .line 923
    :catch_5
    move-exception v0

    const-string v0, "long"

    const-string v1, "id3v24\u4fe1\u606f\u8bfb\u53d6\u5185\u5b58\u6ea2\u51fa----ID3v24Tag.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public write(Ljava/io/File;J)J
    .locals 8

    .prologue
    .line 1081
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 1082
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing tag to file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1088
    array-length v0, v3

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->calculateTagSize(II)I

    move-result v5

    .line 1091
    array-length v0, v3

    add-int/lit8 v0, v0, 0xa

    sub-int v4, v5, v0

    .line 1093
    array-length v0, v3

    invoke-direct {p0, v4, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    .line 1094
    invoke-virtual/range {v0 .. v7}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    .line 1095
    int-to-long v0, v5

    return-wide v0
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3

    .prologue
    .line 1104
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Writing tag to channel"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1107
    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1109
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1110
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1111
    return-void
.end method
