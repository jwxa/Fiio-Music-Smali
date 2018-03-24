.class final Lorg/apache/http/impl/conn/b;
.super Lorg/apache/http/pool/AbstractConnPool;
.source "HttpConnPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/http/pool/AbstractConnPool",
        "<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/OperatedClientConnection;",
        "Lorg/apache/http/impl/conn/d;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final b:Lorg/apache/commons/logging/Log;

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/logging/Log;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lorg/apache/http/impl/conn/c;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/c;-><init>()V

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/pool/AbstractConnPool;-><init>(Lorg/apache/http/pool/ConnFactory;II)V

    .line 54
    iput-object p1, p0, Lorg/apache/http/impl/conn/b;->b:Lorg/apache/commons/logging/Log;

    .line 55
    iput-wide p2, p0, Lorg/apache/http/impl/conn/b;->c:J

    .line 56
    iput-object p4, p0, Lorg/apache/http/impl/conn/b;->d:Ljava/util/concurrent/TimeUnit;

    .line 57
    return-void
.end method


# virtual methods
.method protected final synthetic createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 9

    .prologue
    .line 42
    move-object v4, p1

    check-cast v4, Lorg/apache/http/conn/routing/HttpRoute;

    move-object v5, p2

    check-cast v5, Lorg/apache/http/conn/OperatedClientConnection;

    sget-object v0, Lorg/apache/http/impl/conn/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lorg/apache/http/impl/conn/d;

    iget-object v2, p0, Lorg/apache/http/impl/conn/b;->b:Lorg/apache/commons/logging/Log;

    iget-wide v6, p0, Lorg/apache/http/impl/conn/b;->c:J

    iget-object v8, p0, Lorg/apache/http/impl/conn/b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v8}, Lorg/apache/http/impl/conn/d;-><init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/conn/OperatedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    return-object v1
.end method
