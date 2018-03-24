.class public Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
.source "ID3v22Tag.java"


# static fields
.field public static final MAJOR_VERSION:B = 0x2t

.field public static final MASK_V22_COMPRESSION:I = 0x40

.field public static final MASK_V22_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static final TYPE_COMPRESSION:Ljava/lang/String; = "compression"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field protected compression:Z

.field protected unsynchronization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 69
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 74
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->frameMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 218
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 69
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 74
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 204
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->read(Ljava/nio/ByteBuffer;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>()V

    .line 69
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 74
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->frameMap:Ljava/util/HashMap;

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 165
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_1

    .line 171
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_2

    .line 178
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 186
    :goto_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 190
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 191
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Created tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 193
    :cond_1
    return-void

    .line 184
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 69
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 74
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 152
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 154
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->copyFrames(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 155
    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 298
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 299
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 301
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_TAG_COMPRESSED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 312
    :cond_1
    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_2

    .line 314
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 316
    :cond_2
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_3

    .line 318
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 320
    :cond_3
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_4

    .line 322
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 324
    :cond_4
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_5

    .line 326
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 328
    :cond_5
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_6

    .line 330
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 332
    :cond_6
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_7

    .line 334
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 336
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 298
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 299
    goto/16 :goto_1
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 482
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 485
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 493
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-eqz v2, :cond_0

    .line 495
    const/16 v0, -0x80

    .line 497
    :cond_0
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    if-eqz v2, :cond_1

    .line 499
    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    .line 502
    :cond_1
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 505
    add-int v0, p1, p2

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 506
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 507
    return-object v1
.end method


# virtual methods
.method protected addFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .prologue
    .line 267
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

    .line 269
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->translateFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 285
    :goto_0
    return-void

    .line 271
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

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

    .line 277
    :cond_1
    :try_start_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 278
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V

    .line 122
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    .line 125
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 126
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_2

    .line 130
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;

    .line 131
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->compression:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 132
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Tag;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    goto :goto_0

    .line 134
    :cond_2
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    .line 138
    iget-boolean v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    goto :goto_0
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 799
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    move-result-object v1

    .line 800
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;

    .line 801
    const-string v2, "PictureData"

    invoke-virtual {v0, v2, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 802
    const-string v2, "PictureType"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    const-string v2, "ImageType"

    invoke-static {p2}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 804
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 805
    return-object v1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 639
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 641
    if-nez p2, :cond_1

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 648
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 649
    invoke-static {p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v22Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    move-object v0, v1

    .line 654
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 627
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 629
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/FiioGetMusicInfo/tag/id3/c;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 5

    .prologue
    .line 770
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;

    .line 772
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->isLinked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 774
    const-string v2, "PictureData"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 775
    const-string v2, "PictureType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 776
    const-string v2, "ImageType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getFormatForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 793
    :goto_0
    return-object v0

    .line 784
    :cond_0
    :try_start_0
    const-string v2, "PictureData"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    const-string v2, "PictureType"

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 791
    const-string v2, "ImageType"

    const-string v3, "-->"

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    const-string v2, "Description"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    .line 793
    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 788
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
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    move-result-object v0

    return-object v0
.end method

.method public createFrame(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;
    .locals 1

    .prologue
    .line 607
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .locals 3

    .prologue
    .line 568
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 573
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "compression"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 575
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "unsyncronisation"

    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    invoke-virtual {v0, v1, v2}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 576
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 578
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 580
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/mp3/MP3File;->getStructureFormatter()Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 705
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 706
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;)V
    .locals 3

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 696
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/FiioGetMusicInfo/tag/id3/c;)V

    .line 697
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 249
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    if-nez v0, :cond_0

    move v0, v1

    .line 258
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 253
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;

    .line 254
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    iget-boolean v3, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_1
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    iget-boolean v0, v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-ne v2, v0, :cond_2

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
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
    .line 817
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 819
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 820
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 821
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 823
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 824
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 826
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

    .line 835
    :goto_1
    return-object v0

    .line 826
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 828
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v22GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 835
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
    .line 742
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 743
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    return-object v1

    .line 745
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 747
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;

    .line 748
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v3

    .line 749
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getFormatType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getMimeTypeForFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getPictureType()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setPictureType(I)V

    .line 751
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->isImageUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setLinked(Z)V

    .line 754
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    .line 760
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyPIC;->getImageData()[B

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setBinaryData([B)V

    goto :goto_1
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 672
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getGenericKeyFromId3(Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;)Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_1

    .line 675
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 680
    :goto_0
    return-object v0

    .line 679
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/FiioGetMusicInfo/tag/id3/c;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFrameAndSubIdFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/c;
    .locals 3

    .prologue
    .line 710
    if-nez p1, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getId3KeyFromGenericKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;

    move-result-object v0

    .line 715
    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_1
    new-instance v1, Lorg/FiioGetMusicInfo/tag/id3/c;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lorg/FiioGetMusicInfo/tag/id3/c;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getID3Frames()Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;
    .locals 1

    .prologue
    .line 724
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "ID3v2_2.20"

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 734
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22PreferredFrameOrderComparator;->getInstanceof()Lorg/FiioGetMusicInfo/tag/id3/ID3v22PreferredFrameOrderComparator;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()B
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 239
    return v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 842
    if-nez p1, :cond_0

    .line 844
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 847
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_2

    .line 849
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 852
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 853
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    .line 854
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v22GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    :goto_0
    return-object v0

    .line 856
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 860
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCompression()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->compression:Z

    return v0
.end method

.method public isUnsynchronization()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    return v0
.end method

.method protected loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .prologue
    .line 866
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 870
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 871
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    const-string v1, "ID3v2.20 tag not found"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Reading tag from file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 355
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 358
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 361
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    if-eqz v2, :cond_1

    .line 363
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 365
    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 366
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Loaded Frames,there are:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method protected readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 378
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->frameMap:Ljava/util/HashMap;

    .line 379
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 382
    iput p2, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->fileReadSize:I

    .line 383
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    const-string v2, ",frames sizes and padding is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 389
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 439
    :goto_1
    return-void

    .line 394
    :cond_0
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 395
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {p0, v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 406
    :catch_1
    move-exception v0

    .line 408
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 409
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    .line 411
    :catch_2
    move-exception v0

    .line 413
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 414
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->invalidFrames:I

    goto/16 :goto_1

    .line 419
    :catch_3
    move-exception v0

    .line 421
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 422
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->invalidFrames:I

    goto/16 :goto_1

    .line 428
    :catch_4
    move-exception v0

    .line 430
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 431
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->invalidFrames:I

    goto/16 :goto_0

    .line 435
    :catch_5
    move-exception v0

    const-string v0, "long"

    const-string v1, "id3v22\u4fe1\u606f\u8bfb\u53d6\u5185\u5b58\u6ea2\u51fa----ID3v22Tag.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected translateFrame(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .prologue
    .line 449
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;

    .line 451
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    const-string v1, "TYE"

    invoke-direct {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    new-instance v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;

    const-string v1, "TIM"

    invoke-direct {v2, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_1
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 8

    .prologue
    .line 516
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing tag to file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 523
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
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 524
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-static {v3}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v3

    .line 527
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 530
    :cond_0
    array-length v0, v3

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->calculateTagSize(II)I

    move-result v5

    .line 531
    array-length v0, v3

    add-int/lit8 v0, v0, 0xa

    sub-int v4, v5, v0

    .line 532
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 533
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 534
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 536
    array-length v0, v3

    invoke-direct {p0, v4, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    .line 537
    invoke-virtual/range {v0 .. v7}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    .line 538
    int-to-long v0, v5

    return-wide v0

    .line 523
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 548
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 550
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 551
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 554
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
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->unsynchronization:Z

    .line 555
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->isUnsynchronization()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 558
    sget-object v2, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->getLoggingFilename()Ljava/lang/String;

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

    .line 560
    :goto_1
    array-length v2, v0

    invoke-direct {p0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 562
    invoke-interface {p1, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 563
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 564
    return-void

    :cond_0
    move v0, v1

    .line 554
    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method
