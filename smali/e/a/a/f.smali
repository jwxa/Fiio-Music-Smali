.class public final Le/a/a/f;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final synthetic j:Z


# instance fields
.field final b:Le/a/f/a;

.field final c:I

.field d:Lf/h;

.field final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Le/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field private k:J

.field private l:J

.field private final m:Ljava/util/concurrent/Executor;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Le/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Le/a/a/f;->j:Z

    .line 93
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/a/a/f;->a:Ljava/util/regex/Pattern;

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 592
    iget v0, p0, Le/a/a/f;->f:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Le/a/a/f;->f:I

    iget-object v1, p0, Le/a/a/f;->e:Ljava/util/LinkedHashMap;

    .line 594
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 593
    goto :goto_0
.end method

.method private a(Le/a/a/h;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-object v0, p1, Le/a/a/h;->f:Le/a/a/g;

    if-eqz v0, :cond_1

    .line 617
    iget-object v2, p1, Le/a/a/h;->f:Le/a/a/g;

    iget-object v0, v2, Le/a/a/g;->a:Le/a/a/h;

    iget-object v0, v0, Le/a/a/h;->f:Le/a/a/g;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, v2, Le/a/a/g;->b:Le/a/a/f;

    iget v3, v3, Le/a/a/f;->c:I

    if-ge v0, v3, :cond_0

    :try_start_0
    iget-object v3, v2, Le/a/a/g;->b:Le/a/a/f;

    iget-object v3, v3, Le/a/a/f;->b:Le/a/f/a;

    iget-object v4, v2, Le/a/a/g;->a:Le/a/a/h;

    iget-object v4, v4, Le/a/a/h;->d:[Ljava/io/File;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Le/a/f/a;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v2, Le/a/a/g;->a:Le/a/a/h;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/a/h;->f:Le/a/a/g;

    .line 620
    :cond_1
    :goto_2
    iget v0, p0, Le/a/a/f;->c:I

    if-ge v1, v0, :cond_2

    .line 621
    iget-object v0, p0, Le/a/a/f;->b:Le/a/f/a;

    iget-object v2, p1, Le/a/a/h;->c:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Le/a/f/a;->a(Ljava/io/File;)V

    .line 622
    iget-wide v2, p0, Le/a/a/f;->l:J

    iget-object v0, p1, Le/a/a/h;->b:[J

    aget-wide v4, v0, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Le/a/a/f;->l:J

    .line 623
    iget-object v0, p1, Le/a/a/h;->b:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 626
    :cond_2
    iget v0, p0, Le/a/a/f;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/a/f;->f:I

    .line 627
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    const-string v1, "REMOVE"

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    move-result-object v0

    iget-object v1, p1, Le/a/a/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    .line 628
    iget-object v0, p0, Le/a/a/f;->e:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Le/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-direct {p0}, Le/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    iget-object v0, p0, Le/a/a/f;->m:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/a/a/f;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 634
    :cond_3
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/a/f;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 2

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Le/a/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 646
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 676
    :goto_0
    iget-wide v0, p0, Le/a/a/f;->l:J

    iget-wide v2, p0, Le/a/a/f;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 677
    iget-object v0, p0, Le/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/h;

    .line 678
    invoke-direct {p0, v0}, Le/a/a/f;->a(Le/a/a/h;)Z

    goto :goto_0

    .line 680
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/a/f;->i:Z

    .line 681
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Le/a/a/g;)V
    .locals 4

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Le/a/a/g;->a:Le/a/a/h;

    .line 529
    iget-object v0, v1, Le/a/a/h;->f:Le/a/a/g;

    if-eq v0, p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Le/a/a/f;->c:I

    if-ge v0, v2, :cond_1

    .line 548
    iget-object v2, v1, Le/a/a/h;->d:[Ljava/io/File;

    aget-object v2, v2, v0

    .line 549
    iget-object v3, p0, Le/a/a/f;->b:Le/a/f/a;

    invoke-interface {v3, v2}, Le/a/f/a;->a(Ljava/io/File;)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    iget v0, p0, Le/a/a/f;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/a/a/f;->f:I

    .line 564
    const/4 v0, 0x0

    iput-object v0, v1, Le/a/a/h;->f:Le/a/a/g;

    .line 565
    iget-boolean v0, v1, Le/a/a/h;->e:Z

    or-int/lit8 v0, v0, 0x0

    if-eqz v0, :cond_4

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, v1, Le/a/a/h;->e:Z

    .line 567
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    const-string v2, "CLEAN"

    invoke-interface {v0, v2}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lf/h;->h(I)Lf/h;

    .line 568
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    iget-object v2, v1, Le/a/a/h;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 569
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    invoke-virtual {v1, v0}, Le/a/a/h;->a(Lf/h;)V

    .line 570
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;

    .line 580
    :goto_1
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V

    .line 582
    iget-wide v0, p0, Le/a/a/f;->l:J

    iget-wide v2, p0, Le/a/a/f;->k:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0}, Le/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    :cond_2
    iget-object v0, p0, Le/a/a/f;->m:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/a/a/f;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :cond_3
    monitor-exit p0

    return-void

    .line 572
    :cond_4
    :try_start_2
    iget-object v0, p0, Le/a/a/f;->e:Ljava/util/LinkedHashMap;

    iget-object v2, v1, Le/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lf/h;->h(I)Lf/h;

    .line 577
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    iget-object v1, v1, Le/a/a/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 578
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lf/h;->h(I)Lf/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized close()V
    .locals 5

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/a/f;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/a/f;->h:Z

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/f;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :goto_0
    monitor-exit p0

    return-void

    .line 664
    :cond_1
    :try_start_1
    iget-object v0, p0, Le/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Le/a/a/f;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Le/a/a/h;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/a/h;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 665
    iget-object v4, v3, Le/a/a/h;->f:Le/a/a/g;

    if-eqz v4, :cond_2

    .line 666
    iget-object v3, v3, Le/a/a/h;->f:Le/a/a/g;

    invoke-virtual {v3}, Le/a/a/g;->a()V

    .line 664
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 669
    :cond_3
    invoke-direct {p0}, Le/a/a/f;->d()V

    .line 670
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->close()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/a/f;->d:Lf/h;

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/f;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/a/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 655
    :goto_0
    monitor-exit p0

    return-void

    .line 652
    :cond_0
    :try_start_1
    invoke-direct {p0}, Le/a/a/f;->c()V

    .line 653
    invoke-direct {p0}, Le/a/a/f;->d()V

    .line 654
    iget-object v0, p0, Le/a/a/f;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
