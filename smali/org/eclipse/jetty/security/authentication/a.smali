.class final Lorg/eclipse/jetty/security/authentication/a;
.super Ljava/lang/Object;
.source "DeferredAuthentication.java"

# interfaces
.implements Lc/c/c/e;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCookie(Lc/c/c/a;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final addDateHeader(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final addIntHeader(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public final encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public final encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public final encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public final encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public final flushBuffer()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public final getBufferSize()I
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0x400

    return v0
.end method

.method public final getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderNames()Ljava/util/Collection;
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
    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders(Ljava/lang/String;)Ljava/util/Collection;
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
    .line 305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputStream()Lc/c/z;
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->access$000()Lc/c/z;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public final getWriter()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lorg/eclipse/jetty/util/IO;->getNullPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public final isCommitted()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public final resetBuffer()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public final sendError(I)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final sendError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public final sendRedirect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public final setBufferSize(I)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public final setCharacterEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public final setContentLength(I)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public final setDateHeader(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public final setIntHeader(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public final setLocale(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public final setStatus(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
