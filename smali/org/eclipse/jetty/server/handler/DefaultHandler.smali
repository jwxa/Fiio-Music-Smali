.class public Lorg/eclipse/jetty/server/handler/DefaultHandler;
.super Lorg/eclipse/jetty/server/handler/AbstractHandler;
.source "DefaultHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _favicon:[B

.field final _faviconModified:J

.field _serveIcon:Z

.field _showContexts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/eclipse/jetty/server/handler/DefaultHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/AbstractHandler;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    .line 60
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    .line 61
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/eclipse/jetty/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 70
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    sget-object v1, Lorg/eclipse/jetty/server/handler/DefaultHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getServeIcon()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    return v0
.end method

.method public getShowContexts()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 8

    .prologue
    const/16 v4, 0x194

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-interface {p4}, Lc/c/c/e;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 91
    invoke-interface {p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    if-eqz v1, :cond_3

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/favicon.ico"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string v0, "If-Modified-Since"

    invoke-interface {p3, v0}, Lc/c/c/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 97
    const/16 v0, 0x130

    invoke-interface {p4, v0}, Lc/c/c/e;->setStatus(I)V

    goto :goto_0

    .line 100
    :cond_2
    const/16 v0, 0xc8

    invoke-interface {p4, v0}, Lc/c/c/e;->setStatus(I)V

    .line 101
    const-string v0, "image/x-icon"

    invoke-interface {p4, v0}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    array-length v0, v0

    invoke-interface {p4, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 103
    const-string v0, "Last-Modified"

    iget-wide v2, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_faviconModified:J

    invoke-interface {p4, v0, v2, v3}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 104
    const-string v0, "Cache-Control"

    const-string v1, "max-age=360000,public"

    invoke-interface {p4, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-interface {p4}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_favicon:[B

    invoke-virtual {v0, v1}, Lc/c/z;->write([B)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 113
    :cond_4
    invoke-interface {p4, v4}, Lc/c/c/e;->sendError(I)V

    goto :goto_0

    .line 117
    :cond_5
    invoke-interface {p4, v4}, Lc/c/c/e;->setStatus(I)V

    .line 118
    const-string v0, "text/html"

    invoke-interface {p4, v0}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 120
    new-instance v4, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;

    const/16 v0, 0x5dc

    invoke-direct {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 122
    const-string v0, "<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 123
    const-string v0, "</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 124
    const-string v0, "No context on this server matched or handled this request.<BR>"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    if-eqz v0, :cond_e

    .line 128
    const-string v0, "Contexts known to this server are: <ul>"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/DefaultHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 131
    if-nez v0, :cond_9

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    move v3, v2

    .line 133
    :goto_2
    if-eqz v1, :cond_e

    array-length v0, v1

    if-ge v3, v0, :cond_e

    .line 135
    aget-object v0, v1, v3

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 136
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 138
    const-string v5, "<li><a href=\""

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_6

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Lc/c/c/c;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 141
    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 143
    const-string v5, "/"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 144
    :cond_7
    const-string v5, "\">"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_8

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&nbsp;@&nbsp;"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Lc/c/c/c;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 148
    :cond_8
    const-string v5, "&nbsp;--->&nbsp;"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 150
    const-string v0, "</a></li>\n"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 133
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 131
    :cond_9
    const-class v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 154
    :cond_a
    const-string v5, "<li>"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_b

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&nbsp;@&nbsp;"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p3}, Lc/c/c/c;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 158
    :cond_b
    const-string v5, "&nbsp;--->&nbsp;"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isFailed()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 161
    const-string v5, " [failed]"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 162
    :cond_c
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    const-string v0, " [stopped]"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 164
    :cond_d
    const-string v0, "</li>\n"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    move v0, v2

    .line 169
    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 170
    const-string v1, "\n<!-- Padding for IE                  -->"

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 172
    :cond_f
    const-string v0, "\n</BODY>\n</HTML>\n"

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->flush()V

    .line 174
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->size()I

    move-result v0

    invoke-interface {p4, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 175
    invoke-interface {p4}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v0

    .line 176
    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0
.end method

.method public setServeIcon(Z)V
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_serveIcon:Z

    .line 196
    return-void
.end method

.method public setShowContexts(Z)V
    .locals 0

    .prologue
    .line 205
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/DefaultHandler;->_showContexts:Z

    .line 206
    return-void
.end method
