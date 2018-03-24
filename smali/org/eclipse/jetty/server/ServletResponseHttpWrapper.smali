.class public Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;
.super Lc/c/aj;
.source "ServletResponseHttpWrapper.java"

# interfaces
.implements Lc/c/c/e;


# direct methods
.method public constructor <init>(Lc/c/ai;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc/c/aj;-><init>(Lc/c/ai;)V

    .line 38
    return-void
.end method


# virtual methods
.method public addCookie(Lc/c/c/a;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

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
    .line 126
    const/4 v0, 0x0

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
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public sendError(I)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
