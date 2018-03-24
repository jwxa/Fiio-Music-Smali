.class public Lorg/eclipse/jetty/server/handler/ErrorHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "ErrorHandler.java"


# instance fields
.field _cacheControl:Ljava/lang/String;

.field _showMessageInTitle:Z

.field _showStacks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 46
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    .line 47
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    .line 48
    const-string v0, "must-revalidate,no-cache,no-store"

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMessageInTitle()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 58
    invoke-interface {p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v1, "text/html;charset=ISO-8859-1"

    invoke-interface {p4, v1}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "Cache-Control"

    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    new-instance v1, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 65
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v1, v2, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->handleErrorPage(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 67
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v0

    invoke-interface {p4, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 68
    invoke-interface {p4}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 69
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->destroy()V

    goto :goto_0
.end method

.method protected handleErrorPage(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 76
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPage(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public isShowStacks()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setShowMessageInTitle(Z)V
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    .line 199
    return-void
.end method

.method public setShowStacks(Z)V
    .locals 0

    .prologue
    .line 189
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showStacks:Z

    .line 190
    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    if-nez p2, :cond_1

    .line 238
    :cond_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 219
    sparse-switch v1, :sswitch_data_0

    .line 232
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 233
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 215
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :sswitch_0
    const-string v1, "&amp;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :sswitch_1
    const-string v1, "&lt;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :sswitch_2
    const-string v1, "&gt;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method protected writeErrorPage(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 83
    if-nez p4, :cond_0

    .line 84
    invoke-static {p3}, Lorg/eclipse/jetty/http/HttpStatus;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    :goto_0
    const-string v0, "<html>\n<head>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageHead(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;)V

    .line 88
    const-string v0, "</head>\n<body>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 89
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageBody(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 90
    const-string v0, "\n</body>\n</html>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 91
    return-void

    :cond_0
    move-object v4, p4

    goto :goto_0
.end method

.method protected writeErrorPageBody(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 113
    invoke-interface {p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 115
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageMessage(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz p5, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->writeErrorPageStacks(Lc/c/c/c;Ljava/io/Writer;)V

    .line 118
    :cond_0
    const-string v0, "<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 120
    const-string v1, "<br/>                                                \n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method protected writeErrorPageHead(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    const-string v0, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    const-string v0, "<title>Error "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ErrorHandler;->_showMessageInTitle:Z

    if-eqz v0, :cond_0

    .line 103
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 104
    invoke-virtual {p0, p2, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    :cond_0
    const-string v0, "</title>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected writeErrorPageMessage(Lc/c/c/c;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    const-string v0, "<h2>HTTP ERROR "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    const-string v0, "</h2>\n<p>Problem accessing "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2, p5}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 131
    const-string v0, ". Reason:\n<pre>    "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p2, p4}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 133
    const-string v0, "</pre></p>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected writeErrorPageStacks(Lc/c/c/c;Ljava/io/Writer;)V
    .locals 3

    .prologue
    .line 140
    const-string v0, "javax.servlet.error.exception"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 141
    :goto_0
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "<h3>Caused by:</h3><pre>"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 145
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 147
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 148
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/eclipse/jetty/server/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 149
    const-string v1, "</pre>\n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method
