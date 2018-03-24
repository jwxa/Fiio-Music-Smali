.class public interface abstract Lorg/eclipse/jetty/server/UserIdentity$Scope;
.super Ljava/lang/Object;
.source "UserIdentity.java"


# virtual methods
.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRoleRefMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
