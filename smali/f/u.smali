.class final Lf/u;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# instance fields
.field final synthetic a:Lf/t;


# direct methods
.method constructor <init>(Lf/t;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lf/u;->a:Lf/t;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-boolean v0, v0, Lf/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->a:Lf/f;

    iget-wide v0, v0, Lf/f;->b:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lf/u;->a:Lf/t;

    invoke-virtual {v0}, Lf/t;->close()V

    .line 423
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-boolean v0, v0, Lf/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->a:Lf/f;

    iget-wide v0, v0, Lf/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->b:Lf/z;

    iget-object v1, p0, Lf/u;->a:Lf/t;

    iget-object v1, v1, Lf/t;->a:Lf/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lf/z;->a(Lf/f;J)J

    move-result-wide v0

    .line 399
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 401
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    .line 405
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-boolean v0, v0, Lf/t;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lf/ac;->a(JJJ)V

    .line 408
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->a:Lf/f;

    iget-wide v0, v0, Lf/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->b:Lf/z;

    iget-object v1, p0, Lf/u;->a:Lf/t;

    iget-object v1, v1, Lf/t;->a:Lf/f;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lf/z;->a(Lf/f;J)J

    move-result-wide v0

    .line 410
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 413
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lf/u;->a:Lf/t;

    iget-object v0, v0, Lf/t;->a:Lf/f;

    invoke-virtual {v0, p1, p2, p3}, Lf/f;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/u;->a:Lf/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
