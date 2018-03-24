.class public interface abstract Lorg/eclipse/jetty/security/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# virtual methods
.method public abstract getAuthMethod()Ljava/lang/String;
.end method

.method public abstract secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
.end method

.method public abstract setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
.end method

.method public abstract validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;
.end method
