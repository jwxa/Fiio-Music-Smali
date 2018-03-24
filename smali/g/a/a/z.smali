.class final Lg/a/a/z;
.super Ljava/io/InputStream;
.source "SSLStreams.java"


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:Z

.field c:Z

.field d:Z

.field e:[B

.field final synthetic f:Lg/a/a/v;


# direct methods
.method constructor <init>(Lg/a/a/v;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 477
    iput-object p1, p0, Lg/a/a/z;->f:Lg/a/a/v;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 470
    iput-boolean v0, p0, Lg/a/a/z;->b:Z

    .line 473
    iput-boolean v0, p0, Lg/a/a/z;->c:Z

    .line 475
    iput-boolean v1, p0, Lg/a/a/z;->d:Z

    .line 561
    new-array v0, v1, [B

    iput-object v0, p0, Lg/a/a/z;->e:[B

    .line 478
    sget-object v0, Lg/a/a/x;->b:Lg/a/a/x;

    invoke-static {p1, v0}, Lg/a/a/v;->a(Lg/a/a/v;Lg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    .line 479
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/z;->c:Z

    .line 554
    iget-object v0, p0, Lg/a/a/z;->f:Lg/a/a/v;

    iget-object v0, v0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 555
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v0, p0, Lg/a/a/z;->e:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lg/a/a/z;->read([BII)I

    move-result v0

    .line 565
    if-nez v0, :cond_0

    .line 566
    const/4 v0, -0x1

    .line 568
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lg/a/a/z;->e:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 558
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lg/a/a/z;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 482
    iget-boolean v0, p0, Lg/a/a/z;->b:Z

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SSL stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-boolean v0, p0, Lg/a/a/z;->c:Z

    if-eqz v0, :cond_1

    .line 509
    :goto_0
    return v2

    .line 489
    :cond_1
    iget-boolean v0, p0, Lg/a/a/z;->d:Z

    if-nez v0, :cond_7

    .line 490
    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 491
    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lg/a/a/z;->d:Z

    move v0, v3

    .line 493
    :goto_2
    iget-boolean v3, p0, Lg/a/a/z;->d:Z

    if-eqz v3, :cond_5

    .line 494
    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 495
    iget-object v0, p0, Lg/a/a/z;->f:Lg/a/a/v;

    iget-object v3, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lg/a/a/v;->b(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v0

    .line 496
    iget-object v3, v0, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    if-ne v3, v4, :cond_3

    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    :goto_3
    iput-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    .line 497
    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_4

    .line 498
    iput-boolean v1, p0, Lg/a/a/z;->c:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 491
    goto :goto_1

    .line 496
    :cond_3
    iget-object v0, v0, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 501
    :cond_4
    iput-boolean v2, p0, Lg/a/a/z;->d:Z

    .line 505
    :cond_5
    if-le p3, v0, :cond_6

    move p3, v0

    .line 508
    :cond_6
    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v2, p3

    .line 509
    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 521
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    .line 525
    long-to-int v1, p1

    .line 526
    iget-boolean v0, p0, Lg/a/a/z;->b:Z

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SSL stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_0
    iget-boolean v0, p0, Lg/a/a/z;->c:Z

    if-eqz v0, :cond_1

    .line 530
    const-wide/16 v0, 0x0

    .line 544
    :goto_0
    return-wide v0

    :cond_1
    move v0, v1

    .line 533
    :goto_1
    if-lez v0, :cond_4

    .line 534
    iget-object v2, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 535
    iget-object v2, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 536
    int-to-long v0, v1

    goto :goto_0

    .line 538
    :cond_2
    iget-object v2, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int v2, v0, v2

    .line 539
    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 540
    iget-object v0, p0, Lg/a/a/z;->f:Lg/a/a/v;

    iget-object v3, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lg/a/a/v;->b(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v0

    .line 541
    iget-object v3, v0, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    if-ne v3, v4, :cond_3

    iget-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    :goto_2
    iput-object v0, p0, Lg/a/a/z;->a:Ljava/nio/ByteBuffer;

    move v0, v2

    .line 543
    goto :goto_1

    .line 541
    :cond_3
    iget-object v0, v0, Lg/a/a/ac;->b:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 544
    :cond_4
    int-to-long v0, v1

    goto :goto_0
.end method
