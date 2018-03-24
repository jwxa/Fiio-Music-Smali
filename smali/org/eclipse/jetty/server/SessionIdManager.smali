.class public interface abstract Lorg/eclipse/jetty/server/SessionIdManager;
.super Ljava/lang/Object;
.source "SessionIdManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# virtual methods
.method public abstract addSession(Lc/c/c/g;)V
.end method

.method public abstract getClusterId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNodeId(Ljava/lang/String;Lc/c/c/c;)Ljava/lang/String;
.end method

.method public abstract getWorkerName()Ljava/lang/String;
.end method

.method public abstract idInUse(Ljava/lang/String;)Z
.end method

.method public abstract invalidateAll(Ljava/lang/String;)V
.end method

.method public abstract newSessionId(Lc/c/c/c;J)Ljava/lang/String;
.end method

.method public abstract removeSession(Lc/c/c/g;)V
.end method
