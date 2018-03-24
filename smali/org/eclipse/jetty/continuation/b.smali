.class final Lorg/eclipse/jetty/continuation/b;
.super Ljava/lang/Object;
.source "Servlet3Continuation.java"

# interfaces
.implements Lc/c/c;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/continuation/Servlet3Continuation;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/continuation/Servlet3Continuation;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/eclipse/jetty/continuation/b;->a:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/c/b;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final onError(Lc/c/b;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final onStartAsync(Lc/c/b;)V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p1}, Lc/c/b;->getAsyncContext()Lc/c/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lc/c/a;->addListener(Lc/c/c;)V

    .line 74
    return-void
.end method

.method public final onTimeout(Lc/c/b;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/b;->a:Lorg/eclipse/jetty/continuation/Servlet3Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/continuation/Servlet3Continuation;->access$002(Lorg/eclipse/jetty/continuation/Servlet3Continuation;Z)Z

    .line 79
    invoke-virtual {p1}, Lc/c/b;->getAsyncContext()Lc/c/a;

    move-result-object v0

    invoke-interface {v0}, Lc/c/a;->dispatch()V

    .line 80
    return-void
.end method
