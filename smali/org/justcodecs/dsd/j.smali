.class final Lorg/justcodecs/dsd/j;
.super Ljava/lang/Object;
.source "DSTDecoder.java"


# static fields
.field static f:[I


# instance fields
.field a:[B

.field b:I

.field c:I

.field d:I

.field e:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 337
    const/16 v0, 0x9

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    aput v3, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0xf

    aput v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x7f

    aput v1, v0, v3

    const/16 v1, 0x8

    const/16 v2, 0xff

    aput v2, v0, v1

    sput-object v0, Lorg/justcodecs/dsd/j;->f:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(I)J
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 342
    iget v0, p0, Lorg/justcodecs/dsd/j;->d:I

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lorg/justcodecs/dsd/j;->a:[B

    iget v1, p0, Lorg/justcodecs/dsd/j;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/j;->c:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/justcodecs/dsd/j;->e:B

    .line 345
    iget v0, p0, Lorg/justcodecs/dsd/j;->c:I

    iget v1, p0, Lorg/justcodecs/dsd/j;->b:I

    if-le v0, v1, :cond_0

    .line 346
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "EOF"

    invoke-direct {v0, v1, v7}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 348
    :cond_0
    iput v8, p0, Lorg/justcodecs/dsd/j;->d:I

    .line 350
    :cond_1
    iget v0, p0, Lorg/justcodecs/dsd/j;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/justcodecs/dsd/j;->d:I

    .line 352
    iget-byte v0, p0, Lorg/justcodecs/dsd/j;->e:B

    iget v1, p0, Lorg/justcodecs/dsd/j;->d:I

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 385
    :goto_0
    return-wide v0

    .line 355
    :cond_2
    const-wide/16 v2, 0x0

    move v1, p1

    .line 356
    :goto_1
    if-gtz v1, :cond_3

    move-wide v0, v2

    .line 385
    goto :goto_0

    .line 359
    :cond_3
    iget v0, p0, Lorg/justcodecs/dsd/j;->d:I

    if-nez v0, :cond_5

    .line 360
    iget-object v0, p0, Lorg/justcodecs/dsd/j;->a:[B

    iget v4, p0, Lorg/justcodecs/dsd/j;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/justcodecs/dsd/j;->c:I

    aget-byte v0, v0, v4

    iput-byte v0, p0, Lorg/justcodecs/dsd/j;->e:B

    .line 362
    iget v0, p0, Lorg/justcodecs/dsd/j;->c:I

    iget v4, p0, Lorg/justcodecs/dsd/j;->b:I

    if-le v0, v4, :cond_4

    .line 363
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "EOF"

    invoke-direct {v0, v1, v7}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 365
    :cond_4
    iput v8, p0, Lorg/justcodecs/dsd/j;->d:I

    .line 368
    :cond_5
    iget v0, p0, Lorg/justcodecs/dsd/j;->d:I

    if-ge v0, v1, :cond_6

    .line 369
    iget v0, p0, Lorg/justcodecs/dsd/j;->d:I

    .line 373
    :goto_2
    iget v4, p0, Lorg/justcodecs/dsd/j;->d:I

    sub-int/2addr v4, v0

    .line 374
    sget-object v5, Lorg/justcodecs/dsd/j;->f:[I

    aget v5, v5, v0

    shl-int/2addr v5, v4

    .line 376
    sub-int v6, v1, v0

    sub-int v4, v6, v4

    .line 377
    if-gtz v4, :cond_7

    .line 378
    iget-byte v6, p0, Lorg/justcodecs/dsd/j;->e:B

    and-int/2addr v5, v6

    neg-int v4, v4

    shr-int v4, v5, v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 381
    :goto_3
    sub-int/2addr v1, v0

    .line 382
    iget v4, p0, Lorg/justcodecs/dsd/j;->d:I

    sub-int v0, v4, v0

    iput v0, p0, Lorg/justcodecs/dsd/j;->d:I

    goto :goto_1

    :cond_6
    move v0, v1

    .line 371
    goto :goto_2

    .line 380
    :cond_7
    iget-byte v6, p0, Lorg/justcodecs/dsd/j;->e:B

    and-int/2addr v5, v6

    shl-int v4, v5, v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    goto :goto_3
.end method


# virtual methods
.method final a(I)B
    .locals 3

    .prologue
    .line 226
    if-lez p1, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lorg/justcodecs/dsd/j;->c(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_0
    if-nez p1, :cond_1

    .line 230
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "EOD"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final a()S
    .locals 2

    .prologue
    .line 309
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/justcodecs/dsd/j;->c(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 312
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 313
    add-int/lit16 v0, v0, -0x200

    int-to-short v0, v0

    .line 316
    :cond_0
    return v0
.end method

.method final a([BI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 204
    iput p2, p0, Lorg/justcodecs/dsd/j;->b:I

    .line 205
    iput-object p1, p0, Lorg/justcodecs/dsd/j;->a:[B

    .line 206
    iput v0, p0, Lorg/justcodecs/dsd/j;->d:I

    iput v0, p0, Lorg/justcodecs/dsd/j;->c:I

    iput-byte v0, p0, Lorg/justcodecs/dsd/j;->e:B

    .line 207
    return-void
.end method

.method final b(I)I
    .locals 3

    .prologue
    .line 252
    if-lez p1, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lorg/justcodecs/dsd/j;->c(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 256
    :goto_0
    return v0

    .line 255
    :cond_0
    if-nez p1, :cond_1

    .line 256
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "EOD"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final b()J
    .locals 4

    .prologue
    .line 403
    iget v0, p0, Lorg/justcodecs/dsd/j;->c:I

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/justcodecs/dsd/j;->d:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
