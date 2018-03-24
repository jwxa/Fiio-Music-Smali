.class final Lg/a/a/aa;
.super Ljava/io/OutputStream;
.source "SSLStreams.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:Z

.field c:[B

.field final synthetic e:Lg/a/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 578
    const-class v0, Lg/a/a/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lg/a/a/aa;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lg/a/a/v;)V
    .locals 1

    .prologue
    .line 583
    iput-object p1, p0, Lg/a/a/aa;->e:Lg/a/a/v;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/a/aa;->b:Z

    .line 581
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lg/a/a/aa;->c:[B

    .line 584
    sget-object v0, Lg/a/a/x;->b:Lg/a/a/x;

    invoke-static {p1, v0}, Lg/a/a/v;->a(Lg/a/a/v;Lg/a/a/x;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    .line 585
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lg/a/a/aa;->e:Lg/a/a/v;

    iget-object v0, v0, Lg/a/a/v;->e:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/aa;->b:Z

    .line 624
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 625
    iget-object v2, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 626
    :goto_0
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_0

    .line 627
    iget-object v0, p0, Lg/a/a/aa;->e:Lg/a/a/v;

    iget-object v0, v0, Lg/a/a/v;->f:Lg/a/a/y;

    iget-object v1, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lg/a/a/y;->a(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v1

    .line 628
    iget-object v0, v1, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_0
    sget-boolean v0, Lg/a/a/aa;->d:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 631
    :cond_1
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public final write(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lg/a/a/aa;->c:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 589
    iget-object v0, p0, Lg/a/a/aa;->c:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lg/a/a/aa;->write([BII)V

    .line 590
    return-void
.end method

.method public final write([B)V
    .locals 2

    .prologue
    .line 593
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lg/a/a/aa;->write([BII)V

    .line 594
    return-void
.end method

.method public final write([BII)V
    .locals 3

    .prologue
    .line 596
    iget-boolean v0, p0, Lg/a/a/aa;->b:Z

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, p3

    .line 599
    :cond_1
    if-lez v1, :cond_3

    .line 600
    iget-object v0, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le v1, v0, :cond_2

    iget-object v0, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 601
    :goto_0
    iget-object v2, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 602
    iget-object v2, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 603
    sub-int/2addr v1, v0

    .line 604
    add-int/2addr p2, v0

    .line 605
    iget-object v0, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 606
    iget-object v0, p0, Lg/a/a/aa;->e:Lg/a/a/v;

    iget-object v2, p0, Lg/a/a/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lg/a/a/v;->a(Ljava/nio/ByteBuffer;)Lg/a/a/ac;

    move-result-object v0

    .line 607
    iget-object v0, v0, Lg/a/a/ac;->a:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v0, v2, :cond_1

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/a/aa;->b:Z

    .line 609
    if-lez v1, :cond_1

    .line 610
    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    .line 600
    goto :goto_0

    .line 614
    :cond_3
    return-void
.end method
