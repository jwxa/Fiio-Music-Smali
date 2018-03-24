.class public Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "BasicAuthenticator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "BASIC"

    return-object v0
.end method

.method public secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 4

    .prologue
    .line 65
    check-cast p1, Lc/c/c/c;

    .line 66
    check-cast p2, Lc/c/c/e;

    .line 67
    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-nez p3, :cond_0

    .line 72
    :try_start_0
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 105
    :goto_0
    return-object v0

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 76
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 77
    if-lez v1, :cond_1

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "basic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "ISO-8859-1"

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 85
    if-lez v1, :cond_1

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 88
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v2, v0, p1}, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_1

    .line 93
    new-instance v0, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :cond_1
    :try_start_1
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Lc/c/c/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "WWW-Authenticate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "basic realm=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/BasicAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v2}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v0, 0x191

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V

    .line 105
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
