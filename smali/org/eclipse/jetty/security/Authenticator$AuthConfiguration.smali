.class public interface abstract Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;
.super Ljava/lang/Object;
.source "Authenticator.java"


# virtual methods
.method public abstract getAuthMethod()Ljava/lang/String;
.end method

.method public abstract getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
.end method

.method public abstract getInitParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitParameterNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLoginService()Lorg/eclipse/jetty/security/LoginService;
.end method

.method public abstract getRealmName()Ljava/lang/String;
.end method

.method public abstract isSessionRenewedOnAuthentication()Z
.end method
