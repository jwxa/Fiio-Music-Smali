.class public Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;
.super Ljava/lang/Object;
.source "DefaultAuthenticatorFactory.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator$Factory;


# instance fields
.field _loginService:Lorg/eclipse/jetty/security/LoginService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticator(Lorg/eclipse/jetty/server/Server;Lc/c/s;Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;Lorg/eclipse/jetty/security/IdentityService;Lorg/eclipse/jetty/security/LoginService;)Lorg/eclipse/jetty/security/Authenticator;
    .locals 3

    .prologue
    .line 59
    invoke-interface {p3}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getAuthMethod()Ljava/lang/String;

    move-result-object v1

    .line 60
    const/4 v0, 0x0

    .line 62
    if-eqz v1, :cond_0

    const-string v2, "BASIC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;-><init>()V

    .line 72
    :cond_1
    :goto_0
    const-string v2, "CLIENT_CERT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CLIENT-CERT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;-><init>()V

    .line 75
    :cond_3
    return-object v0

    .line 64
    :cond_4
    const-string v2, "DIGEST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;-><init>()V

    goto :goto_0

    .line 66
    :cond_5
    const-string v2, "FORM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    new-instance v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;-><init>()V

    goto :goto_0

    .line 68
    :cond_6
    const-string v2, "SPNEGO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    new-instance v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;-><init>()V

    goto :goto_0

    .line 70
    :cond_7
    const-string v2, "NEGOTIATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    const-string v2, "NEGOTIATE"

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public setLoginService(Lorg/eclipse/jetty/security/LoginService;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 94
    return-void
.end method
