.class public abstract Lorg/eclipse/jetty/security/SecurityHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "SecurityHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static __NOBODY:Ljava/security/Principal;

.field public static __NO_USER:Ljava/security/Principal;


# instance fields
.field private _authMethod:Ljava/lang/String;

.field private _authenticator:Lorg/eclipse/jetty/security/Authenticator;

.field private _authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

.field private _checkWelcomeFiles:Z

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private final _initParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _loginService:Lorg/eclipse/jetty/security/LoginService;

.field private _loginServiceShared:Z

.field private _realmName:Ljava/lang/String;

.field private _renewSession:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 647
    new-instance v0, Lorg/eclipse/jetty/security/d;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/d;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    .line 671
    new-instance v0, Lorg/eclipse/jetty/security/e;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/e;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 71
    new-instance v0, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultAuthenticatorFactory;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_renewSession:Z

    .line 83
    return-void
.end method

.method public static getCurrentSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 583
    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 587
    :goto_0
    return-object v0

    .line 586
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/SecurityHandler;

    goto :goto_0
.end method


# virtual methods
.method protected checkSecurity(Lorg/eclipse/jetty/server/Request;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 402
    sget-object v2, Lorg/eclipse/jetty/security/f;->a:[I

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/d;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 415
    :goto_0
    :pswitch_0
    return v0

    .line 408
    :pswitch_1
    iget-boolean v2, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    if-eqz v2, :cond_0

    const-string v2, "org.eclipse.jetty.server.welcome"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 410
    const-string v1, "org.eclipse.jetty.server.welcome"

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/server/Request;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 413
    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
.end method

.method protected abstract checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z
.end method

.method protected doStart()V
    .locals 6

    .prologue
    .line 287
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 291
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    const-string v3, "org.eclipse.jetty.security."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/security/SecurityHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 296
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jetty/security/c;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/security/c;-><init>(Lorg/eclipse/jetty/security/SecurityHandler;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 329
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-nez v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->findLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v0, :cond_3

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    .line 336
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_6

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 342
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_5

    .line 343
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->findIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 345
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 346
    new-instance v0, Lorg/eclipse/jetty/security/DefaultIdentityService;

    invoke-direct {v0}, Lorg/eclipse/jetty/security/DefaultIdentityService;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 349
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v0, :cond_7

    .line 351
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    if-nez v0, :cond_a

    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/LoginService;->setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V

    .line 357
    :cond_7
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_8

    .line 358
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    .line 360
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v0, :cond_9

    .line 362
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v2

    iget-object v4, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v5, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/security/Authenticator$Factory;->getAuthenticator(Lorg/eclipse/jetty/server/Server;Lc/c/s;Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;Lorg/eclipse/jetty/security/IdentityService;Lorg/eclipse/jetty/security/LoginService;)Lorg/eclipse/jetty/security/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    if-eqz v0, :cond_9

    .line 364
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/Authenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 367
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    if-nez v0, :cond_b

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 371
    sget-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ServerAuthentication for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ServerAuthentication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eq v0, v1, :cond_7

    .line 354
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoginService has different IdentityService to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_b
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/security/Authenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 378
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    .line 382
    :cond_c
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 383
    return-void
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStop()V

    .line 394
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    instance-of v0, v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    .line 397
    :cond_0
    return-void
.end method

.method protected findIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/security/IdentityService;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method protected findLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 4

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/security/LoginService;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->getBeans(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getRealmName()Ljava/lang/String;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_1

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/LoginService;

    .line 265
    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jetty/security/LoginService;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    :goto_0
    return-object v0

    .line 268
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 269
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/LoginService;

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticator()Lorg/eclipse/jetty/security/Authenticator;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    return-object v0
.end method

.method public getAuthenticatorFactory()Lorg/eclipse/jetty/security/Authenticator$Factory;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    return-object v0
.end method

.method public getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLoginService()Lorg/eclipse/jetty/security/LoginService;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    return-object v0
.end method

.method public getRealmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 12

    .prologue
    const/16 v7, 0x193

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 448
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v4

    .line 449
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v9

    .line 451
    if-nez v9, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v10, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 456
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/SecurityHandler;->checkSecurity(Lorg/eclipse/jetty/server/Request;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 458
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/security/SecurityHandler;->prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;

    move-result-object v5

    .line 461
    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/eclipse/jetty/security/SecurityHandler;->checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 463
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lc/c/c/e;->sendError(I)V

    .line 466
    invoke-virtual {p2, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {p0, p2, v4, v5}, Lorg/eclipse/jetty/security/SecurityHandler;->isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z

    move-result v11

    .line 475
    if-eqz v11, :cond_3

    if-nez v10, :cond_3

    .line 477
    sget-object v1, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No authenticator for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lc/c/c/e;->sendError(I)V

    .line 481
    invoke-virtual {p2, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto :goto_0

    .line 490
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v2

    .line 491
    if-eqz v2, :cond_4

    sget-object v1, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    if-ne v2, v1, :cond_5

    .line 492
    :cond_4
    if-nez v10, :cond_8

    sget-object v1, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    :goto_1
    move-object v2, v1

    .line 494
    :cond_5
    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$Wrapped;

    if-eqz v1, :cond_6

    .line 496
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Wrapped;

    move-object v1, v0

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$Wrapped;->getHttpServletRequest()Lc/c/c/c;

    move-result-object p3

    .line 497
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Wrapped;

    move-object v1, v0

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Authentication$Wrapped;->getHttpServletResponse()Lc/c/c/e;

    move-result-object p4

    .line 500
    :cond_6
    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-eqz v1, :cond_9

    .line 502
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_0
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v3

    .line 570
    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 492
    :cond_8
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v10, p3, v0, v11}, Lorg/eclipse/jetty/security/Authenticator;->validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    goto :goto_1

    .line 504
    :cond_9
    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v1, :cond_c

    .line 506
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v7, v0

    .line 507
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 508
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v1, :cond_13

    .line 509
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v7}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 511
    :goto_3
    if-eqz v11, :cond_a

    .line 513
    :try_start_2
    invoke-interface {v7}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/security/SecurityHandler;->checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z

    move-result v1

    .line 514
    if-nez v1, :cond_a

    .line 516
    const/16 v1, 0x193

    const-string v2, "!role"

    move-object/from16 v0, p4

    invoke-interface {v0, v1, v2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 517
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_2
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 570
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v1, v8}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 522
    :cond_a
    :try_start_3
    move-object/from16 v0, p4

    invoke-interface {v9, p1, p2, p3, v0}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 523
    if-eqz v10, :cond_b

    .line 524
    move-object/from16 v0, p4

    invoke-interface {v10, p3, v0, v11, v7}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_3
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_b
    move-object v1, v8

    .line 525
    goto :goto_2

    .line 526
    :cond_c
    :try_start_4
    instance-of v1, v2, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v1, :cond_f

    .line 528
    move-object v0, v2

    check-cast v0, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object v1, v0

    .line 529
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V
    :try_end_4
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 533
    :try_start_5
    move-object/from16 v0, p4

    invoke-interface {v9, p1, p2, p3, v0}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 537
    :try_start_6
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->getPreviousAssociation()Ljava/lang/Object;
    :try_end_6
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    .line 540
    if-eqz v10, :cond_e

    .line 542
    :try_start_7
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAuthentication()Lorg/eclipse/jetty/server/Authentication;

    move-result-object v1

    .line 543
    instance-of v3, v1, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v3, :cond_d

    .line 545
    check-cast v1, Lorg/eclipse/jetty/server/Authentication$User;

    .line 546
    move-object/from16 v0, p4

    invoke-interface {v10, p3, v0, v11, v1}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_7
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v1, v2

    .line 547
    goto/16 :goto_2

    .line 537
    :catchall_0
    move-exception v2

    :try_start_8
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->getPreviousAssociation()Ljava/lang/Object;

    move-result-object v3

    throw v2
    :try_end_8
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 562
    :catch_0
    move-exception v1

    .line 566
    :goto_4
    const/16 v2, 0x1f4

    :try_start_9
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ServerAuthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v1}, Lc/c/c/e;->sendError(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 570
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v1, v3}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 549
    :cond_d
    const/4 v1, 0x0

    :try_start_a
    move-object/from16 v0, p4

    invoke-interface {v10, p3, v0, v11, v1}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_a
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_e
    move-object v1, v2

    .line 551
    goto/16 :goto_2

    .line 554
    :cond_f
    :try_start_b
    invoke-virtual {p2, v2}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 555
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v1, :cond_12

    .line 556
    iget-object v1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/security/IdentityService;->associate(Lorg/eclipse/jetty/server/UserIdentity;)Ljava/lang/Object;
    :try_end_b
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v1

    .line 557
    :goto_5
    :try_start_c
    move-object/from16 v0, p4

    invoke-interface {v9, p1, p2, p3, v0}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 558
    if-eqz v10, :cond_7

    .line 559
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-interface {v10, p3, v0, v11, v2}, Lorg/eclipse/jetty/security/Authenticator;->secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    :try_end_c
    .catch Lorg/eclipse/jetty/security/ServerAuthException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_2

    .line 562
    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_4

    .line 570
    :catchall_1
    move-exception v1

    :goto_6
    iget-object v2, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_10

    .line 571
    iget-object v2, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    :cond_10
    throw v1

    .line 575
    :cond_11
    move-object/from16 v0, p4

    invoke-interface {v9, p1, p2, p3, v0}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto/16 :goto_0

    .line 570
    :catchall_2
    move-exception v1

    move-object v3, v8

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v3, v2

    goto :goto_6

    :catchall_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_6

    .line 562
    :catch_2
    move-exception v1

    move-object v3, v8

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v3, v2

    goto :goto_4

    :cond_12
    move-object v1, v3

    goto :goto_5

    :cond_13
    move-object v8, v3

    goto/16 :goto_3
.end method

.method protected abstract isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
.end method

.method public isCheckWelcomeFiles()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    return v0
.end method

.method public isSessionRenewedOnAuthentication()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_renewSession:Z

    return v0
.end method

.method public logout(Lorg/eclipse/jetty/server/Authentication$User;)V
    .locals 4

    .prologue
    .line 593
    sget-object v0, Lorg/eclipse/jetty/security/SecurityHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "logout {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    .line 597
    invoke-interface {p1}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/LoginService;->logout(Lorg/eclipse/jetty/server/UserIdentity;)V

    .line 600
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_1

    .line 604
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/security/IdentityService;->disassociate(Ljava/lang/Object;)V

    .line 607
    :cond_1
    return-void
.end method

.method protected abstract prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;
.end method

.method public setAuthMethod(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authMethod:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setAuthenticator(Lorg/eclipse/jetty/security/Authenticator;)V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticator:Lorg/eclipse/jetty/security/Authenticator;

    .line 143
    return-void
.end method

.method public setAuthenticatorFactory(Lorg/eclipse/jetty/security/Authenticator$Factory;)V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_authenticatorFactory:Lorg/eclipse/jetty/security/Authenticator$Factory;

    .line 164
    return-void
.end method

.method public setCheckWelcomeFiles(Z)V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_checkWelcomeFiles:Z

    .line 228
    return-void
.end method

.method public setIdentityService(Lorg/eclipse/jetty/security/IdentityService;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 103
    return-void
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_initParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setLoginService(Lorg/eclipse/jetty/security/LoginService;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_loginServiceShared:Z

    .line 124
    return-void
.end method

.method public setRealmName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_realmName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setSessionRenewedOnAuthentication(Z)V
    .locals 0

    .prologue
    .line 436
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/SecurityHandler;->_renewSession:Z

    .line 437
    return-void
.end method
