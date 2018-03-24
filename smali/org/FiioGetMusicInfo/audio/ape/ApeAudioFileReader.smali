.class public Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;
.super Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;
.source "ApeAudioFileReader.java"


# instance fields
.field final APE_EXTRADATA_SIZE:I

.field final APE_MAX_VERSION:I

.field final APE_MIN_VERSION:I

.field final MAC_FORMAT_FLAG_24_BIT:I

.field final MAC_FORMAT_FLAG_8_BIT:I

.field final MAC_FORMAT_FLAG_CRC:I

.field final MAC_FORMAT_FLAG_CREATE_WAV_HEADER:I

.field final MAC_FORMAT_FLAG_HAS_PEAK_LEVEL:I

.field final MAC_FORMAT_FLAG_HAS_SEEK_ELEMENTS:I

.field final UINT_MAX:J

.field headSeekLength:I

.field tagSeek:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AudioFileReader;-><init>()V

    .line 27
    const/16 v0, 0xed8

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->APE_MIN_VERSION:I

    .line 28
    const/16 v0, 0x1068

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->APE_MAX_VERSION:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->UINT_MAX:J

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->MAC_FORMAT_FLAG_8_BIT:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->MAC_FORMAT_FLAG_CRC:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->MAC_FORMAT_FLAG_HAS_PEAK_LEVEL:I

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->MAC_FORMAT_FLAG_24_BIT:I

    .line 35
    const/16 v0, 0x10

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->MAC_FORMAT_FLAG_HAS_SEEK_ELEMENTS:I

    .line 36
    const/16 v0, 0x20

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->MAC_FORMAT_FLAG_CREATE_WAV_HEADER:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->APE_EXTRADATA_SIZE:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->headSeekLength:I

    .line 22
    return-void
.end method

.method private readItemValueIntoApetag(Ljava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 398
    const-string v0, "Album"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 404
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_0

    .line 408
    :cond_1
    const-string v0, "Artist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :try_start_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 413
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 414
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_0

    .line 418
    :cond_2
    const-string v0, "Genre"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    :try_start_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 423
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 424
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_0

    .line 428
    :cond_3
    const-string v0, "Cover Art "

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    :try_start_3
    const-string v0, "Cover Art "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setImage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 437
    :catch_6
    move-exception v0

    const-string v0, "long"

    const-string v1, "ape\u6b4c\u66f2\u56fe\u7247\u8bfb\u53d6\u5185\u5b58\u6ea2\u51fa---apeAudioFileReader.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_4
    const/16 v0, 0xa

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setImage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 439
    :cond_5
    const-string v0, "Year"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 441
    :try_start_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_0

    .line 444
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 445
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto :goto_0

    .line 449
    :cond_6
    const-string v0, "Track"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    :try_start_6
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_6 .. :try_end_6} :catch_a

    goto/16 :goto_0

    .line 454
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 455
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto/16 :goto_0

    .line 459
    :cond_7
    const-string v0, "e7a29fe78987"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 461
    :try_start_7
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    goto/16 :goto_0

    .line 464
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 465
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto/16 :goto_0

    .line 470
    :catch_d
    move-exception v0

    const-string v0, "long"

    const-string v1, "ape disc_no \u5904\u7406\u51fa\u9519"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 472
    :cond_8
    const-string v0, "Title"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :try_start_8
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p3, v0, p1}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/FiioGetMusicInfo/tag/KeyNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException; {:try_start_8 .. :try_end_8} :catch_f

    goto/16 :goto_0

    .line 477
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 478
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method avio_rl16(Ljava/io/RandomAccessFile;)S
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 64
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 71
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method avio_rl32(Ljava/io/RandomAccessFile;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    const/4 v1, 0x4

    :try_start_0
    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 50
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 55
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 81
    new-instance v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;

    invoke-direct {v3}, Lorg/FiioGetMusicInfo/audio/ape/APEContext;-><init>()V

    .line 86
    new-instance v2, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;-><init>()V

    .line 90
    invoke-static {p1, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 91
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    .line 93
    const-string v5, "MAC "

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    const-string v5, "ID3"

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 97
    invoke-static {p1, v6}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4, v0, v7}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v4

    .line 98
    long-to-int v4, v4

    new-array v4, v4, [B

    .line 99
    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 100
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1([B)Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string v5, "4d4143"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 102
    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v5, v4, :cond_0

    move-object v0, v1

    .line 227
    :goto_0
    return-object v0

    .line 107
    :cond_0
    div-int/lit8 v4, v5, 0x2

    add-int/lit8 v4, v4, 0xe

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v4

    .line 128
    const/16 v5, 0xed8

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1068

    if-le v4, v5, :cond_5

    :cond_2
    move-object v0, v1

    .line 130
    goto :goto_0

    .line 110
    :cond_3
    iget v4, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->headSeekLength:I

    invoke-static {p1, v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 111
    iget v5, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->headSeekLength:I

    new-array v5, v5, [B

    .line 112
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-static {v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1([B)Ljava/lang/String;

    move-result-object v4

    .line 114
    const-string v5, "4d4143"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 115
    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v5, v4, :cond_4

    move-object v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_4
    div-int/lit8 v4, v5, 0x2

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    .line 133
    :cond_5
    const/16 v1, 0xf8c

    if-lt v4, v1, :cond_8

    .line 134
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v1

    iput-short v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->padding1:S

    .line 135
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    .line 136
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    .line 137
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    .line 138
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavheaderlength:I

    .line 139
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength:I

    .line 140
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength_high:I

    .line 141
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v1

    iput v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavtaillength:I

    .line 144
    :goto_2
    iget-object v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->md5:[B

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 152
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    const/16 v1, 0x34

    if-le v0, v1, :cond_6

    .line 154
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    add-int/lit8 v0, v0, -0x34

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 158
    :cond_6
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->compressiontype:S

    .line 159
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    .line 160
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->blocksperframe:I

    .line 161
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->finalframeblocks:I

    .line 162
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalframes:I

    .line 163
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    .line 164
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->channels:S

    .line 165
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    .line 167
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->finalframeblocks:I

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->blocksperframe:I

    iget v4, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalframes:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    .line 168
    invoke-virtual {v2, v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    .line 169
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 170
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 225
    :goto_3
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    add-int/2addr v0, v1

    .line 226
    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    add-int/2addr v0, v1

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavheaderlength:I

    add-int/2addr v0, v1

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->audiodatalength:I

    add-int/2addr v0, v1

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavtaillength:I

    add-int/2addr v0, v1

    .line 225
    iput v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    move-object v0, v2

    .line 227
    goto/16 :goto_0

    .line 146
    :cond_7
    iget-object v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->md5:[B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    aput-byte v4, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 172
    :cond_8
    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->descriptorlength:I

    .line 173
    const/16 v0, 0x20

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    .line 175
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->compressiontype:S

    .line 176
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    .line 177
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl16(Ljava/io/RandomAccessFile;)S

    move-result v0

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->channels:S

    .line 178
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    .line 179
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavheaderlength:I

    .line 180
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->wavtaillength:I

    .line 181
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->totalframes:I

    .line 182
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->finalframeblocks:I

    .line 185
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 188
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    .line 191
    :cond_9
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 192
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    .line 193
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->headerlength:I

    .line 195
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->seektablelength:I

    .line 201
    :cond_a
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 203
    const/16 v0, 0x8

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    .line 214
    :goto_4
    iget v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    .line 215
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitsPerSample(I)V

    .line 216
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->channels:S

    iget-short v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    mul-int/2addr v0, v1

    iget v1, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setBitRate(I)V

    .line 217
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    iget-short v4, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    iget v5, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->samplerate:I

    mul-int/2addr v4, v5

    iget-short v5, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->channels:S

    mul-int/2addr v4, v5

    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-double v0, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lorg/FiioGetMusicInfo/audio/generic/GenericAudioHeader;->setPreciseLength(D)V

    goto/16 :goto_3

    .line 205
    :cond_b
    iget-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->formatflags:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    .line 207
    const/16 v0, 0x18

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    goto :goto_4

    .line 211
    :cond_c
    const/16 v0, 0x10

    iput-short v0, v3, Lorg/FiioGetMusicInfo/audio/ape/APEContext;->bps:S

    goto :goto_4
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 300
    new-instance v2, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;-><init>()V

    .line 301
    new-instance v4, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;

    invoke-direct {v4}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;-><init>()V

    .line 303
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 304
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "seek:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p1, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 308
    invoke-static {p1, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 309
    invoke-static {v0, v9, v10}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    .line 310
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "000000"

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    int-to-long v6, v2

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x20

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    move-object v0, v3

    .line 393
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 319
    invoke-static {p1, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 320
    invoke-static {p1, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 321
    invoke-static {v0, v9, v10}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v1, v0

    .line 322
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_1
    const-string v2, "41474558"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v4

    .line 393
    goto :goto_0

    .line 325
    :cond_2
    const-string v2, ""

    .line 326
    new-array v5, v11, [B

    .line 327
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 328
    const-string v0, ""

    .line 329
    :goto_2
    aget-byte v6, v5, v9

    if-nez v6, :cond_4

    .line 334
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1e

    if-gt v5, v6, :cond_3

    const v5, 0x989680

    if-le v1, v5, :cond_5

    :cond_3
    move-object v0, v3

    .line 335
    goto :goto_0

    .line 330
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_2

    .line 338
    :cond_5
    invoke-static {p1, v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 339
    new-array v1, v1, [B

    .line 340
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 341
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 343
    invoke-direct {p0, v5, v2, v4, v0}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->readItemValueIntoApetag(Ljava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;Ljava/lang/String;)V

    .line 345
    invoke-static {p1, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 346
    invoke-static {p1, v8}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferLE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 347
    invoke-static {v0, v9, v10}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v1, v0

    .line 348
    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 350
    :cond_6
    const-string v1, "41474558"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 351
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v5, p0, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->tagSeek:I

    int-to-long v6, v5

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x40

    cmp-long v0, v0, v6

    if-gez v0, :cond_7

    move-object v0, v3

    .line 352
    goto/16 :goto_0

    .line 356
    :cond_7
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 357
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v0

    iput v0, v2, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagItemNum:I

    .line 359
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 361
    :goto_3
    iget v0, v2, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagItemNum:I

    if-lez v0, :cond_1

    .line 363
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->avio_rl32(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 364
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 367
    const-string v1, ""

    .line 368
    new-array v5, v11, [B

    .line 369
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 370
    const-string v0, ""

    .line 371
    :goto_4
    aget-byte v6, v5, v9

    if-nez v6, :cond_8

    .line 378
    invoke-static {p1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->readFileDataIntoBufferBE(Ljava/io/RandomAccessFile;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 379
    new-array v3, v3, [B

    .line 380
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 382
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 386
    invoke-direct {p0, v5, v1, v4, v0}, Lorg/FiioGetMusicInfo/audio/ape/ApeAudioFileReader;->readItemValueIntoApetag(Ljava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;Ljava/lang/String;)V

    .line 387
    iget v0, v2, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagItemNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lorg/FiioGetMusicInfo/audio/ape/APETagContext;->tagItemNum:I

    goto :goto_3

    .line 372
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->toHexString1([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    goto :goto_4

    .line 390
    :cond_9
    const-string v0, "long"

    const-string v1, "APE TAG READ ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 391
    goto/16 :goto_0
.end method
