.class public Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lc/c/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDestroyed(Lc/c/af;)V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p1}, Lc/c/af;->a()Lc/c/ac;

    move-result-object v0

    const-string v1, "org.eclipse.multiPartInputStream"

    invoke-interface {v0, v1}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 145
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lc/c/af;->a()Lc/c/ac;

    move-result-object v1

    const-string v2, "org.eclipse.multiPartContext"

    invoke-interface {v1, v2}, Lc/c/ac;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 150
    invoke-virtual {p1}, Lc/c/af;->b()Lc/c/s;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->deleteParts()V
    :try_end_0
    .catch Lorg/eclipse/jetty/util/MultiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p1}, Lc/c/af;->b()Lc/c/s;

    move-result-object v1

    const-string v2, "Errors deleting multipart tmp files"

    invoke-interface {v1, v2, v0}, Lc/c/s;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestInitialized(Lc/c/af;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method
