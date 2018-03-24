.class public Lorg/eclipse/jetty/security/SpnegoLoginService;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SpnegoLoginService.java"

# interfaces
.implements Lorg/eclipse/jetty/security/LoginService;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _config:Ljava/lang/String;

.field protected _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field protected _name:Ljava/lang/String;

.field private _targetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/security/SpnegoLoginService;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/SpnegoLoginService;->setName(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/SpnegoLoginService;->setName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/SpnegoLoginService;->setConfig(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 100
    iget-object v1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_config:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 103
    const-string v1, "targetName"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_targetName:Ljava/lang/String;

    .line 105
    sget-object v0, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Target Name {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_targetName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 108
    return-void
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_config:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 115
    check-cast p2, Ljava/lang/String;

    .line 117
    invoke-static {p2}, Lorg/eclipse/jetty/util/security/B64Code;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 119
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v2

    .line 122
    :try_start_0
    new-instance v3, Lorg/ietf/jgss/Oid;

    const-string v4, "1.3.6.1.5.5.2"

    invoke-direct {v3, v4}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_targetName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v4

    .line 124
    const v5, 0x7fffffff

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v5, v3, v6}, Lorg/ietf/jgss/GSSManager;->createCredential(Lorg/ietf/jgss/GSSName;ILorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;

    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;

    move-result-object v2

    .line 127
    if-nez v2, :cond_1

    .line 129
    sget-object v1, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "SpnegoUserRealm: failed to establish GSSContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/ietf/jgss/GSSContext;->acceptSecContext([BII)[B

    move-result-object v1

    goto :goto_1

    .line 137
    :cond_2
    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->getSrcName()Lorg/ietf/jgss/GSSName;

    move-result-object v3

    invoke-interface {v3}, Lorg/ietf/jgss/GSSName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    sget-object v5, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "SpnegoUserRealm: established a security context"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v5, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Client Principal is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->getSrcName()Lorg/ietf/jgss/GSSName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v5, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Server Principal is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/ietf/jgss/GSSContext;->getTargName()Lorg/ietf/jgss/GSSName;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v2, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sget-object v2, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Client Default Role: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v2, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;

    invoke-direct {v2, v3, v1}, Lorg/eclipse/jetty/security/SpnegoUserPrincipal;-><init>(Ljava/lang/String;[B)V

    .line 149
    new-instance v1, Ljavax/security/auth/Subject;

    invoke-direct {v1}, Ljavax/security/auth/Subject;-><init>()V

    .line 150
    invoke-virtual {v1}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v3, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-interface {v3, v1, v2, v5}, Lorg/eclipse/jetty/security/IdentityService;->newUserIdentity(Ljavax/security/auth/Subject;Ljava/security/Principal;[Ljava/lang/String;)Lorg/eclipse/jetty/server/UserIdentity;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 159
    sget-object v2, Lorg/eclipse/jetty/security/SpnegoLoginService;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public logout(Lorg/eclipse/jetty/server/UserIdentity;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SpnegoLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_config:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 178
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SpnegoLoginService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SpnegoLoginService;->_name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public validate(Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method
