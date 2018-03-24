.class public Lorg/eclipse/jetty/server/handler/HandlerList;
.super Lorg/eclipse/jetty/server/handler/HandlerCollection;
.source "HandlerList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerList;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/HandlerList;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 52
    aget-object v2, v1, v0

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 53
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    return-void

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
