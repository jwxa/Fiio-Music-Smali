.class public Lf/a;
.super Lf/aa;
.source "AsyncTimeout.java"


# static fields
.field private static final a:J

.field private static final c:J

.field private static d:Lf/a;


# instance fields
.field private e:Z

.field private f:Lf/a;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lf/a;->a:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lf/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lf/a;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lf/aa;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lf/a;JZ)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    const-class v1, Lf/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lf/a;->d:Lf/a;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lf/a;

    invoke-direct {v0}, Lf/a;-><init>()V

    sput-object v0, Lf/a;->d:Lf/a;

    .line 87
    new-instance v0, Lf/d;

    invoke-direct {v0}, Lf/d;-><init>()V

    invoke-virtual {v0}, Lf/d;->start()V

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 91
    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 94
    invoke-virtual {p0}, Lf/a;->d()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lf/a;->g:J

    .line 104
    :goto_0
    iget-wide v4, p0, Lf/a;->g:J

    sub-long/2addr v4, v2

    .line 105
    sget-object v0, Lf/a;->d:Lf/a;

    .line 106
    :goto_1
    iget-object v6, v0, Lf/a;->f:Lf/a;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lf/a;->f:Lf/a;

    iget-wide v6, v6, Lf/a;->g:J

    sub-long/2addr v6, v2

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 107
    :cond_1
    iget-object v2, v0, Lf/a;->f:Lf/a;

    iput-object v2, p0, Lf/a;->f:Lf/a;

    .line 108
    iput-object p0, v0, Lf/a;->f:Lf/a;

    .line 109
    sget-object v2, Lf/a;->d:Lf/a;

    if-ne v0, v2, :cond_2

    .line 110
    const-class v0, Lf/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_2
    monitor-exit v1

    return-void

    .line 95
    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    .line 96
    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, Lf/a;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_4
    if-eqz p3, :cond_5

    .line 98
    :try_start_2
    invoke-virtual {p0}, Lf/a;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lf/a;->g:J

    goto :goto_0

    .line 100
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_6
    iget-object v0, v0, Lf/a;->f:Lf/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized a(Lf/a;)Z
    .locals 3

    .prologue
    .line 127
    const-class v1, Lf/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lf/a;->d:Lf/a;

    :goto_0
    if-eqz v0, :cond_1

    .line 128
    iget-object v2, v0, Lf/a;->f:Lf/a;

    if-ne v2, p0, :cond_0

    .line 129
    iget-object v2, p0, Lf/a;->f:Lf/a;

    iput-object v2, v0, Lf/a;->f:Lf/a;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lf/a;->f:Lf/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v0, 0x0

    .line 136
    :goto_1
    monitor-exit v1

    return v0

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, v0, Lf/a;->f:Lf/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static e()Lf/a;
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v0, 0x0

    .line 341
    sget-object v1, Lf/a;->d:Lf/a;

    iget-object v1, v1, Lf/a;->f:Lf/a;

    .line 344
    if-nez v1, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 346
    const-class v1, Lf/a;

    sget-wide v4, Lf/a;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 347
    sget-object v1, Lf/a;->d:Lf/a;

    iget-object v1, v1, Lf/a;->f:Lf/a;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lf/a;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lf/a;->d:Lf/a;

    .line 367
    :cond_0
    :goto_0
    return-object v0

    .line 352
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v1, Lf/a;->g:J

    sub-long v2, v4, v2

    .line 355
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 358
    div-long v4, v2, v6

    .line 359
    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    .line 360
    const-class v1, Lf/a;

    long-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V

    goto :goto_0

    .line 365
    :cond_2
    sget-object v2, Lf/a;->d:Lf/a;

    iget-object v3, v1, Lf/a;->f:Lf/a;

    iput-object v3, v2, Lf/a;->f:Lf/a;

    .line 366
    iput-object v0, v1, Lf/a;->f:Lf/a;

    move-object v0, v1

    .line 367
    goto :goto_0
.end method

.method static synthetic f()Lf/a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lf/a;->d:Lf/a;

    return-object v0
.end method

.method static synthetic g()Lf/a;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lf/a;->d:Lf/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lf/y;)Lf/y;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lf/b;

    invoke-direct {v0, p0, p1}, Lf/b;-><init>(Lf/a;Lf/y;)V

    return-object v0
.end method

.method public final a(Lf/z;)Lf/z;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lf/c;

    invoke-direct {v0, p0, p1}, Lf/c;-><init>(Lf/a;Lf/z;)V

    return-object v0
.end method

.method protected a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 297
    :cond_0
    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lf/a;->a_()Z

    move-result v0

    .line 274
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 275
    :cond_0
    return-void
.end method

.method public final a_()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-boolean v1, p0, Lf/a;->e:Z

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return v0

    .line 120
    :cond_0
    iput-boolean v0, p0, Lf/a;->e:Z

    .line 121
    invoke-static {p0}, Lf/a;->a(Lf/a;)Z

    move-result v0

    goto :goto_0
.end method

.method final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lf/a;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lf/a;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 72
    iget-boolean v0, p0, Lf/a;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lf/a;->b_()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lf/a;->c_()Z

    move-result v2

    .line 75
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lf/a;->e:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lf/a;->a(Lf/a;JZ)V

    goto :goto_0
.end method
