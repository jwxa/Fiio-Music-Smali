.class public Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final map1:[C

.field private static final map2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v1, 0x0

    .line 11
    new-array v0, v5, [C

    sput-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    .line 16
    const/16 v0, 0x41

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 20
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 24
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    .line 28
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    .line 29
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    move v0, v1

    .line 37
    :goto_3
    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    .line 41
    :goto_4
    if-lt v1, v5, :cond_4

    .line 45
    return-void

    .line 18
    :cond_0
    sget-object v4, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 16
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_0

    .line 22
    :cond_1
    sget-object v4, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 20
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1

    .line 26
    :cond_2
    sget-object v4, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    .line 24
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2

    .line 39
    :cond_3
    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 43
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 12

    .prologue
    const/16 v2, 0x41

    const/4 v0, 0x0

    const/16 v11, 0x7f

    .line 114
    array-length v1, p0

    .line 115
    rem-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_d

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    .line 119
    :goto_0
    if-lez v6, :cond_1

    add-int/lit8 v1, v6, -0x1

    aget-char v1, p0, v1

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_0

    .line 123
    :cond_1
    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v7, v1, 0x4

    .line 124
    new-array v8, v7, [B

    move v5, v0

    .line 127
    :cond_2
    :goto_1
    if-lt v0, v6, :cond_3

    .line 159
    return-object v8

    .line 129
    :cond_3
    add-int/lit8 v1, v0, 0x1

    aget-char v9, p0, v0

    .line 130
    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    .line 131
    const/16 v1, 0xd

    if-ne v9, v1, :cond_4

    const/16 v1, 0xa

    if-eq v10, v1, :cond_2

    .line 132
    :cond_4
    if-ge v0, v6, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    .line 133
    :goto_2
    if-ge v0, v6, :cond_7

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    .line 134
    :goto_3
    if-gt v9, v11, :cond_5

    if-gt v10, v11, :cond_5

    if-gt v4, v11, :cond_5

    if-le v0, v11, :cond_8

    .line 136
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v4, v2

    .line 132
    goto :goto_2

    :cond_7
    move v3, v0

    move v0, v2

    .line 133
    goto :goto_3

    .line 138
    :cond_8
    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    aget-byte v1, v1, v9

    .line 139
    sget-object v9, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    aget-byte v9, v9, v10

    .line 140
    sget-object v10, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    aget-byte v4, v10, v4

    .line 141
    sget-object v10, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map2:[B

    aget-byte v0, v10, v0

    .line 142
    if-ltz v1, :cond_9

    if-ltz v9, :cond_9

    if-ltz v4, :cond_9

    if-gez v0, :cond_a

    .line 144
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_a
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v10, v1

    .line 147
    and-int/lit8 v1, v9, 0xf

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v9, v4, 0x2

    or-int/2addr v9, v1

    .line 148
    and-int/lit8 v1, v4, 0x3

    shl-int/lit8 v1, v1, 0x6

    or-int v4, v1, v0

    .line 149
    add-int/lit8 v1, v5, 0x1

    int-to-byte v0, v10

    aput-byte v0, v8, v5

    .line 150
    if-ge v1, v7, :cond_c

    .line 152
    add-int/lit8 v0, v1, 0x1

    int-to-byte v5, v9

    aput-byte v5, v8, v1

    .line 154
    :goto_4
    if-ge v0, v7, :cond_b

    .line 156
    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v4

    aput-byte v4, v8, v0

    move v5, v1

    move v0, v3

    goto :goto_1

    :cond_b
    move v5, v0

    move v0, v3

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v6, v1

    goto/16 :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 13

    .prologue
    const/16 v3, 0x3d

    const/4 v1, 0x0

    .line 68
    array-length v6, p0

    .line 69
    mul-int/lit8 v0, v6, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v7, v0, 0x3

    .line 70
    add-int/lit8 v0, v6, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 71
    new-array v8, v0, [C

    move v5, v1

    move v2, v1

    .line 74
    :goto_0
    if-lt v2, v6, :cond_0

    .line 90
    return-object v8

    .line 76
    :cond_0
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v9, v2, 0xff

    .line 77
    if-ge v0, v6, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    .line 78
    :goto_1
    if-ge v0, v6, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 79
    :goto_2
    ushr-int/lit8 v10, v9, 0x2

    .line 80
    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    .line 81
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    .line 82
    and-int/lit8 v11, v0, 0x3f

    .line 83
    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v10, v12, v10

    aput-char v10, v8, v5

    .line 84
    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v9, v10, v9

    aput-char v9, v8, v0

    .line 85
    if-ge v5, v7, :cond_3

    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v0, v0, v4

    :goto_3
    aput-char v0, v8, v5

    .line 86
    add-int/lit8 v4, v5, 0x1

    .line 87
    if-ge v4, v7, :cond_4

    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v0, v0, v11

    :goto_4
    aput-char v0, v8, v4

    .line 88
    add-int/lit8 v0, v4, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v4, v1

    .line 77
    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    .line 78
    goto :goto_2

    :cond_3
    move v0, v3

    .line 85
    goto :goto_3

    :cond_4
    move v0, v3

    .line 87
    goto :goto_4
.end method
