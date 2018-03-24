.class public Lorg/seamless/util/io/MD5Crypt;
.super Ljava/lang/Object;
.source "MD5Crypt.java"


# static fields
.field private static final SALTCHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

.field private static final itoa64:Ljava/lang/String; = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bytes2u(B)I
    .locals 1

    .prologue
    .line 59
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static final clearbits([B)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 50
    aput-byte v1, p0, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static final crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 73
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x42780000    # 62.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 75
    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$1$"

    invoke-static {p0, v0, v1}, Lorg/seamless/util/io/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/seamless/util/io/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/16 v1, 0x10

    const/4 v6, 0x4

    const/4 v3, 0x0

    .line 113
    :try_start_0
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 114
    const-string v0, "md5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_0
    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 131
    const/16 v2, 0x24

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_2

    .line 135
    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_4

    .line 156
    if-le v2, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 155
    add-int/lit8 v2, v2, -0x10

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 118
    const/4 v0, 0x0

    .line 251
    :goto_2
    return-object v0

    :cond_3
    move v0, v2

    .line 156
    goto :goto_1

    .line 163
    :cond_4
    invoke-static {v5}, Lorg/seamless/util/io/MD5Crypt;->clearbits([B)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_3
    if-eqz v0, :cond_6

    .line 168
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_5

    .line 169
    invoke-virtual {v4, v5, v3, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 167
    :goto_4
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 171
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2, v3, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4

    .line 175
    :cond_6
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    move-object v2, v0

    move v0, v3

    .line 183
    :goto_5
    const/16 v4, 0x3e8

    if-ge v0, v4, :cond_b

    .line 185
    :try_start_1
    const-string v4, "md5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 191
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_9

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 197
    :goto_6
    rem-int/lit8 v5, v0, 0x3

    if-eqz v5, :cond_7

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    :cond_7
    rem-int/lit8 v5, v0, 0x7

    if-eqz v5, :cond_8

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 205
    :cond_8
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_a

    .line 206
    invoke-virtual {v4, v2, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 211
    :goto_7
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 188
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    .line 194
    :cond_9
    invoke-virtual {v4, v2, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_6

    .line 208
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_7

    .line 216
    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    aget-byte v1, v2, v3

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/16 v3, 0xc

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    or-int/2addr v1, v3

    int-to-long v4, v1

    .line 227
    invoke-static {v4, v5, v6}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    aget-byte v1, v2, v7

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/16 v3, 0xd

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    or-int/2addr v1, v3

    int-to-long v4, v1

    .line 231
    invoke-static {v4, v5, v6}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const/4 v1, 0x2

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    aget-byte v3, v2, v8

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/16 v3, 0xe

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    or-int/2addr v1, v3

    int-to-long v4, v1

    .line 235
    invoke-static {v4, v5, v6}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const/4 v1, 0x3

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/16 v3, 0x9

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/16 v3, 0xf

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    or-int/2addr v1, v3

    int-to-long v4, v1

    .line 239
    invoke-static {v4, v5, v6}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    aget-byte v1, v2, v6

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/16 v3, 0xa

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    invoke-static {v3}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v3

    or-int/2addr v1, v3

    int-to-long v4, v1

    .line 243
    invoke-static {v4, v5, v6}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const/16 v1, 0xb

    aget-byte v1, v2, v1

    invoke-static {v1}, Lorg/seamless/util/io/MD5Crypt;->bytes2u(B)I

    move-result v1

    int-to-long v4, v1

    .line 246
    const/4 v1, 0x2

    invoke-static {v4, v5, v1}, Lorg/seamless/util/io/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-static {v2}, Lorg/seamless/util/io/MD5Crypt;->clearbits([B)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, p1}, Lorg/seamless/util/io/MD5Crypt;->isEqual([CLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEqual([CLjava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 259
    const-string v0, "\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 260
    array-length v2, v0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 263
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    const/4 v5, 0x2

    aget-object v5, v0, v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "$"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lorg/seamless/util/io/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 265
    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    .line 266
    :cond_2
    if-ne v4, v5, :cond_0

    move v1, v3

    goto :goto_0

    .line 267
    :cond_3
    array-length v0, v4

    array-length v2, v5

    if-ne v0, v2, :cond_5

    move v0, v1

    move v2, v3

    .line 269
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_6

    if-eqz v2, :cond_6

    .line 270
    aget-char v2, v4, v0

    aget-char v6, v5, v0

    if-ne v2, v6, :cond_4

    move v2, v3

    .line 269
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 270
    goto :goto_2

    :cond_5
    move v2, v1

    :cond_6
    move v1, v2

    .line 271
    goto :goto_0
.end method

.method private static final to64(JI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 41
    const-string v1, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    const-wide/16 v2, 0x3f

    and-long/2addr v2, p0

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    const/4 v1, 0x6

    ushr-long/2addr p0, v1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
