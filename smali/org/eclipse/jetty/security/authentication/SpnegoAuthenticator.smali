.class public Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "SpnegoAuthenticator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _authMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 42
    const-string v0, "SPNEGO"

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 42
    const-string v0, "SPNEGO"

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->_authMethod:Ljava/lang/String;

    return-object v0
.end method

.method public secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 3

    .prologue
    .line 67
    move-object v0, p1

    check-cast v0, Lc/c/c/c;

    .line 68
    check-cast p2, Lc/c/c/e;

    .line 70
    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-nez p3, :cond_0

    .line 74
    new-instance v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 109
    :goto_0
    return-object v0

    .line 78
    :cond_0
    if-nez v0, :cond_2

    .line 82
    :try_start_0
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Lc/c/c/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "SpengoAuthenticator: sending challenge"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string v0, "WWW-Authenticate"

    const-string v1, "Negotiate"

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/16 v0, 0x191

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V

    .line 90
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Negotiate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 105
    new-instance v0, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/SpnegoAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto :goto_0
.end method
