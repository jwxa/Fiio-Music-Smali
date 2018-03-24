.class final Lorg/eclipse/jetty/server/handler/d;
.super Ljava/lang/Object;
.source "GzipHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/continuation/ContinuationListener;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

.field final synthetic b:Lorg/eclipse/jetty/server/handler/GzipHandler;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/handler/GzipHandler;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->b:Lorg/eclipse/jetty/server/handler/GzipHandler;

    iput-object p2, p0, Lorg/eclipse/jetty/server/handler/d;->a:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 2

    .prologue
    .line 278
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->a:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 282
    invoke-static {}, Lorg/eclipse/jetty/server/handler/GzipHandler;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V
    .locals 0

    .prologue
    .line 287
    return-void
.end method
