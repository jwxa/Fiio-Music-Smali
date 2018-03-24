.class public interface abstract Lorg/eclipse/jetty/server/Handler;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Destroyable;
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getServer()Lorg/eclipse/jetty/server/Server;
.end method

.method public abstract handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
.end method

.method public abstract setServer(Lorg/eclipse/jetty/server/Server;)V
.end method
