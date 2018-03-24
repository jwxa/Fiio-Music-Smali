.class abstract Lorg/apache/http/pool/c;
.super Ljava/lang/Object;
.source "PoolEntryFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lorg/apache/http/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/locks/Condition;

.field private volatile d:Z

.field private volatile e:Z

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Lock;",
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    .line 54
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/pool/c;->c:Ljava/util/concurrent/locks/Condition;

    .line 55
    iput-object p2, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    .line 56
    return-void
.end method


# virtual methods
.method protected abstract a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/pool/c;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/util/Date;)Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/pool/c;->d:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Operation interrupted"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 127
    :cond_0
    if-eqz p1, :cond_1

    .line 129
    :try_start_1
    iget-object v0, p0, Lorg/apache/http/pool/c;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    .line 134
    :goto_0
    iget-boolean v1, p0, Lorg/apache/http/pool/c;->d:Z

    if-eqz v1, :cond_2

    .line 135
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Operation interrupted"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/apache/http/pool/c;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public cancel(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 61
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/pool/c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    .line 64
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/http/pool/c;->e:Z

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/pool/c;->d:Z

    .line 66
    iget-object v1, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    .line 69
    :cond_1
    iget-object v1, p0, Lorg/apache/http/pool/c;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/pool/c;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/pool/c;->e:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/http/pool/c;->f:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/pool/c;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/pool/c;->f:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/pool/c;->e:Z

    .line 102
    iget-object v0, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    iget-object v1, p0, Lorg/apache/http/pool/c;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/apache/http/pool/c;->f:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/http/pool/c;->e:Z

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/pool/c;->f:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lorg/apache/http/pool/c;->b:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    .line 112
    :cond_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/apache/http/pool/c;->d:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/apache/http/pool/c;->e:Z

    return v0
.end method
