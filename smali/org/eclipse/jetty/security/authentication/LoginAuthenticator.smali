.class public abstract Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.super Ljava/lang/Object;
.source "LoginAuthenticator.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator;


# instance fields
.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _loginService:Lorg/eclipse/jetty/security/LoginService;

.field private _renewSession:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    check-cast p3, Lc/c/c/c;

    invoke-virtual {p0, p3, v1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->renewSession(Lc/c/c/c;Lc/c/c/e;)Lc/c/c/g;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected renewSession(Lc/c/c/c;Lc/c/c/e;)Lc/c/c/g;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lc/c/c/c;->getSession(Z)Lc/c/c/g;

    move-result-object v0

    .line 89
    iget-boolean v1, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_renewSession:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    invoke-interface {v0, v1}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 91
    monitor-enter p0

    .line 93
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionManager;->renewSession(Lc/c/c/c;Lc/c/c/g;Z)Lc/c/c/g;

    move-result-object v0

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 3

    .prologue
    .line 59
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No LoginService for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No IdentityService for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->isSessionRenewedOnAuthentication()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->_renewSession:Z

    .line 66
    return-void
.end method
