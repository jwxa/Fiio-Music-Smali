.class public Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "AacAudioFileReader.java"


# static fields
.field private static final MINIMUM_SIZE_FOR_VALID_AUDIO_FILE:I = 0x64

.field public static aacFileWithM4aHead:Z

.field private static tagPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput v0, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->tagPosition:I

    .line 52
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->aacFileWithM4aHead:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private computeFrameLength(BBB)I
    .locals 3

    .prologue
    .line 163
    shr-int/lit8 v0, p3, 0x5

    and-int/lit8 v1, v0, 0x7

    .line 164
    invoke-direct {p0, p2}, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->makesByteToInt(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 165
    and-int/lit8 v2, p1, 0x3

    mul-int/lit16 v2, v2, 0x800

    .line 166
    if-gez v0, :cond_0

    .line 167
    neg-int v0, v0

    .line 170
    :cond_0
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private makesByteToInt(B)I
    .locals 1

    .prologue
    .line 177
    .line 178
    if-gez p1, :cond_0

    .line 179
    and-int/lit8 v0, p1, 0x7f

    add-int/lit16 p1, v0, 0x80

    .line 181
    :cond_0
    return p1
.end method

.method private readAudioInfo(Ljava/nio/ByteBuffer;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 194
    return-object v0
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 58
    const/16 v0, 0x10

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 78
    const/4 v1, 0x7

    new-array v1, v1, [B

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 80
    sput-boolean v9, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->aacFileWithM4aHead:Z

    .line 81
    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_0

    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xf0

    const/16 v4, 0xf0

    if-eq v2, v4, :cond_3

    .line 84
    :cond_0
    aget-byte v2, v1, v11

    const/16 v4, 0x66

    if-ne v2, v4, :cond_1

    const/4 v2, 0x5

    aget-byte v2, v1, v2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_1

    const/4 v2, 0x6

    aget-byte v2, v1, v2

    const/16 v4, 0x79

    if-ne v2, v4, :cond_1

    .line 86
    sput-boolean v5, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->aacFileWithM4aHead:Z

    .line 87
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;-><init>()V

    .line 89
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4FileReader;->getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const-string v2, "49"

    aget-byte v4, v1, v9

    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    const-string v2, "44"

    aget-byte v4, v1, v5

    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    const-string v2, "33"

    aget-byte v4, v1, v6

    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    new-array v2, v10, [B

    .line 95
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 96
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE([B)I

    move-result v2

    new-array v2, v2, [B

    .line 97
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 98
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1([B)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v4, "fff1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_2
    div-int/lit8 v2, v4, 0x2

    add-int/lit8 v2, v2, 0xa

    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 113
    :cond_3
    aget-byte v2, v1, v6

    .line 114
    shr-int/lit8 v2, v2, 0x2

    .line 115
    and-int/lit8 v4, v2, 0xf

    .line 116
    aget v2, v3, v4

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 117
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 119
    aget-byte v2, v1, v6

    .line 120
    and-int/lit8 v2, v2, 0x1

    .line 121
    mul-int/lit8 v2, v2, 0x4

    .line 122
    aget-byte v5, v1, v10

    .line 123
    shr-int/lit8 v5, v5, 0x6

    .line 124
    and-int/lit8 v5, v5, 0x3

    .line 125
    add-int/2addr v2, v5

    .line 126
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    .line 130
    const/4 v2, 0x6

    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 131
    aget-byte v5, v1, v10

    aget-byte v6, v1, v11

    const/4 v7, 0x5

    aget-byte v1, v1, v7

    invoke-direct {p0, v5, v6, v1}, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->computeFrameLength(BBB)I

    move-result v1

    .line 133
    add-int/lit8 v5, v1, -0x7

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 134
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    sub-int v1, v5, v1

    .line 135
    const/4 v5, 0x7

    new-array v5, v5, [B

    .line 138
    :goto_1
    if-gtz v1, :cond_6

    .line 152
    :cond_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    long-to-int v1, v6

    sput v1, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->tagPosition:I

    .line 153
    int-to-long v6, v2

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    aget v1, v3, v4

    int-to-long v2, v1

    div-long v2, v6, v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    goto/16 :goto_0

    .line 109
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 139
    :cond_6
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 140
    aget-byte v6, v5, v9

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 141
    const/4 v6, 0x6

    aget-byte v6, v5, v6

    and-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v6

    .line 144
    aget-byte v6, v5, v10

    aget-byte v7, v5, v11

    const/4 v8, 0x5

    aget-byte v8, v5, v8

    invoke-direct {p0, v6, v7, v8}, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->computeFrameLength(BBB)I

    move-result v6

    .line 145
    add-int/lit8 v7, v6, -0x7

    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 146
    sub-int/2addr v1, v6

    goto :goto_1

    .line 58
    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
        0xac44
        0xac44
        0xac44
    .end array-data
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 201
    new-instance v1, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;-><init>()V

    .line 203
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sget v4, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->tagPosition:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    sget v2, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->tagPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 207
    invoke-static {p1, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 208
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 211
    const-string v4, "Date"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 222
    :goto_1
    invoke-static {p1, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v2

    long-to-int v2, v2

    .line 223
    invoke-static {p1, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v4

    long-to-int v0, v4

    move v3, v2

    move v2, v0

    .line 225
    :goto_2
    if-eqz v2, :cond_3

    move-object v0, v1

    .line 317
    goto :goto_0

    .line 213
    :cond_2
    const-string v3, "d0070000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 215
    invoke-static {p1, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    .line 216
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_1

    .line 227
    :cond_3
    const-string v0, ""

    .line 228
    const/4 v4, 0x1

    new-array v4, v4, [B

    .line 229
    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 230
    :goto_3
    aget-byte v5, v4, v8

    if-nez v5, :cond_5

    .line 235
    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 236
    new-array v5, v3, [B

    .line 237
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 239
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 242
    const-string v5, "Album"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 244
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :cond_4
    :goto_4
    invoke-static {p1, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v2

    long-to-int v2, v2

    .line 314
    invoke-static {p1, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v8, v9}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v4

    long-to-int v0, v4

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 231
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_3

    .line 247
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 248
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_4

    .line 252
    :cond_6
    const-string v5, "Artist"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 254
    :try_start_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 257
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 258
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_4

    .line 262
    :cond_7
    const-string v5, "Genre"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 264
    :try_start_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 267
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 268
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_4

    .line 272
    :cond_8
    const-string v5, "Cover"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 274
    const/16 v0, 0xa

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setImage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_4

    .line 276
    :catch_6
    move-exception v0

    const-string v0, "long"

    const-string v4, "aac\u6b4c\u66f2\u56fe\u7247\u8bfb\u53d6\u5185\u5b58\u6ea2\u51fa---aacAudioFileReader.java"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 279
    :cond_9
    const-string v2, "Year"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 281
    :try_start_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_4

    .line 284
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 285
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto/16 :goto_4

    .line 289
    :cond_a
    const-string v2, "Track"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 291
    :try_start_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_5 .. :try_end_5} :catch_a

    goto/16 :goto_4

    .line 294
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 295
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto/16 :goto_4

    .line 299
    :cond_b
    const-string v2, "Title"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    :try_start_6
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v1, v0, v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_6 .. :try_end_6} :catch_c

    goto/16 :goto_4

    .line 304
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 305
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public read(Ljava/io/File;)Lorg/FiioGetMusicInfo/audio/AudioFile;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 324
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ_FAILED_FILE_TOO_SMALL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 336
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ_FAILED_FILE_TOO_SMALL:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_2
    const/4 v2, 0x0

    .line 342
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    const-wide/16 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 344
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    move-result-object v0

    .line 345
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 346
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v2

    .line 347
    new-instance v3, Lorg/FiioGetMusicInfo/audio/AudioFile;

    invoke-direct {v3, p1, v0, v2}, Lorg/FiioGetMusicInfo/audio/AudioFile;-><init>(Ljava/io/File;Lorg/FiioGetMusicInfo/audio/AudioHeader;Lorg/FiioGetMusicInfo/tag/Tag;)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    :goto_0
    return-object v3

    .line 370
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ_FAILED_UNABLE_TO_CLOSE_RANDOM_ACCESS_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :catchall_0
    move-exception v0

    .line 363
    :goto_2
    if-eqz v1, :cond_3

    .line 365
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 372
    :cond_3
    :goto_3
    throw v0

    .line 354
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 356
    :goto_4
    :try_start_5
    sget-object v2, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    new-instance v2, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 370
    :catch_3
    move-exception v1

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aac/AacAudioFileReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_READ_FAILED_UNABLE_TO_CLOSE_RANDOM_ACCESS_FILE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    .line 360
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 354
    :catch_4
    move-exception v0

    goto :goto_4

    .line 350
    :catch_5
    move-exception v0

    goto :goto_1
.end method
