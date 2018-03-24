.class final Lorg/apache/http/impl/auth/d;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"

# interfaces
.implements Lorg/apache/http/impl/auth/NTLMEngine;


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static c:[B


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v0, 0x0

    .line 63
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    sput-object v0, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    .line 79
    const-string v0, "NTLMSSP"

    const-string v1, "ASCII"

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    sput-object v1, Lorg/apache/http/impl/auth/d;->c:[B

    .line 81
    sget-object v1, Lorg/apache/http/impl/auth/d;->c:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    sget-object v1, Lorg/apache/http/impl/auth/d;->c:[B

    array-length v0, v0

    aput-byte v3, v1, v0

    .line 83
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/apache/http/impl/auth/d;->b:Ljava/lang/String;

    .line 1232
    return-void
.end method

.method static a(II)I
    .locals 2

    .prologue
    .line 1058
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static a(III)I
    .locals 2

    .prologue
    .line 1046
    and-int v0, p0, p1

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic a([BI)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lorg/apache/http/impl/auth/d;->c([BI)I

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lorg/apache/http/impl/auth/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a([BII)V
    .locals 2

    .prologue
    .line 1039
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p2

    .line 1040
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1041
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1042
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1043
    return-void
.end method

.method static synthetic a()[B
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/apache/http/impl/auth/d;->c:[B

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 442
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/auth/d;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 443
    new-instance v1, Lorg/apache/http/impl/auth/e;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/auth/e;-><init>([B)V

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/auth/e;->a([B)V

    .line 446
    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/auth/e;->a([B)V

    .line 447
    invoke-virtual {v1}, Lorg/apache/http/impl/auth/e;->a()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unicode not supported! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 1

    .prologue
    .line 322
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 323
    invoke-static {v0, p3, p4}, Lorg/apache/http/impl/auth/d;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 10

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lorg/apache/http/impl/auth/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 299
    const/4 v0, 0x4

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    const/4 v0, 0x4

    new-array v5, v0, [B

    fill-array-data v5, :array_1

    const/4 v0, 0x4

    new-array v6, v0, [B

    fill-array-data v6, :array_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v8, 0xa9730b66800L

    add-long/2addr v0, v8

    const-wide/16 v8, 0x2710

    mul-long/2addr v0, v8

    const/16 v2, 0x8

    new-array v7, v2, [B

    const/4 v2, 0x0

    :goto_0
    const/16 v8, 0x8

    if-ge v2, v8, :cond_0

    long-to-int v8, v0

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    const/16 v8, 0x8

    ushr-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v4

    array-length v1, v5

    add-int/2addr v0, v1

    array-length v1, v7

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    array-length v1, v6

    add-int/2addr v0, v1

    array-length v1, p5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v8, v4

    invoke-static {v4, v1, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v4

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x0

    array-length v4, v5

    invoke-static {v5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v5

    add-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v4, v7

    invoke-static {v7, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v7

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/16 v4, 0x8

    invoke-static {p4, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    array-length v4, v6

    invoke-static {v6, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v6

    add-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v4, p5

    invoke-static {p5, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-static {v3, p3, v0}, Lorg/apache/http/impl/auth/d;->a([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 299
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static a(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 254
    invoke-static {p0}, Lorg/apache/http/impl/auth/d;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 255
    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/d;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;[B[B)[B
    .locals 6

    .prologue
    .line 344
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/auth/d;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 359
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 360
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 361
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 362
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 364
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 365
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    invoke-static {v0, v2}, Lorg/apache/http/impl/auth/d;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    instance-of v1, v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    if-eqz v1, :cond_0

    .line 369
    check-cast v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    throw v0

    .line 370
    :cond_0
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([B[B)[B
    .locals 7

    .prologue
    .line 465
    const/16 v0, 0x15

    :try_start_0
    new-array v0, v0, [B

    .line 466
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/impl/auth/d;->d([BI)Ljava/security/Key;

    move-result-object v1

    .line 468
    const/4 v2, 0x7

    invoke-static {v0, v2}, Lorg/apache/http/impl/auth/d;->d([BI)Ljava/security/Key;

    move-result-object v2

    .line 469
    const/16 v3, 0xe

    invoke-static {v0, v3}, Lorg/apache/http/impl/auth/d;->d([BI)Ljava/security/Key;

    move-result-object v0

    .line 470
    const-string v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 471
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 472
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 473
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 474
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 475
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 476
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 477
    const/16 v3, 0x18

    new-array v3, v3, [B

    .line 478
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    const/4 v1, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v4, 0x8

    invoke-static {v0, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return-object v3

    .line 482
    :catch_0
    move-exception v0

    .line 483
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([B[B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 503
    new-instance v0, Lorg/apache/http/impl/auth/e;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/auth/e;-><init>([B)V

    .line 504
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/auth/e;->a([B)V

    .line 505
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/auth/e;->a([B)V

    .line 506
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/e;->a()[B

    move-result-object v0

    .line 507
    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 508
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    array-length v0, v0

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    return-object v1
.end method

.method static b(III)I
    .locals 2

    .prologue
    .line 1050
    and-int v0, p0, p1

    and-int v1, p0, p2

    or-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lorg/apache/http/impl/auth/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()[B
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lorg/apache/http/impl/auth/d;->d()[B

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 271
    invoke-static {p0}, Lorg/apache/http/impl/auth/d;->e(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    invoke-static {v0, p1}, Lorg/apache/http/impl/auth/d;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b([BI)[B
    .locals 4

    .prologue
    .line 45
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM authentication - buffer too small for WORD"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/apache/http/impl/auth/d;->c([BI)I

    move-result v1

    array-length v2, p0

    add-int v3, v1, v0

    if-ge v2, v3, :cond_1

    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM authentication - buffer too small for data item"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method static c(III)I
    .locals 1

    .prologue
    .line 1054
    xor-int v0, p0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private static c([BI)I
    .locals 2

    .prologue
    .line 192
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    .line 193
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM authentication - buffer too small for DWORD"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 176
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 178
    :cond_0
    return-object p0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lorg/apache/http/impl/auth/d;->e()[B

    move-result-object v0

    return-object v0
.end method

.method private static d([BI)Ljava/security/Key;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 567
    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 568
    const/4 v2, 0x7

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    const/16 v2, 0x8

    new-array v4, v2, [B

    .line 570
    aget-byte v2, v0, v1

    aput-byte v2, v4, v1

    .line 571
    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x7

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x1

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    .line 572
    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x6

    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    .line 573
    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x5

    aget-byte v5, v0, v7

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x3

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v7

    .line 574
    aget-byte v2, v0, v7

    shl-int/lit8 v2, v2, 0x4

    aget-byte v5, v0, v8

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v8

    .line 575
    const/4 v2, 0x5

    aget-byte v5, v0, v8

    shl-int/lit8 v5, v5, 0x3

    const/4 v6, 0x5

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 576
    const/4 v2, 0x6

    const/4 v5, 0x5

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x2

    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 577
    const/4 v2, 0x7

    const/4 v5, 0x6

    aget-byte v0, v0, v5

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    move v0, v1

    .line 578
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_2

    aget-byte v2, v4, v0

    ushr-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v6, v2, 0x6

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v2, 0x5

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v2, 0x4

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v2, 0x3

    xor-int/2addr v5, v6

    ushr-int/lit8 v6, v2, 0x2

    xor-int/2addr v5, v6

    ushr-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    if-eqz v2, :cond_1

    aget-byte v2, v4, v0

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    aget-byte v2, v4, v0

    and-int/lit8 v2, v2, -0x2

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    goto :goto_2

    .line 579
    :cond_2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static d()[B
    .locals 3

    .prologue
    .line 217
    sget-object v0, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "Random generator not available"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 221
    sget-object v1, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    monitor-enter v1

    .line 222
    :try_start_0
    sget-object v2, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 386
    array-length v1, v0

    const/16 v2, 0xe

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 387
    const/16 v2, 0xe

    new-array v2, v2, [B

    .line 388
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/apache/http/impl/auth/d;->d([BI)Ljava/security/Key;

    move-result-object v0

    .line 390
    const/4 v1, 0x7

    invoke-static {v2, v1}, Lorg/apache/http/impl/auth/d;->d([BI)Ljava/security/Key;

    move-result-object v1

    .line 391
    const-string v2, "KGS!@#$%"

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 392
    const-string v3, "DES/ECB/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 393
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 394
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 395
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 396
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 397
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 398
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    return-object v2

    .line 401
    :catch_0
    move-exception v0

    .line 402
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e()[B
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 229
    sget-object v0, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v1, "Random generator not available"

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    new-array v0, v3, [B

    .line 233
    sget-object v1, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v2, Lorg/apache/http/impl/auth/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 238
    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 417
    :try_start_0
    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 418
    new-instance v1, Lorg/apache/http/impl/auth/f;

    invoke-direct {v1}, Lorg/apache/http/impl/auth/f;-><init>()V

    .line 419
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/auth/f;->a([B)V

    .line 420
    invoke-virtual {v1}, Lorg/apache/http/impl/auth/f;->a()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unicode not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1298
    new-instance v0, Lorg/apache/http/impl/auth/h;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/auth/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1307
    new-instance v0, Lorg/apache/http/impl/auth/i;

    invoke-direct {v0, p5}, Lorg/apache/http/impl/auth/i;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/i;->c()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/i;->f()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/i;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/i;->e()[B

    move-result-object v8

    new-instance v0, Lorg/apache/http/impl/auth/j;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/auth/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/j;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
