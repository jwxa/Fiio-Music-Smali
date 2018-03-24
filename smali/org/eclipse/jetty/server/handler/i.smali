.class final Lorg/eclipse/jetty/server/handler/i;
.super Ljava/lang/Thread;
.source "ShutdownHandler.java"


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/handler/ShutdownHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/i;->a:Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->a:Lorg/eclipse/jetty/server/handler/ShutdownHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->access$000(Lorg/eclipse/jetty/server/handler/ShutdownHandler;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ShutdownHandler;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Shutting down server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
