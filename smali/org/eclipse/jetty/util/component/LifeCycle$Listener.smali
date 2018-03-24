.class public interface abstract Lorg/eclipse/jetty/util/component/LifeCycle$Listener;
.super Ljava/lang/Object;
.source "LifeCycle.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V
.end method

.method public abstract lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V
.end method

.method public abstract lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V
.end method
