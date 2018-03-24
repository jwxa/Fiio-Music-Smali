.class public final Le/a/e/ab;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Le/a/e/j;

.field final e:Le/a/e/ac;

.field final f:Le/a/e/ae;

.field final g:Le/a/e/ae;

.field h:Le/a/e/b;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Le/a/e/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Le/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Le/a/e/ab;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILe/a/e/j;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/a/e/j;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le/a/e/ab;->a:J

    .line 62
    new-instance v0, Le/a/e/ae;

    invoke-direct {v0, p0}, Le/a/e/ae;-><init>(Le/a/e/ab;)V

    iput-object v0, p0, Le/a/e/ab;->f:Le/a/e/ae;

    .line 63
    new-instance v0, Le/a/e/ae;

    invoke-direct {v0, p0}, Le/a/e/ae;-><init>(Le/a/e/ab;)V

    iput-object v0, p0, Le/a/e/ab;->g:Le/a/e/ae;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/e/ab;->h:Le/a/e/b;

    .line 74
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput p1, p0, Le/a/e/ab;->c:I

    .line 77
    iput-object p2, p0, Le/a/e/ab;->d:Le/a/e/j;

    .line 78
    iget-object v0, p2, Le/a/e/j;->m:Le/a/e/al;

    .line 79
    invoke-virtual {v0}, Le/a/e/al;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Le/a/e/ab;->b:J

    .line 80
    new-instance v0, Le/a/e/ad;

    iget-object v1, p2, Le/a/e/j;->l:Le/a/e/al;

    .line 81
    invoke-virtual {v1}, Le/a/e/al;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Le/a/e/ad;-><init>(Le/a/e/ab;J)V

    iput-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    .line 82
    new-instance v0, Le/a/e/ac;

    invoke-direct {v0, p0}, Le/a/e/ac;-><init>(Le/a/e/ab;)V

    iput-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    .line 83
    iget-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    iput-boolean p4, v0, Le/a/e/ad;->b:Z

    .line 84
    iget-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iput-boolean p3, v0, Le/a/e/ac;->b:Z

    .line 85
    iput-object p5, p0, Le/a/e/ab;->j:Ljava/util/List;

    .line 86
    return-void
.end method

.method private d(Le/a/e/b;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 235
    sget-boolean v1, Le/a/e/ab;->i:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_0
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v1, p0, Le/a/e/ab;->h:Le/a/e/b;

    if-eqz v1, :cond_1

    .line 238
    monitor-exit p0

    .line 247
    :goto_0
    return v0

    .line 240
    :cond_1
    iget-object v1, p0, Le/a/e/ab;->l:Le/a/e/ad;

    iget-boolean v1, v1, Le/a/e/ad;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v1, v1, Le/a/e/ac;->b:Z

    if-eqz v1, :cond_2

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_2
    :try_start_1
    iput-object p1, p0, Le/a/e/ab;->h:Le/a/e/b;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 245
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    iget-object v0, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/ab;->c:I

    invoke-virtual {v0, v1}, Le/a/e/j;->b(I)Le/a/e/ab;

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Le/a/e/ab;->c:I

    return v0
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 551
    iget-wide v0, p0, Le/a/e/ab;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Le/a/e/ab;->b:J

    .line 552
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 553
    :cond_0
    return-void
.end method

.method public final a(Le/a/e/b;)V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0, p1}, Le/a/e/ab;->d(Le/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/ab;->c:I

    invoke-virtual {v0, v1, p1}, Le/a/e/j;->b(ILe/a/e/b;)V

    goto :goto_0
.end method

.method final a(Lf/i;I)V
    .locals 4

    .prologue
    .line 271
    sget-boolean v0, Le/a/e/ab;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Le/a/e/ad;->a(Lf/i;J)V

    .line 273
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    sget-boolean v0, Le/a/e/ab;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v1, p0, Le/a/e/ab;->k:Ljava/util/List;

    if-nez v1, :cond_2

    .line 255
    iput-object p1, p0, Le/a/e/ab;->k:Ljava/util/List;

    .line 256
    invoke-virtual {p0}, Le/a/e/ab;->b()Z

    move-result v0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 264
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/ab;->c:I

    invoke-virtual {v0, v1}, Le/a/e/j;->b(I)Le/a/e/ab;

    .line 268
    :cond_1
    return-void

    .line 259
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v2, p0, Le/a/e/ab;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    iput-object v1, p0, Le/a/e/ab;->k:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Le/a/e/b;)V
    .locals 2

    .prologue
    .line 227
    invoke-direct {p0, p1}, Le/a/e/ab;->d(Le/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/ab;->c:I

    invoke-virtual {v0, v1, p1}, Le/a/e/j;->a(ILe/a/e/b;)V

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Le/a/e/ab;->h:Le/a/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 107
    :cond_1
    :try_start_1
    iget-object v1, p0, Le/a/e/ab;->l:Le/a/e/ad;

    iget-boolean v1, v1, Le/a/e/ad;->b:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Le/a/e/ab;->l:Le/a/e/ad;

    iget-boolean v1, v1, Le/a/e/ad;->a:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v1, v1, Le/a/e/ac;->b:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v1, v1, Le/a/e/ac;->a:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Le/a/e/ab;->k:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 112
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Le/a/e/b;)V
    .locals 1

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/e/ab;->h:Le/a/e/b;

    if-nez v0, :cond_0

    .line 290
    iput-object p1, p0, Le/a/e/ab;->h:Le/a/e/b;

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    iget v0, p0, Le/a/e/ab;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 118
    :goto_0
    iget-object v3, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget-boolean v3, v3, Le/a/e/j;->b:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0

    :cond_1
    move v1, v2

    .line 118
    goto :goto_1
.end method

.method public final declared-synchronized d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/a/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a/e/ab;->f:Le/a/e/ae;

    invoke-virtual {v0}, Le/a/e/ae;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :goto_0
    :try_start_1
    iget-object v0, p0, Le/a/e/ab;->k:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/e/ab;->h:Le/a/e/b;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Le/a/e/ab;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Le/a/e/ab;->f:Le/a/e/ae;

    invoke-virtual {v1}, Le/a/e/ae;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_0
    :try_start_3
    iget-object v0, p0, Le/a/e/ab;->f:Le/a/e/ae;

    invoke-virtual {v0}, Le/a/e/ae;->b()V

    .line 142
    iget-object v0, p0, Le/a/e/ab;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/e/ab;->k:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 143
    :cond_1
    :try_start_4
    new-instance v0, Le/a/e/am;

    iget-object v1, p0, Le/a/e/ab;->h:Le/a/e/b;

    invoke-direct {v0, v1}, Le/a/e/am;-><init>(Le/a/e/b;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public final e()Lf/aa;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Le/a/e/ab;->f:Le/a/e/ae;

    return-object v0
.end method

.method public final f()Lf/aa;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Le/a/e/ab;->g:Le/a/e/ae;

    return-object v0
.end method

.method public final g()Lf/z;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    return-object v0
.end method

.method public final h()Lf/y;
    .locals 2

    .prologue
    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Le/a/e/ab;->k:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/a/e/ab;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    iget-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    return-object v0
.end method

.method final i()V
    .locals 2

    .prologue
    .line 276
    sget-boolean v0, Le/a/e/ab;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 278
    :cond_0
    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/a/e/ad;->b:Z

    .line 280
    invoke-virtual {p0}, Le/a/e/ab;->b()Z

    move-result v0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/ab;->c:I

    invoke-virtual {v0, v1}, Le/a/e/j;->b(I)Le/a/e/ab;

    .line 286
    :cond_1
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j()V
    .locals 2

    .prologue
    .line 434
    sget-boolean v0, Le/a/e/ab;->i:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 437
    :cond_0
    monitor-enter p0

    .line 438
    :try_start_0
    iget-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    iget-boolean v0, v0, Le/a/e/ad;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/e/ab;->l:Le/a/e/ad;

    iget-boolean v0, v0, Le/a/e/ad;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v0, v0, Le/a/e/ac;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v0, v0, Le/a/e/ac;->a:Z

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 439
    :goto_0
    invoke-virtual {p0}, Le/a/e/ab;->b()Z

    move-result v1

    .line 440
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    if-eqz v0, :cond_4

    .line 446
    sget-object v0, Le/a/e/b;->f:Le/a/e/b;

    invoke-virtual {p0, v0}, Le/a/e/ab;->a(Le/a/e/b;)V

    .line 450
    :cond_2
    :goto_1
    return-void

    .line 438
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 447
    :cond_4
    if-nez v1, :cond_2

    .line 448
    iget-object v0, p0, Le/a/e/ab;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/ab;->c:I

    invoke-virtual {v0, v1}, Le/a/e/j;->b(I)Le/a/e/ab;

    goto :goto_1
.end method

.method final k()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v0, v0, Le/a/e/ac;->a:Z

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iget-object v0, p0, Le/a/e/ab;->e:Le/a/e/ac;

    iget-boolean v0, v0, Le/a/e/ac;->b:Z

    if-eqz v0, :cond_1

    .line 559
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    iget-object v0, p0, Le/a/e/ab;->h:Le/a/e/b;

    if-eqz v0, :cond_2

    .line 561
    new-instance v0, Le/a/e/am;

    iget-object v1, p0, Le/a/e/ab;->h:Le/a/e/b;

    invoke-direct {v0, v1}, Le/a/e/am;-><init>(Le/a/e/b;)V

    throw v0

    .line 563
    :cond_2
    return-void
.end method

.method final l()V
    .locals 1

    .prologue
    .line 571
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    return-void

    .line 573
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
