.class public Lorg/eclipse/jetty/security/authentication/FormAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "FormAuthenticator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __FORM_DISPATCH:Ljava/lang/String; = "org.eclipse.jetty.security.dispatch"

.field public static final __FORM_ERROR_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_error_page"

.field public static final __FORM_LOGIN_PAGE:Ljava/lang/String; = "org.eclipse.jetty.security.form_login_page"

.field public static final __J_PASSWORD:Ljava/lang/String; = "j_password"

.field public static final __J_POST:Ljava/lang/String; = "org.eclipse.jetty.security.form_POST"

.field public static final __J_SECURITY_CHECK:Ljava/lang/String; = "/j_security_check"

.field public static final __J_URI:Ljava/lang/String; = "org.eclipse.jetty.security.form_URI"

.field public static final __J_USERNAME:Ljava/lang/String; = "j_username"


# instance fields
.field private _alwaysSaveUri:Z

.field private _dispatch:Z

.field private _formErrorPage:Ljava/lang/String;

.field private _formErrorPath:Ljava/lang/String;

.field private _formLoginPage:Ljava/lang/String;

.field private _formLoginPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 98
    :cond_0
    if-eqz p2, :cond_1

    .line 99
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 100
    :cond_1
    iput-boolean p3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    .line 101
    return-void
.end method

.method private setErrorPage(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x3f

    const/4 v3, 0x0

    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 166
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 167
    iput-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 173
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "form-error-page must start with /"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_3
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setLoginPage(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x3f

    const/4 v3, 0x0

    .line 150
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    sget-object v0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "form-login-page must start with /"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    .line 159
    :cond_1
    return-void
.end method


# virtual methods
.method public getAlwaysSaveUri()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    return v0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "FORM"

    return-object v0
.end method

.method public isJSecurityCheck(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 371
    const-string v2, "/j_security_check"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 373
    if-gez v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    add-int/lit8 v2, v2, 0x11

    .line 376
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 377
    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 379
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isLoginOrErrorPage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 385
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;
    .locals 4

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 193
    check-cast p3, Lc/c/c/c;

    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lc/c/c/c;->getSession(Z)Lc/c/c/g;

    move-result-object v1

    .line 194
    new-instance v2, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, p2}, Lorg/eclipse/jetty/security/authentication/SessionAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;Ljava/lang/Object;)V

    .line 195
    const-string v3, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v1, v3, v2}, Lc/c/c/g;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_0
    return-object v0
.end method

.method public secureResponse(Lc/c/ac;Lc/c/ai;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public setAlwaysSaveUri(Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    .line 114
    return-void
.end method

.method public setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;->setConfiguration(Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;)V

    .line 131
    const-string v0, "org.eclipse.jetty.security.form_login_page"

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 134
    :cond_0
    const-string v0, "org.eclipse.jetty.security.form_error_page"

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    .line 137
    :cond_1
    const-string v0, "org.eclipse.jetty.security.dispatch"

    invoke-interface {p1, v0}, Lorg/eclipse/jetty/security/Authenticator$AuthConfiguration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    .line 139
    return-void

    .line 138
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public validateRequest(Lc/c/ac;Lc/c/ai;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 203
    move-object v2, p1

    check-cast v2, Lc/c/c/c;

    .line 204
    check-cast p2, Lc/c/c/e;

    .line 205
    invoke-interface {v2}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    .line 206
    if-nez v3, :cond_0

    .line 207
    const-string v3, "/"

    .line 209
    :cond_0
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v4, p3

    .line 210
    if-nez v4, :cond_2

    .line 211
    new-instance v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 354
    :cond_1
    :goto_0
    return-object v3

    .line 213
    :cond_2
    invoke-interface {v2}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Lc/c/c/e;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 214
    new-instance v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-interface {v2, v6}, Lc/c/c/c;->getSession(Z)Lc/c/c/g;

    move-result-object v6

    .line 221
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->isJSecurityCheck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 223
    const-string v3, "j_username"

    invoke-interface {v2, v3}, Lc/c/c/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    const-string v4, "j_password"

    invoke-interface {v2, v4}, Lc/c/c/c;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {p0, v3, v4, v2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v4

    .line 227
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lc/c/c/c;->getSession(Z)Lc/c/c/g;

    move-result-object v5

    .line 228
    if-eqz v4, :cond_6

    .line 232
    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lc/c/x; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :try_start_1
    const-string v3, "org.eclipse.jetty.security.form_URI"

    invoke-interface {v5, v3}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 238
    :cond_4
    invoke-interface {v2}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 240
    const-string v3, "/"

    .line 242
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p2, v2}, Lc/c/c/e;->setContentLength(I)V

    .line 244
    invoke-interface {p2, v3}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    .line 246
    new-instance v3, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v4}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lc/c/x; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v2

    .line 360
    new-instance v3, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v3, v2}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 242
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lc/c/x; {:try_start_3 .. :try_end_3} :catch_1

    .line 362
    :catch_1
    move-exception v2

    .line 364
    new-instance v3, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-direct {v3, v2}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 250
    :cond_6
    :try_start_4
    sget-object v4, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 251
    sget-object v4, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Form authentication FAILED for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/eclipse/jetty/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_7
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 254
    if-eqz p2, :cond_8

    .line 255
    const/16 v2, 0x193

    invoke-interface {p2, v2}, Lc/c/c/e;->sendError(I)V

    .line 269
    :cond_8
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 257
    :cond_9
    iget-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    if-eqz v3, :cond_a

    .line 259
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc/c/c/c;->getRequestDispatcher(Ljava/lang/String;)Lc/c/p;

    move-result-object v3

    .line 260
    const-string v4, "Cache-Control"

    const-string v5, "No-cache"

    invoke-interface {p2, v4, v5}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v4, "Expires"

    const-wide/16 v6, 0x1

    invoke-interface {p2, v4, v6, v7}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 262
    new-instance v4, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    invoke-direct {v4, v2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Lc/c/c/c;)V

    new-instance v2, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    invoke-direct {v2, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Lc/c/c/e;)V

    invoke-interface {v3, v4, v2}, Lc/c/p;->forward(Lc/c/ac;Lc/c/ai;)V

    goto :goto_1

    .line 266
    :cond_a
    invoke-interface {v2}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formErrorPage:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :cond_b
    const-string v3, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v6, v3}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/Authentication;

    .line 274
    if-eqz v3, :cond_c

    .line 277
    instance-of v4, v3, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    if-eqz v4, :cond_d

    iget-object v5, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_loginService:Lorg/eclipse/jetty/security/LoginService;

    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    move-object v4, v0

    invoke-interface {v4}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/security/LoginService;->validate(Lorg/eclipse/jetty/server/UserIdentity;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 282
    const-string v3, "org.eclipse.jetty.security.UserIdentity"

    invoke-interface {v6, v3}, Lc/c/c/g;->removeAttribute(Ljava/lang/String;)V

    .line 316
    :cond_c
    invoke-static {p2}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Lc/c/c/e;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 318
    sget-object v2, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "auth deferred {}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v6}, Lc/c/c/g;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 286
    :cond_d
    const-string v4, "org.eclipse.jetty.security.form_URI"

    invoke-interface {v6, v4}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    if-eqz v4, :cond_1

    .line 289
    const-string v5, "org.eclipse.jetty.security.form_POST"

    invoke-interface {v6, v5}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/util/MultiMap;

    .line 290
    if-eqz v5, :cond_10

    .line 292
    invoke-interface {v2}, Lc/c/c/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v7

    .line 293
    invoke-interface {v2}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 294
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-interface {v2}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_e
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, "org.eclipse.jetty.security.form_POST"

    invoke-interface {v6, v2}, Lc/c/c/g;->removeAttribute(Ljava/lang/String;)V

    .line 302
    instance-of v2, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v2, :cond_f

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .line 303
    :goto_2
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    goto/16 :goto_0

    .line 302
    :cond_f
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p1

    goto :goto_2

    .line 308
    :cond_10
    const-string v2, "org.eclipse.jetty.security.form_URI"

    invoke-interface {v6, v2}, Lc/c/c/g;->removeAttribute(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_11
    monitor-enter v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lc/c/x; {:try_start_4 .. :try_end_4} :catch_1

    .line 326
    :try_start_5
    const-string v3, "org.eclipse.jetty.security.form_URI"

    invoke-interface {v6, v3}, Lc/c/c/g;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_alwaysSaveUri:Z

    if-eqz v3, :cond_14

    .line 328
    :cond_12
    invoke-interface {v2}, Lc/c/c/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v3

    .line 329
    invoke-interface {v2}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 330
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v2}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_13
    const-string v4, "org.eclipse.jetty.security.form_URI"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v4, v3}, Lc/c/c/g;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {p1}, Lc/c/ac;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "POST"

    invoke-interface {v2}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 335
    instance-of v3, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v3, :cond_15

    check-cast p1, Lorg/eclipse/jetty/server/Request;

    .line 336
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 337
    const-string v3, "org.eclipse.jetty.security.form_POST"

    new-instance v4, Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    invoke-interface {v6, v3, v4}, Lc/c/c/g;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_14
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 343
    :try_start_6
    iget-boolean v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_dispatch:Z

    if-eqz v3, :cond_16

    .line 345
    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc/c/c/c;->getRequestDispatcher(Ljava/lang/String;)Lc/c/p;

    move-result-object v3

    .line 346
    const-string v4, "Cache-Control"

    const-string v5, "No-cache"

    invoke-interface {p2, v4, v5}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v4, "Expires"

    const-wide/16 v6, 0x1

    invoke-interface {p2, v4, v6, v7}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 348
    new-instance v4, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;

    invoke-direct {v4, v2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormRequest;-><init>(Lc/c/c/c;)V

    new-instance v2, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;

    invoke-direct {v2, p2}, Lorg/eclipse/jetty/security/authentication/FormAuthenticator$FormResponse;-><init>(Lc/c/c/e;)V

    invoke-interface {v3, v4, v2}, Lc/c/p;->forward(Lc/c/ac;Lc/c/ai;)V

    .line 354
    :goto_4
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lc/c/x; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 335
    :cond_15
    :try_start_7
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object p1

    goto :goto_3

    .line 340
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v6

    throw v2

    .line 352
    :cond_16
    invoke-interface {v2}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/security/authentication/FormAuthenticator;->_formLoginPage:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lc/c/x; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4
.end method
