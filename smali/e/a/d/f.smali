.class final Le/a/d/f;
.super Le/a/d/b;
.source "Http1Codec.java"


# instance fields
.field final synthetic d:Le/a/d/a;

.field private e:J


# direct methods
.method public constructor <init>(Le/a/d/a;J)V
    .locals 4

    .prologue
    .line 373
    iput-object p1, p0, Le/a/d/f;->d:Le/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/a/d/b;-><init>(Le/a/d/a;B)V

    .line 374
    iput-wide p2, p0, Le/a/d/f;->e:J

    .line 375
    iget-wide v0, p0, Le/a/d/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/a/d/f;->a(Z)V

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lf/f;J)J
    .locals 8

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    .line 381
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    iget-boolean v2, p0, Le/a/d/f;->b:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iget-wide v2, p0, Le/a/d/f;->e:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 395
    :goto_0
    return-wide v0

    .line 385
    :cond_2
    iget-object v2, p0, Le/a/d/f;->d:Le/a/d/a;

    iget-object v2, v2, Le/a/d/a;->c:Lf/i;

    iget-wide v4, p0, Le/a/d/f;->e:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lf/i;->a(Lf/f;J)J

    move-result-wide v2

    .line 386
    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/d/f;->a(Z)V

    .line 388
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_3
    iget-wide v0, p0, Le/a/d/f;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Le/a/d/f;->e:J

    .line 392
    iget-wide v0, p0, Le/a/d/f;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/a/d/f;->a(Z)V

    :cond_4
    move-wide v0, v2

    .line 395
    goto :goto_0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 399
    iget-boolean v0, p0, Le/a/d/f;->b:Z

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-wide v0, p0, Le/a/d/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Le/a/c;->a(Lf/z;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/d/f;->a(Z)V

    .line 405
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/d/f;->b:Z

    goto :goto_0
.end method
