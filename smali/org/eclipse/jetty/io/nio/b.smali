.class final Lorg/eclipse/jetty/io/nio/b;
.super Ljava/lang/Object;
.source "SelectChannelEndPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;J)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/b;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iput-wide p2, p0, Lorg/eclipse/jetty/io/nio/b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 304
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/b;->a:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->onIdleExpired(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/b;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/b;->b:Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->setCheckForIdle(Z)V

    throw v0
.end method
