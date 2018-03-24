.class final Lorg/apache/http/impl/conn/tsccm/a;
.super Ljava/lang/Object;
.source "ConnPoolByRoute.java"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;


# instance fields
.field final synthetic a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

.field final synthetic b:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/a;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    iput-object p3, p0, Lorg/apache/http/impl/conn/tsccm/a;->b:Lorg/apache/http/conn/routing/HttpRoute;

    iput-object p4, p0, Lorg/apache/http/impl/conn/tsccm/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortRequest()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/a;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-static {v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->access$000(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 9

    .prologue
    .line 299
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/a;->d:Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/a;->b:Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/a;->c:Ljava/lang/Object;

    iget-object v7, p0, Lorg/apache/http/impl/conn/tsccm/a;->a:Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method
