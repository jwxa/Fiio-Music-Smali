.class final Lorg/eclipse/jetty/server/d;
.super Ljava/lang/Object;
.source "AsyncContinuation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lorg/eclipse/jetty/server/AsyncContinuation;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AsyncContinuation;Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lorg/eclipse/jetty/server/d;->c:Lorg/eclipse/jetty/server/AsyncContinuation;

    iput-object p2, p0, Lorg/eclipse/jetty/server/d;->a:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    iput-object p3, p0, Lorg/eclipse/jetty/server/d;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lorg/eclipse/jetty/server/d;->a:Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->getServletContext()Lc/c/s;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/d;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/Runnable;)V

    .line 881
    return-void
.end method
