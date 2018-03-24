.class public interface abstract Lorg/fourthline/cling/transport/spi/ServletContainerAdapter;
.super Ljava/lang/Object;
.source "ServletContainerAdapter.java"


# virtual methods
.method public abstract addConnector(Ljava/lang/String;I)I
.end method

.method public abstract registerServlet(Ljava/lang/String;Lc/c/q;)V
.end method

.method public abstract setExecutorService(Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract startIfNotRunning()V
.end method

.method public abstract stopIfRunning()V
.end method
