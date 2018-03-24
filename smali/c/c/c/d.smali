.class public Lc/c/c/d;
.super Lc/c/ah;
.source "HttpServletRequestWrapper.java"

# interfaces
.implements Lc/c/c/c;


# direct methods
.method public constructor <init>(Lc/c/c/c;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lc/c/ah;-><init>(Lc/c/ac;)V

    .line 87
    return-void
.end method

.method private _getHttpServletRequest()Lc/c/c/c;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lc/c/ah;->getRequest()Lc/c/ac;

    move-result-object v0

    check-cast v0, Lc/c/c/c;

    return-object v0
.end method


# virtual methods
.method public authenticate(Lc/c/c/e;)Z
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->authenticate(Lc/c/c/e;)Z

    move-result v0

    return v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getAuthType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()[Lc/c/c/a;
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getCookies()[Lc/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->getIntHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Lc/c/c/q;
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->getPart(Ljava/lang/String;)Lc/c/c/q;

    move-result-object v0

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc/c/c/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getParts()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getPathTranslated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getRemoteUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lc/c/c/g;
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getSession()Lc/c/c/g;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Lc/c/c/g;
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->getSession(Z)Lc/c/c/g;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->isRequestedSessionIdFromCookie()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->isRequestedSessionIdFromURL()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->isRequestedSessionIdFromUrl()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->isRequestedSessionIdValid()Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/c;->isUserInRole(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/c;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lc/c/c/d;->_getHttpServletRequest()Lc/c/c/c;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/c;->logout()V

    .line 339
    return-void
.end method
