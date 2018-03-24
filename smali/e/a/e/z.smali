.class final Le/a/e/z;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lf/z;


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lf/i;


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Le/a/e/z;->f:Lf/i;

    .line 350
    return-void
.end method


# virtual methods
.method public final a(Lf/f;J)J
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v0, -0x1

    const/4 v8, 0x0

    .line 353
    :cond_0
    iget v2, p0, Le/a/e/z;->d:I

    if-nez v2, :cond_5

    .line 354
    iget-object v2, p0, Le/a/e/z;->f:Lf/i;

    iget-short v3, p0, Le/a/e/z;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lf/i;->f(J)V

    .line 355
    iput-short v8, p0, Le/a/e/z;->e:S

    .line 356
    iget-byte v2, p0, Le/a/e/z;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 364
    :cond_1
    :goto_0
    return-wide v0

    .line 357
    :cond_2
    iget v2, p0, Le/a/e/z;->c:I

    iget-object v3, p0, Le/a/e/z;->f:Lf/i;

    invoke-static {v3}, Le/a/e/y;->a(Lf/i;)I

    move-result v3

    iput v3, p0, Le/a/e/z;->d:I

    iput v3, p0, Le/a/e/z;->a:I

    iget-object v3, p0, Le/a/e/z;->f:Lf/i;

    invoke-interface {v3}, Lf/i;->g()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Le/a/e/z;->f:Lf/i;

    invoke-interface {v4}, Lf/i;->g()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Le/a/e/z;->b:B

    sget-object v4, Le/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Le/a/e/y;->a:Ljava/util/logging/Logger;

    iget v5, p0, Le/a/e/z;->c:I

    iget v6, p0, Le/a/e/z;->a:I

    iget-byte v7, p0, Le/a/e/z;->b:B

    invoke-static {v9, v5, v6, v3, v7}, Le/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Le/a/e/z;->f:Lf/i;

    invoke-interface {v4}, Lf/i;->i()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, p0, Le/a/e/z;->c:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget v3, p0, Le/a/e/z;->c:I

    if-eq v3, v2, :cond_0

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Le/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 361
    :cond_5
    iget-object v2, p0, Le/a/e/z;->f:Lf/i;

    iget v3, p0, Le/a/e/z;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lf/i;->a(Lf/f;J)J

    move-result-wide v2

    .line 362
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 363
    iget v0, p0, Le/a/e/z;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Le/a/e/z;->d:I

    move-wide v0, v2

    .line 364
    goto :goto_0
.end method

.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Le/a/e/z;->f:Lf/i;

    invoke-interface {v0}, Lf/i;->a()Lf/aa;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method
