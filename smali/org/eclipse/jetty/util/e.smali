.class final Lorg/eclipse/jetty/util/e;
.super Ljava/lang/Object;
.source "IO.java"


# static fields
.field static final a:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/e;->a:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    .line 63
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/util/e;->a:Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/eclipse/jetty/util/IO;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
