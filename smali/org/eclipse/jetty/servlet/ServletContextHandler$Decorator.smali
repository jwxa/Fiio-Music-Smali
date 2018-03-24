.class public interface abstract Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"


# virtual methods
.method public abstract decorateFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V
.end method

.method public abstract decorateFilterInstance(Lc/c/e;)Lc/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/e;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract decorateListenerInstance(Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract decorateServletHolder(Lorg/eclipse/jetty/servlet/ServletHolder;)V
.end method

.method public abstract decorateServletInstance(Lc/c/q;)Lc/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/c/q;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract destroyFilterInstance(Lc/c/e;)V
.end method

.method public abstract destroyListenerInstance(Ljava/util/EventListener;)V
.end method

.method public abstract destroyServletInstance(Lc/c/q;)V
.end method
