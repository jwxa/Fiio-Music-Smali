.class final Lorg/fourthline/cling/transport/impl/jetty/b;
.super Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;
.source "StreamClientImpl.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/transport/impl/jetty/b;->a:Lorg/fourthline/cling/transport/impl/jetty/StreamClientImpl;

    .line 71
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected final doStop()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
