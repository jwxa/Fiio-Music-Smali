.class public Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$Deferred;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field static final __deferredResponse:Lc/c/c/e;

.field private static __nullOut:Lc/c/z;


# instance fields
.field protected final _authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

.field private _previousAssociation:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 149
    new-instance v0, Lorg/eclipse/jetty/security/authentication/a;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/a;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Lc/c/c/e;

    .line 319
    new-instance v0, Lorg/eclipse/jetty/security/authentication/b;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/b;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Lc/c/z;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No Authenticator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    .line 58
    return-void
.end method

.method static synthetic access$000()Lc/c/z;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__nullOut:Lc/c/z;

    return-object v0
.end method

.method public static isDeferred(Lc/c/c/e;)Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Lc/c/c/e;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;
    .locals 4

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    sget-object v2, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->__deferredResponse:Lc/c/c/e;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v1, :cond_1

    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v1, v0

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v1

    .line 83
    sget-object v2, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    :cond_1
    move-object v2, p0

    .line 86
    goto :goto_0
.end method

.method public authenticate(Lc/c/ac;Lc/c/ai;)Lorg/eclipse/jetty/server/Authentication;
    .locals 4

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v1

    .line 98
    invoke-interface {v1}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v3

    .line 100
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v2

    .line 101
    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 102
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v1, v0

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v1

    .line 107
    sget-object v2, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    move-object v2, p0

    .line 109
    goto :goto_0
.end method

.method public getPreviousAssociation()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_1

    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_authenticator:Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    .line 122
    new-instance v0, Lorg/eclipse/jetty/security/UserAuthentication;

    const-string v3, "API"

    invoke-direct {v0, v3, v1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    .line 123
    if-eqz v2, :cond_0

    .line 124
    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->_previousAssociation:Ljava/lang/Object;

    .line 127
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
