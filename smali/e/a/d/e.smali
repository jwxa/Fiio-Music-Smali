.class final Le/a/d/e;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lf/y;


# instance fields
.field final synthetic a:Le/a/d/a;

.field private final b:Lf/l;

.field private c:Z

.field private d:J


# direct methods
.method constructor <init>(Le/a/d/a;J)V
    .locals 2

    .prologue
    .line 272
    iput-object p1, p0, Le/a/d/e;->a:Le/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lf/l;

    iget-object v1, p0, Le/a/d/e;->a:Le/a/d/a;

    iget-object v1, v1, Le/a/d/a;->d:Lf/h;

    invoke-interface {v1}, Lf/h;->a()Lf/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/l;-><init>(Lf/aa;)V

    iput-object v0, p0, Le/a/d/e;->b:Lf/l;

    .line 273
    iput-wide p2, p0, Le/a/d/e;->d:J

    .line 274
    return-void
.end method


# virtual methods
.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Le/a/d/e;->b:Lf/l;

    return-object v0
.end method

.method public final a_(Lf/f;J)V
    .locals 4

    .prologue
    .line 281
    iget-boolean v0, p0, Le/a/d/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lf/f;->b()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Le/a/c;->a(JJ)V

    .line 283
    iget-wide v0, p0, Le/a/d/e;->d:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 284
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Le/a/d/e;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    iget-object v0, p0, Le/a/d/e;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0, p1, p2, p3}, Lf/h;->a_(Lf/f;J)V

    .line 288
    iget-wide v0, p0, Le/a/d/e;->d:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Le/a/d/e;->d:J

    .line 289
    return-void
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 297
    iget-boolean v0, p0, Le/a/d/e;->c:Z

    if-eqz v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/d/e;->c:Z

    .line 299
    iget-wide v0, p0, Le/a/d/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    iget-object v0, p0, Le/a/d/e;->a:Le/a/d/a;

    iget-object v0, p0, Le/a/d/e;->b:Lf/l;

    invoke-static {v0}, Le/a/d/a;->a(Lf/l;)V

    .line 301
    iget-object v0, p0, Le/a/d/e;->a:Le/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Le/a/d/a;->e:I

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Le/a/d/e;->c:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Le/a/d/e;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V

    goto :goto_0
.end method
