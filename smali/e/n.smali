.class public final Le/n;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Le/a/b/d;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Le/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 42
    const-class v0, Le/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Le/n;->c:Z

    .line 48
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    .line 50
    invoke-static {v0, v8}, Le/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Le/n;->d:Ljava/util/concurrent/Executor;

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Le/n;-><init>(Ljava/util/concurrent/TimeUnit;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Le/o;

    invoke-direct {v0, p0}, Le/o;-><init>(Le/n;)V

    iput-object v0, p0, Le/n;->g:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Le/n;->h:Ljava/util/Deque;

    .line 75
    new-instance v0, Le/a/b/d;

    invoke-direct {v0}, Le/a/b/d;-><init>()V

    iput-object v0, p0, Le/n;->a:Le/a/b/d;

    .line 88
    const/4 v0, 0x5

    iput v0, p0, Le/n;->e:I

    .line 89
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Le/n;->f:J

    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keepAliveDuration <= 0: 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 15

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    const/4 v0, 0x0

    .line 183
    const/4 v6, 0x0

    .line 184
    const-wide/high16 v4, -0x8000000000000000L

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v2, p0, Le/n;->h:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v0

    move v8, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/c;

    .line 192
    iget-object v7, v0, Le/a/b/c;->g:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    check-cast v1, Le/a/b/h;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "A connection to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/b/c;->a()Le/au;

    move-result-object v11

    iget-object v11, v11, Le/au;->a:Le/a;

    iget-object v11, v11, Le/a;->a:Le/aa;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v11

    iget-object v1, v1, Le/a/b/h;->a:Ljava/lang/Object;

    invoke-virtual {v11, v10, v1}, Le/a/g/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v7, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/a/b/c;->h:Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v10, p0, Le/n;->f:J

    sub-long v10, p1, v10

    iput-wide v10, v0, Le/a/b/c;->i:J

    const/4 v1, 0x0

    :goto_2
    if-lez v1, :cond_3

    .line 193
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    .line 194
    goto :goto_0

    .line 192
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    .line 197
    :cond_3
    add-int/lit8 v7, v3, 0x1

    .line 200
    iget-wide v2, v0, Le/a/b/c;->i:J

    sub-long v2, p1, v2

    .line 201
    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    :goto_3
    move-wide v4, v0

    move-object v6, v2

    move v3, v7

    .line 205
    goto :goto_0

    .line 207
    :cond_4
    iget-wide v0, p0, Le/n;->f:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    iget v0, p0, Le/n;->e:I

    if-le v3, v0, :cond_6

    .line 211
    :cond_5
    iget-object v0, p0, Le/n;->h:Ljava/util/Deque;

    invoke-interface {v0, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    .line 225
    invoke-virtual {v6}, Le/a/b/c;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Le/a/c;->a(Ljava/net/Socket;)V

    .line 228
    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    .line 212
    :cond_6
    if-lez v3, :cond_7

    .line 214
    :try_start_1
    iget-wide v0, p0, Le/n;->f:J

    sub-long/2addr v0, v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_7
    if-lez v8, :cond_8

    .line 217
    :try_start_2
    iget-wide v0, p0, Le/n;->f:J

    monitor-exit p0

    goto :goto_4

    .line 220
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Le/n;->b:Z

    .line 221
    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_9
    move-wide v0, v4

    move-object v2, v6

    goto :goto_3
.end method

.method final a(Le/a;Le/a/b/g;)Le/a/b/c;
    .locals 4

    .prologue
    .line 118
    sget-boolean v0, Le/n;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Le/n;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/c;

    .line 120
    iget-object v2, v0, Le/a/b/c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Le/a/b/c;->f:I

    if-ge v2, v3, :cond_1

    .line 121
    invoke-virtual {v0}, Le/a/b/c;->a()Le/au;

    move-result-object v2

    iget-object v2, v2, Le/au;->a:Le/a;

    invoke-virtual {p1, v2}, Le/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Le/a/b/c;->h:Z

    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p2, v0}, Le/a/b/g;->a(Le/a/b/c;)V

    .line 127
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Le/a/b/c;)V
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Le/n;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-boolean v0, p0, Le/n;->b:Z

    if-nez v0, :cond_1

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/n;->b:Z

    .line 134
    sget-object v0, Le/n;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le/n;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    :cond_1
    iget-object v0, p0, Le/n;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method final b(Le/a/b/c;)Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Le/n;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    iget-boolean v0, p1, Le/a/b/c;->h:Z

    if-nez v0, :cond_1

    iget v0, p0, Le/n;->e:I

    if-nez v0, :cond_2

    .line 146
    :cond_1
    iget-object v0, p0, Le/n;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method
