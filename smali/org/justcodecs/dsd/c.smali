.class final Lorg/justcodecs/dsd/c;
.super Ljava/lang/Object;
.source "DSTDecoder.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/4 v0, 0x1

    iput v0, p0, Lorg/justcodecs/dsd/c;->a:I

    .line 418
    return-void
.end method


# virtual methods
.method final a(I[BII)B
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 460
    iget v2, p0, Lorg/justcodecs/dsd/c;->a:I

    if-ne v2, v0, :cond_0

    .line 461
    iput v1, p0, Lorg/justcodecs/dsd/c;->a:I

    .line 462
    const/16 v2, 0xfff

    iput v2, p0, Lorg/justcodecs/dsd/c;->c:I

    .line 463
    iput v1, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 464
    iput v0, p0, Lorg/justcodecs/dsd/c;->d:I

    :goto_0
    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 472
    :cond_0
    if-nez p4, :cond_7

    .line 474
    iget v2, p0, Lorg/justcodecs/dsd/c;->c:I

    shr-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/justcodecs/dsd/c;->c:I

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    mul-int/2addr v2, p1

    .line 476
    iget v3, p0, Lorg/justcodecs/dsd/c;->c:I

    sub-int/2addr v3, v2

    .line 477
    iget v4, p0, Lorg/justcodecs/dsd/c;->b:I

    if-lt v4, v3, :cond_4

    .line 479
    iget v1, p0, Lorg/justcodecs/dsd/c;->b:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 480
    iput v2, p0, Lorg/justcodecs/dsd/c;->c:I

    .line 485
    :goto_1
    iget v1, p0, Lorg/justcodecs/dsd/c;->c:I

    const/16 v2, 0x800

    if-lt v1, v2, :cond_5

    .line 510
    :cond_1
    :goto_2
    return v0

    .line 465
    :cond_2
    iget v2, p0, Lorg/justcodecs/dsd/c;->b:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 466
    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    if-ge v2, p3, :cond_3

    .line 467
    iget v2, p0, Lorg/justcodecs/dsd/c;->b:I

    iget v3, p0, Lorg/justcodecs/dsd/c;->d:I

    aget-byte v3, p2, v3

    or-int/2addr v2, v3

    iput v2, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 464
    :cond_3
    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/c;->d:I

    goto :goto_0

    .line 483
    :cond_4
    iput v3, p0, Lorg/justcodecs/dsd/c;->c:I

    move v0, v1

    .line 485
    goto :goto_1

    .line 486
    :cond_5
    iget v1, p0, Lorg/justcodecs/dsd/c;->c:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/justcodecs/dsd/c;->c:I

    .line 490
    iget v1, p0, Lorg/justcodecs/dsd/c;->b:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 491
    iget v1, p0, Lorg/justcodecs/dsd/c;->d:I

    if-ge v1, p3, :cond_6

    .line 492
    iget v1, p0, Lorg/justcodecs/dsd/c;->b:I

    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    aget-byte v2, p2, v2

    or-int/2addr v1, v2

    iput v1, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 494
    :cond_6
    iget v1, p0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/justcodecs/dsd/c;->d:I

    goto :goto_1

    .line 497
    :cond_7
    iput v0, p0, Lorg/justcodecs/dsd/c;->a:I

    .line 499
    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v3, p3, -0x7

    if-lt v2, v3, :cond_1

    .line 502
    :goto_3
    if-nez v1, :cond_8

    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    if-lt v2, p3, :cond_9

    :cond_8
    move v0, v1

    goto :goto_2

    .line 503
    :cond_9
    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    aget-byte v2, p2, v2

    if-eqz v2, :cond_a

    move v1, v0

    .line 506
    :cond_a
    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/c;->d:I

    goto :goto_3
.end method

.method final a(I[BI)I
    .locals 4

    .prologue
    .line 555
    iget v0, p0, Lorg/justcodecs/dsd/c;->c:I

    shr-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/justcodecs/dsd/c;->c:I

    shr-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    mul-int v1, v0, p1

    .line 557
    iget v0, p0, Lorg/justcodecs/dsd/c;->c:I

    sub-int v2, v0, v1

    .line 558
    iget v0, p0, Lorg/justcodecs/dsd/c;->b:I

    if-lt v0, v2, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 560
    iget v3, p0, Lorg/justcodecs/dsd/c;->b:I

    sub-int v2, v3, v2

    iput v2, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 561
    iput v1, p0, Lorg/justcodecs/dsd/c;->c:I

    .line 566
    :goto_0
    iget v1, p0, Lorg/justcodecs/dsd/c;->c:I

    const/16 v2, 0x800

    if-lt v1, v2, :cond_1

    .line 578
    return v0

    .line 563
    :cond_0
    const/4 v0, 0x1

    .line 564
    iput v2, p0, Lorg/justcodecs/dsd/c;->c:I

    goto :goto_0

    .line 567
    :cond_1
    iget v1, p0, Lorg/justcodecs/dsd/c;->c:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/justcodecs/dsd/c;->c:I

    .line 570
    iget v1, p0, Lorg/justcodecs/dsd/c;->b:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 571
    iget v1, p0, Lorg/justcodecs/dsd/c;->d:I

    if-ge v1, p3, :cond_2

    .line 572
    iget v1, p0, Lorg/justcodecs/dsd/c;->b:I

    iget v2, p0, Lorg/justcodecs/dsd/c;->d:I

    aget-byte v2, p2, v2

    or-int/2addr v1, v2

    iput v1, p0, Lorg/justcodecs/dsd/c;->b:I

    .line 575
    :cond_2
    iget v1, p0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/justcodecs/dsd/c;->d:I

    goto :goto_0
.end method
