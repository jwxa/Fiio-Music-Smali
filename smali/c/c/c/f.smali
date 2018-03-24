.class public Lc/c/c/f;
.super Lc/c/aj;
.source "HttpServletResponseWrapper.java"

# interfaces
.implements Lc/c/c/e;


# direct methods
.method public constructor <init>(Lc/c/c/e;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lc/c/aj;-><init>(Lc/c/ai;)V

    .line 87
    return-void
.end method

.method private _getHttpServletResponse()Lc/c/c/e;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lc/c/aj;->getResponse()Lc/c/ai;

    move-result-object v0

    check-cast v0, Lc/c/c/e;

    return-object v0
.end method


# virtual methods
.method public addCookie(Lc/c/c/a;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->addCookie(Lc/c/c/a;)V

    .line 99
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc/c/c/e;->addDateHeader(Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->addIntHeader(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/e;->getHeaderNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->getHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0}, Lc/c/c/e;->getStatus()I

    move-result v0

    return v0
.end method

.method public sendError(I)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->sendError(I)V

    .line 165
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 181
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->setIntHeader(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/c/e;->setStatus(I)V

    .line 229
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lc/c/c/f;->_getHttpServletResponse()Lc/c/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/c/e;->setStatus(ILjava/lang/String;)V

    .line 242
    return-void
.end method
