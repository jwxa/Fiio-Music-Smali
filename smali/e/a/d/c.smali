.class final Le/a/d/c;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lf/y;


# instance fields
.field final synthetic a:Le/a/d/a;

.field private final b:Lf/l;

.field private c:Z


# direct methods
.method constructor <init>(Le/a/d/a;)V
    .locals 2

    .prologue
    .line 313
    iput-object p1, p0, Le/a/d/c;->a:Le/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Lf/l;

    iget-object v1, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v1, v1, Le/a/d/a;->d:Lf/h;

    invoke-interface {v1}, Lf/h;->a()Lf/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/l;-><init>(Lf/aa;)V

    iput-object v0, p0, Le/a/d/c;->b:Lf/l;

    .line 314
    return-void
.end method


# virtual methods
.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Le/a/d/c;->b:Lf/l;

    return-object v0
.end method

.method public final a_(Lf/f;J)V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Le/a/d/c;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0, p2, p3}, Lf/h;->i(J)Lf/h;

    .line 325
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 326
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0, p1, p2, p3}, Lf/h;->a_(Lf/f;J)V

    .line 327
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/d/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Le/a/d/c;->c:Z

    .line 338
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lf/h;->b(Ljava/lang/String;)Lf/h;

    .line 339
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, p0, Le/a/d/c;->b:Lf/l;

    invoke-static {v0}, Le/a/d/a;->a(Lf/l;)V

    .line 340
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Le/a/d/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Le/a/d/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/c;->a:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->d:Lf/h;

    invoke-interface {v0}, Lf/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
