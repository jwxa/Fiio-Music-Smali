.class public Lorg/FiioGetMusicInfo/audio/asf/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DIFF_BETWEEN_ASF_DATE_AND_JAVA_DATE:J = 0xa97307f7980L

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final MAXIMUM_STRING_LENGTH_ALLOWED:I = 0x7ffe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->$assertionsDisabled:Z

    .line 47
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 51
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStringLengthNullSafe(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7ffe

    if-le v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->WMA_LENGTH_OF_STRING_IS_TOO_LARGE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 12

    .prologue
    const/16 v1, 0x2000

    const/4 v10, 0x0

    .line 104
    new-array v4, v1, [B

    .line 105
    const-wide/16 v2, 0x0

    .line 106
    :goto_0
    cmp-long v0, v2, p2

    if-ltz v0, :cond_0

    .line 120
    return-void

    .line 108
    :cond_0
    sub-long v6, p2, v2

    const-wide/16 v8, 0x2000

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    .line 109
    sub-long v6, p2, v2

    long-to-int v0, v6

    .line 111
    :goto_1
    invoke-virtual {p0, v4, v10, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 112
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 113
    new-instance v0, Ljava/io/IOException;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Inputstream has to continue for another "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    sub-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    invoke-virtual {p1, v4, v10, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    int-to-long v6, v0

    add-long/2addr v2, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static flush(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 136
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getBytes(JI)[B
    .locals 6

    .prologue
    .line 158
    new-array v1, p2, [B

    .line 159
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 162
    return-object v1

    .line 160
    :cond_0
    mul-int/lit8 v2, v0, 0x8

    ushr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_1
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 181
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 182
    return-object v1
.end method

.method public static getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;
    .locals 8

    .prologue
    .line 220
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 223
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide v6, 0xa97307f7980L

    sub-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 227
    return-object v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    if-nez p0, :cond_1

    move v1, v2

    .line 251
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 244
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    move v1, v2

    .line 251
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isStringLengthValidNullSafe(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7ffe

    if-le v0, v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 264
    new-array v1, v3, [B

    .line 265
    new-array v2, v3, [B

    .line 266
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 267
    if-eq v0, v3, :cond_0

    .line 269
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 274
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    .line 272
    :cond_1
    rsub-int/lit8 v3, v0, 0x7

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readBinary(Ljava/io/InputStream;J)[B
    .locals 1

    .prologue
    .line 290
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 291
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 292
    return-object v0
.end method

.method public static readCharacterSizedString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v2

    .line 311
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 314
    :cond_0
    if-eqz v0, :cond_1

    .line 315
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 317
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    .line 319
    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 313
    if-gt v3, v2, :cond_0

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-eq v2, v0, :cond_2

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 322
    const-string v1, "Invalid Data for current interpretation"

    .line 321
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    new-array v1, p1, [B

    .line 345
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 346
    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 347
    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    .line 352
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_1

    .line 353
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v1, v0

    if-nez v0, :cond_1

    .line 354
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    .line 355
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    :goto_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 362
    const-string v1, "Couldn\'t read the necessary amount of bytes."

    .line 361
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;
    .locals 3

    .prologue
    .line 379
    if-nez p0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 383
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 386
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;-><init>([I)V

    return-object v0

    .line 384
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v1, v0

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readUINT16(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 400
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 401
    return v0
.end method

.method public static readUINT32(Ljava/io/InputStream;)J
    .locals 6

    .prologue
    .line 414
    const-wide/16 v2, 0x0

    .line 415
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 422
    return-wide v2

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 415
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static readUINT64(Ljava/io/InputStream;)J
    .locals 6

    .prologue
    .line 435
    const-wide/16 v2, 0x0

    .line 436
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x38

    if-le v0, v1, :cond_0

    .line 443
    return-wide v2

    .line 441
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-long v4, v1

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 436
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static readUTF16LEStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v0

    .line 459
    new-array v1, v0, [B

    .line 460
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 461
    if-eq v2, v0, :cond_0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    .line 465
    :cond_0
    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 466
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v1, v0

    if-nez v0, :cond_2

    .line 467
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    .line 468
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    :goto_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 475
    const-string v1, "Invalid Data for current interpretation"

    .line 474
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static writeUINT16(ILjava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 490
    if-gez p0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "positive value expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 494
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 497
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 498
    return-void

    .line 495
    :cond_1
    div-int/lit8 v2, v0, 0x8

    shr-int v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 494
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static writeUINT32(JLjava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 512
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "positive value expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 516
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x18

    if-le v0, v2, :cond_1

    .line 519
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 520
    return-void

    .line 517
    :cond_1
    div-int/lit8 v2, v0, 0x8

    shr-long v4, p0, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 516
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public static writeUINT64(JLjava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 534
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "positive value expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 538
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x38

    if-le v0, v2, :cond_1

    .line 541
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 542
    return-void

    .line 539
    :cond_1
    div-int/lit8 v2, v0, 0x8

    shr-long v4, p0, v0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 538
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
