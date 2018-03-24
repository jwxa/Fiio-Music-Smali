.class public final Lorg/seamless/util/io/HexBin;
.super Ljava/lang/Object;
.source "HexBin.java"


# static fields
.field private static final BASELENGTH:I = 0xff

.field private static final LOOKUPLENGTH:I = 0x10

.field private static hexNumberTable:[B

.field private static lookUpHexAlphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 31
    new-array v2, v5, [B

    sput-object v2, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    .line 32
    const/16 v2, 0x10

    new-array v2, v2, [B

    sput-object v2, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    move v2, v1

    .line 35
    :goto_0
    if-ge v2, v5, :cond_0

    .line 36
    sget-object v3, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const/16 v2, 0x39

    :goto_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    .line 39
    sget-object v3, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x30

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 41
    :cond_1
    const/16 v2, 0x46

    :goto_2
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    .line 42
    sget-object v3, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x41

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 44
    :cond_2
    const/16 v2, 0x66

    :goto_3
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    .line 45
    sget-object v3, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x61

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 44
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 48
    :cond_3
    :goto_4
    if-ge v1, v0, :cond_4

    .line 49
    sget-object v2, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 50
    :cond_4
    :goto_5
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    .line 51
    sget-object v1, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 52
    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/seamless/util/io/HexBin;->encode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 83
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-char v6, v4, v2

    .line 84
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 154
    if-nez p0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/seamless/util/io/HexBin;->decode([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static decode([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    array-length v1, p0

    .line 133
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 136
    div-int/lit8 v3, v1, 0x2

    .line 137
    new-array v1, v3, [B

    .line 138
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 139
    mul-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    invoke-static {v4}, Lorg/seamless/util/io/HexBin;->isHex(B)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    invoke-static {v4}, Lorg/seamless/util/io/HexBin;->isHex(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    sget-object v4, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    mul-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x4

    sget-object v5, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    aget-byte v5, v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/seamless/util/io/HexBin;->encode([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static encode([B)[B
    .locals 6

    .prologue
    .line 117
    if-nez p0, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 126
    :cond_0
    return-object v0

    .line 119
    :cond_1
    array-length v2, p0

    .line 120
    mul-int/lit8 v0, v2, 0x2

    .line 121
    new-array v0, v0, [B

    .line 122
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 123
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 124
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/seamless/util/io/HexBin;->lookUpHexAlphabet:[B

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static isHex(B)Z
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lorg/seamless/util/io/HexBin;->hexNumberTable:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/util/io/HexBin;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 107
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/seamless/util/io/HexBin;->decode([B)[B

    move-result-object v0

    return-object v0
.end method
