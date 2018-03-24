.class final Lorg/apache/http/impl/conn/tsccm/c;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# instance fields
.field final synthetic a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

.field final synthetic b:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/c;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/c;->a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    iput-object p3, p0, Lorg/apache/http/impl/conn/tsccm/c;->b:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortRequest()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/c;->a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->abortRequest()V

    .line 229
    return-void
.end method

.method public final getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/c;->b:Lorg/apache/http/conn/routing/HttpRoute;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/c;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->access$000(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/c;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->access$000(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get connection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/c;->b:Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/c;->a:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    .line 243
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/c;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    return-object v1
.end method
