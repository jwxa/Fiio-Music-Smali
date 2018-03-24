.class public Lorg/eclipse/jetty/security/authentication/SessionAuthentication;
.super Ljava/lang/Object;
.source "SessionAuthentication.java"

# interfaces
.implements Lc/c/c/h;
.implements Lc/c/c/k;
.implements Ljava/io/Serializable;
.implements Lorg/eclipse/jetty/server/Authentication$User;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __J_AUTHENTICATED:Ljava/lang/String; = "org.eclipse.jetty.security.UserIdentity"

.field private static final serialVersionUID:J = -0x406ff66c4f384292L


# instance fields
.field private final _credentials:Ljava/lang/Object;

.field private final _method:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field private transient _session:Lc/c/c/g;

.field private transient _userIdentity:Lorg/eclipse/jetty/server/UserIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_method:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_name:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_credentials:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private doLogout()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lorg/eclipse/jetty/security/SecurityHandler;->getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/security/SecurityHandler;->logout(Lorg/eclipse/jetty/server/Authentication$User;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    const-string v1, "org.eclipse.jetty.security.sessionKnownOnlytoAuthenticated"

    invoke-interface {v0, v1}, Lc/c/c/g;->removeAttribute(Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 86
    invoke-static {}, Lorg/eclipse/jetty/security/SecurityHandler;->getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!SecurityHandler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/SecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!LoginService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_name:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_credentials:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/security/LoginService;->login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    .line 94
    sget-object v0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Deserialized and relogged in {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    return-object v0
.end method

.method public isUserInRole(Lorg/eclipse/jetty/server/UserIdentity$Scope;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_userIdentity:Lorg/eclipse/jetty/server/UserIdentity;

    invoke-interface {v0, p2, p1}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result v0

    return v0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v0, v1}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    const-string v1, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v0, v1}, Lc/c/c/g;->removeAttribute(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->doLogout()V

    .line 103
    return-void
.end method

.method public sessionDidActivate(Lc/c/c/m;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lc/c/c/m;->a()Lc/c/c/g;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    .line 131
    :cond_0
    return-void
.end method

.method public sessionWillPassivate(Lc/c/c/m;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueBound(Lc/c/c/j;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lc/c/c/j;->a()Lc/c/c/g;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->_session:Lc/c/c/g;

    .line 139
    :cond_0
    return-void
.end method

.method public valueUnbound(Lc/c/c/j;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;->doLogout()V

    .line 144
    return-void
.end method
