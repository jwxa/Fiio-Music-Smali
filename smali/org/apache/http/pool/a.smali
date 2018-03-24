.class final Lorg/apache/http/pool/a;
.super Lorg/apache/http/pool/d;
.source "AbstractConnPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/d",
        "<TT;TC;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lorg/apache/http/pool/AbstractConnPool;


# direct methods
.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/http/pool/a;->b:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p3, p0, Lorg/apache/http/pool/a;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/apache/http/pool/d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/http/pool/a;->b:Lorg/apache/http/pool/AbstractConnPool;

    iget-object v1, p0, Lorg/apache/http/pool/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/pool/AbstractConnPool;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method
