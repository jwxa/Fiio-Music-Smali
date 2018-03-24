.class final Lorg/apache/http/impl/conn/i;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# instance fields
.field final synthetic a:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lorg/apache/http/impl/conn/SingleClientConnManager;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/http/impl/conn/i;->c:Lorg/apache/http/impl/conn/SingleClientConnManager;

    iput-object p2, p0, Lorg/apache/http/impl/conn/i;->a:Lorg/apache/http/conn/routing/HttpRoute;

    iput-object p3, p0, Lorg/apache/http/impl/conn/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final abortRequest()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/http/impl/conn/i;->c:Lorg/apache/http/impl/conn/SingleClientConnManager;

    iget-object v1, p0, Lorg/apache/http/impl/conn/i;->a:Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v2, p0, Lorg/apache/http/impl/conn/i;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method
