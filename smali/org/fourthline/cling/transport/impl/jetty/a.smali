.class final Lorg/fourthline/cling/transport/impl/jetty/a;
.super Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;
.source "JettyServletContainer.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/a;->a:Lorg/fourthline/cling/transport/impl/jetty/JettyServletContainer;

    .line 64
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected final doStop()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
