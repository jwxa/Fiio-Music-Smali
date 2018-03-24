.class final Lorg/apache/http/impl/conn/e;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-wide p1, p0, Lorg/apache/http/impl/conn/e;->a:J

    .line 173
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 174
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/e;->b:J

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/impl/conn/e;->b:J

    goto :goto_0
.end method

.method static synthetic a(Lorg/apache/http/impl/conn/e;)J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lorg/apache/http/impl/conn/e;->b:J

    return-wide v0
.end method

.method static synthetic b(Lorg/apache/http/impl/conn/e;)J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lorg/apache/http/impl/conn/e;->a:J

    return-wide v0
.end method
