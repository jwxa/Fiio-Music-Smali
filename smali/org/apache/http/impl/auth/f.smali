.class final Lorg/apache/http/impl/auth/f;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    const v0, 0x67452301

    iput v0, p0, Lorg/apache/http/impl/auth/f;->a:I

    .line 1070
    const v0, -0x10325477

    iput v0, p0, Lorg/apache/http/impl/auth/f;->b:I

    .line 1071
    const v0, -0x67452302

    iput v0, p0, Lorg/apache/http/impl/auth/f;->c:I

    .line 1072
    const v0, 0x10325476

    iput v0, p0, Lorg/apache/http/impl/auth/f;->d:I

    .line 1073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/auth/f;->e:J

    .line 1074
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/f;->f:[B

    .line 1077
    return-void
.end method


# virtual methods
.method final a([B)V
    .locals 11

    .prologue
    .line 1083
    iget-wide v0, p0, Lorg/apache/http/impl/auth/f;->e:J

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v1, v0

    .line 1084
    const/4 v0, 0x0

    .line 1085
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/apache/http/impl/auth/f;->f:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 1089
    iget-object v2, p0, Lorg/apache/http/impl/auth/f;->f:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    .line 1090
    iget-object v3, p0, Lorg/apache/http/impl/auth/f;->f:[B

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    iget-wide v4, p0, Lorg/apache/http/impl/auth/f;->e:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/auth/f;->e:J

    .line 1092
    const/4 v1, 0x0

    .line 1093
    add-int/2addr v0, v2

    .line 1094
    const/16 v2, 0x10

    new-array v3, v2, [I

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/auth/f;->f:[B

    mul-int/lit8 v5, v2, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lorg/apache/http/impl/auth/f;->f:[B

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/http/impl/auth/f;->f:[B

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/http/impl/auth/f;->f:[B

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v4, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v5, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v6, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0x13

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x4

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x6

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0x13

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x8

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x9

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xa

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0x13

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xc

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xd

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xe

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->a(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xf

    aget v8, v3, v8

    add-int/2addr v7, v8

    const/16 v8, 0x13

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x4

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x8

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xc

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x9

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xd

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x6

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xa

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xe

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/4 v8, 0x5

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->b(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xf

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x5a827999

    add-int/2addr v7, v8

    const/16 v8, 0xd

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x8

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x4

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xc

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xa

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x6

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xe

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x9

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xd

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->d:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x3

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xb

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0x9

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->b:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x7

    aget v8, v3, v8

    add-int/2addr v7, v8

    const v8, 0x6ed9eba1

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v7

    iput v7, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v7, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v8, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v9, p0, Lorg/apache/http/impl/auth/f;->d:I

    iget v10, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v8, v9, v10}, Lorg/apache/http/impl/auth/d;->c(III)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0xf

    aget v3, v3, v8

    add-int/2addr v3, v7

    const v7, 0x6ed9eba1

    add-int/2addr v3, v7

    const/16 v7, 0xf

    invoke-static {v3, v7}, Lorg/apache/http/impl/auth/d;->a(II)I

    move-result v3

    iput v3, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v3, p0, Lorg/apache/http/impl/auth/f;->a:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/auth/f;->a:I

    iget v2, p0, Lorg/apache/http/impl/auth/f;->b:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/http/impl/auth/f;->b:I

    iget v2, p0, Lorg/apache/http/impl/auth/f;->c:I

    add-int/2addr v2, v5

    iput v2, p0, Lorg/apache/http/impl/auth/f;->c:I

    iget v2, p0, Lorg/apache/http/impl/auth/f;->d:I

    add-int/2addr v2, v6

    iput v2, p0, Lorg/apache/http/impl/auth/f;->d:I

    goto/16 :goto_0

    .line 1099
    :cond_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1100
    array-length v2, p1

    sub-int/2addr v2, v0

    .line 1101
    iget-object v3, p0, Lorg/apache/http/impl/auth/f;->f:[B

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    iget-wide v0, p0, Lorg/apache/http/impl/auth/f;->e:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/impl/auth/f;->e:J

    .line 1103
    :cond_2
    return-void
.end method

.method final a()[B
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x0

    .line 1110
    iget-wide v0, p0, Lorg/apache/http/impl/auth/f;->e:J

    const-wide/16 v4, 0x3f

    and-long/2addr v0, v4

    long-to-int v0, v0

    .line 1111
    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    rsub-int/lit8 v0, v0, 0x38

    .line 1112
    :goto_0
    add-int/lit8 v1, v0, 0x8

    new-array v3, v1, [B

    .line 1115
    const/16 v1, -0x80

    aput-byte v1, v3, v2

    move v1, v2

    .line 1117
    :goto_1
    if-ge v1, v10, :cond_1

    .line 1118
    add-int v4, v0, v1

    iget-wide v6, p0, Lorg/apache/http/impl/auth/f;->e:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v5, v1, 0x8

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1111
    :cond_0
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    .line 1122
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/f;->a([B)V

    .line 1125
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1126
    iget v1, p0, Lorg/apache/http/impl/auth/f;->a:I

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/d;->a([BII)V

    .line 1127
    iget v1, p0, Lorg/apache/http/impl/auth/f;->b:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/d;->a([BII)V

    .line 1128
    iget v1, p0, Lorg/apache/http/impl/auth/f;->c:I

    invoke-static {v0, v1, v10}, Lorg/apache/http/impl/auth/d;->a([BII)V

    .line 1129
    iget v1, p0, Lorg/apache/http/impl/auth/f;->d:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/d;->a([BII)V

    .line 1130
    return-object v0
.end method
