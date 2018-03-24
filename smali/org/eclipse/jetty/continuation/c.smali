.class final Lorg/eclipse/jetty/continuation/c;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Lc/c/c;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/continuation/ContinuationListener;

.field final synthetic b:Lorg/eclipse/jetty/continuation/Servlet3Continuation;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Lorg/eclipse/jetty/continuation/ContinuationListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/c;->b:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    iput-object p2, p0, Lorg/eclipse/jetty/continuation/c;->a:Lorg/eclipse/jetty/continuation/ContinuationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/c/b;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/c;->a:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v1, p0, Lorg/eclipse/jetty/continuation/c;->b:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    .line 92
    return-void
.end method

.method public final onError(Lc/c/b;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/c;->a:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v1, p0, Lorg/eclipse/jetty/continuation/c;->b:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onComplete(Lorg/eclipse/jetty/continuation/Continuation;)V

    .line 97
    return-void
.end method

.method public final onStartAsync(Lc/c/b;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p1}, Lc/c/b;->getAsyncContext()Lc/c/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/c/a;->addListener(Lc/c/c;)V

    .line 102
    return-void
.end method

.method public final onTimeout(Lc/c/b;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/c;->b:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->access$102(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/c;->a:Lorg/eclipse/jetty/continuation/ContinuationListener;

    iget-object v1, p0, Lorg/eclipse/jetty/continuation/c;->b:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/continuation/ContinuationListener;->onTimeout(Lorg/eclipse/jetty/continuation/Continuation;)V

    .line 108
    return-void
.end method
