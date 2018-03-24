.class final Lorg/apache/http/impl/conn/g;
.super Ljava/lang/Object;
.source "PoolingClientConnectionManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/PoolingClientConnectionManager;Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/http/impl/conn/g;->b:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/g;->a:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortRequest()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/conn/g;->a:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 194
    return-void
.end method

.method public final getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/http/impl/conn/g;->b:Lorg/apache/http/impl/conn/PoolingClientConnectionManager;

    iget-object v1, p0, Lorg/apache/http/impl/conn/g;->a:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/http/impl/conn/PoolingClientConnectionManager;->leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method
