.class final Lorg/apache/http/pool/b;
.super Lorg/apache/http/pool/c;
.source "AbstractConnPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/c",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lorg/apache/http/pool/AbstractConnPool;


# direct methods
.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/apache/http/pool/b;->c:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p4, p0, Lorg/apache/http/pool/b;->a:Ljava/lang/Object;

    iput-object p5, p0, Lorg/apache/http/pool/b;->b:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/pool/c;-><init>(Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 172
    iget-object v1, p0, Lorg/apache/http/pool/b;->c:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v2, p0, Lorg/apache/http/pool/b;->a:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/http/pool/b;->b:Ljava/lang/Object;

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/apache/http/pool/AbstractConnPool;->access$000(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/c;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method
