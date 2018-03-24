.class final Le/a/e/ad;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lf/z;


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Le/a/e/ab;

.field private final e:Lf/f;

.field private final f:Lf/f;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const-class v0, Le/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Le/a/e/ad;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Le/a/e/ab;J)V
    .locals 2

    .prologue
    .line 319
    iput-object p1, p0, Le/a/e/ad;->d:Le/a/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Le/a/e/ad;->e:Lf/f;

    .line 305
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Le/a/e/ad;->f:Lf/f;

    .line 320
    iput-wide p2, p0, Le/a/e/ad;->g:J

    .line 321
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v0, v0, Le/a/e/ab;->f:Le/a/e/ae;

    invoke-virtual {v0}, Le/a/e/ae;->c()V

    .line 362
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/a/e/ad;->f:Lf/f;

    invoke-virtual {v0}, Lf/f;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/e/ad;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/e/ad;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v0, v0, Le/a/e/ab;->h:Le/a/e/b;

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    iget-object v1, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v1, v1, Le/a/e/ab;->f:Le/a/e/ae;

    invoke-virtual {v1}, Le/a/e/ae;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v0, v0, Le/a/e/ab;->f:Le/a/e/ae;

    invoke-virtual {v0}, Le/a/e/ae;->b()V

    .line 367
    return-void
.end method


# virtual methods
.method public final a(Lf/f;J)J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 325
    cmp-long v0, p2, v4

    if-gez v0, :cond_0

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

    .line 328
    :cond_0
    iget-object v2, p0, Le/a/e/ad;->d:Le/a/e/ab;

    monitor-enter v2

    .line 329
    :try_start_0
    invoke-direct {p0}, Le/a/e/ad;->b()V

    .line 330
    iget-boolean v0, p0, Le/a/e/ad;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 330
    :cond_1
    :try_start_1
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v0, v0, Le/a/e/ab;->h:Le/a/e/b;

    if-eqz v0, :cond_2

    new-instance v0, Le/a/e/am;

    iget-object v1, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v1, v1, Le/a/e/ab;->h:Le/a/e/b;

    invoke-direct {v0, v1}, Le/a/e/am;-><init>(Le/a/e/b;)V

    throw v0

    .line 331
    :cond_2
    iget-object v0, p0, Le/a/e/ad;->f:Lf/f;

    invoke-virtual {v0}, Lf/f;->b()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    monitor-exit v2

    .line 355
    :goto_0
    return-wide v0

    .line 334
    :cond_3
    iget-object v0, p0, Le/a/e/ad;->f:Lf/f;

    iget-object v1, p0, Le/a/e/ad;->f:Lf/f;

    invoke-virtual {v1}, Lf/f;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lf/f;->a(Lf/f;J)J

    move-result-wide v0

    .line 337
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-wide v4, v3, Le/a/e/ab;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Le/a/e/ab;->a:J

    .line 338
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-wide v4, v3, Le/a/e/ab;->a:J

    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    iget-object v3, v3, Le/a/e/j;->l:Le/a/e/al;

    .line 339
    invoke-virtual {v3}, Le/a/e/al;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    .line 340
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    iget-object v4, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget v4, v4, Le/a/e/ab;->c:I

    iget-object v5, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-wide v6, v5, Le/a/e/ab;->a:J

    invoke-virtual {v3, v4, v6, v7}, Le/a/e/j;->a(IJ)V

    .line 341
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Le/a/e/ab;->a:J

    .line 343
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    iget-object v2, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v2, v2, Le/a/e/ab;->d:Le/a/e/j;

    monitor-enter v2

    .line 347
    :try_start_2
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    iget-wide v4, v3, Le/a/e/j;->j:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Le/a/e/j;->j:J

    .line 348
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    iget-wide v4, v3, Le/a/e/j;->j:J

    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    iget-object v3, v3, Le/a/e/j;->l:Le/a/e/al;

    .line 349
    invoke-virtual {v3}, Le/a/e/al;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    .line 350
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    const/4 v4, 0x0

    iget-object v5, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v5, v5, Le/a/e/ab;->d:Le/a/e/j;

    iget-wide v6, v5, Le/a/e/j;->j:J

    invoke-virtual {v3, v4, v6, v7}, Le/a/e/j;->a(IJ)V

    .line 351
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v3, v3, Le/a/e/ab;->d:Le/a/e/j;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Le/a/e/j;->j:J

    .line 353
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    iget-object v0, v0, Le/a/e/ab;->f:Le/a/e/ae;

    return-object v0
.end method

.method final a(Lf/i;J)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 371
    sget-boolean v0, Le/a/e/ad;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 397
    :cond_0
    sub-long/2addr p2, v4

    .line 400
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    monitor-enter v3

    .line 401
    :try_start_0
    iget-object v0, p0, Le/a/e/ad;->f:Lf/f;

    invoke-virtual {v0}, Lf/f;->b()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    .line 402
    :goto_0
    iget-object v4, p0, Le/a/e/ad;->f:Lf/f;

    iget-object v5, p0, Le/a/e/ad;->e:Lf/f;

    invoke-virtual {v4, v5}, Lf/f;->a(Lf/z;)J

    .line 403
    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 406
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    .line 376
    iget-object v3, p0, Le/a/e/ad;->d:Le/a/e/ab;

    monitor-enter v3

    .line 377
    :try_start_1
    iget-boolean v4, p0, Le/a/e/ad;->b:Z

    .line 378
    iget-object v0, p0, Le/a/e/ad;->f:Lf/f;

    invoke-virtual {v0}, Lf/f;->b()J

    move-result-wide v6

    add-long/2addr v6, p2

    iget-wide v8, p0, Le/a/e/ad;->g:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 379
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    if-eqz v0, :cond_5

    .line 383
    invoke-interface {p1, p2, p3}, Lf/i;->f(J)V

    .line 384
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    sget-object v1, Le/a/e/b;->d:Le/a/e/b;

    invoke-virtual {v0, v1}, Le/a/e/ab;->b(Le/a/e/b;)V

    .line 407
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 378
    goto :goto_1

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 389
    :cond_5
    if-eqz v4, :cond_6

    .line 390
    invoke-interface {p1, p2, p3}, Lf/i;->f(J)V

    goto :goto_2

    .line 395
    :cond_6
    iget-object v0, p0, Le/a/e/ad;->e:Lf/f;

    invoke-interface {p1, v0, p2, p3}, Lf/i;->a(Lf/f;J)J

    move-result-wide v4

    .line 396
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    .line 401
    goto :goto_0

    .line 406
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 415
    iget-object v1, p0, Le/a/e/ad;->d:Le/a/e/ab;

    monitor-enter v1

    .line 416
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Le/a/e/ad;->a:Z

    .line 417
    iget-object v0, p0, Le/a/e/ad;->f:Lf/f;

    invoke-virtual {v0}, Lf/f;->q()V

    .line 418
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v0, p0, Le/a/e/ad;->d:Le/a/e/ab;

    invoke-virtual {v0}, Le/a/e/ab;->j()V

    .line 421
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
