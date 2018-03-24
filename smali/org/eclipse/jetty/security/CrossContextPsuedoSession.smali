.class public interface abstract Lorg/eclipse/jetty/security/CrossContextPsuedoSession;
.super Ljava/lang/Object;
.source "CrossContextPsuedoSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clear(Lc/c/c/c;)V
.end method

.method public abstract fetch(Lc/c/c/c;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/c/c;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract store(Ljava/lang/Object;Lc/c/c/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/c/c/e;",
            ")V"
        }
    .end annotation
.end method
