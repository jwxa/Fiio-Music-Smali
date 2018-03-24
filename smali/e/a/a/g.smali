.class public final Le/a/a/g;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final a:Le/a/a/h;

.field final synthetic b:Le/a/a/f;

.field private c:Z


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 927
    iget-object v1, p0, Le/a/a/g;->b:Le/a/a/f;

    monitor-enter v1

    .line 928
    :try_start_0
    iget-boolean v0, p0, Le/a/a/g;->c:Z

    if-eqz v0, :cond_0

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 931
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/a/g;->a:Le/a/a/h;

    iget-object v0, v0, Le/a/a/h;->f:Le/a/a/g;

    if-ne v0, p0, :cond_1

    .line 932
    iget-object v0, p0, Le/a/a/g;->b:Le/a/a/f;

    invoke-virtual {v0, p0}, Le/a/a/f;->a(Le/a/a/g;)V

    .line 934
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/a/g;->c:Z

    .line 935
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
