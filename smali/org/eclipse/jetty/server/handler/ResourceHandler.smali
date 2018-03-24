.class public Lorg/eclipse/jetty/server/handler/ResourceHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "ResourceHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _aliases:Z

.field _baseResource:Lorg/eclipse/jetty/util/resource/Resource;

.field _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field _context:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field _defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field _directory:Z

.field _etags:Z

.field _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field _welcomeFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index.html"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 68
    new-instance v0, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 78
    return-void
.end method


# virtual methods
.method protected doDirectory(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 3

    .prologue
    .line 500
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    if-eqz v0, :cond_1

    .line 502
    invoke-interface {p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p3, v1, v0}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v1, "text/html; charset=UTF-8"

    invoke-interface {p2, v1}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 504
    invoke-interface {p2}, Lc/c/c/e;->getWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    :goto_1
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 507
    :cond_1
    const/16 v0, 0x193

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V

    goto :goto_1
.end method

.method protected doResponseHeaders(Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 520
    if-eqz p3, :cond_0

    .line 521
    invoke-interface {p1, p3}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 523
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    .line 525
    instance-of v2, p1, Lorg/eclipse/jetty/server/Response;

    if-eqz v2, :cond_3

    .line 527
    check-cast p1, Lorg/eclipse/jetty/server/Response;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v2

    .line 529
    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 530
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, v3, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 532
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_2

    .line 533
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 544
    :cond_2
    :goto_0
    return-void

    .line 537
    :cond_3
    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 538
    const-string v2, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_2

    .line 541
    const-string v0, "Cache-Control"

    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    .line 161
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Alias checking disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 165
    return-void
.end method

.method public getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method protected getResource(Lc/c/c/c;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2

    .prologue
    .line 322
    const-string v0, "javax.servlet.include.request_uri"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    const-string v1, "javax.servlet.include.path_info"

    invoke-interface {p1, v1}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    invoke-interface {p1}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-interface {p1}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    .line 340
    :cond_1
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 291
    if-eqz p1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 295
    if-nez v1, :cond_4

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-nez v1, :cond_3

    .line 314
    :cond_2
    :goto_0
    return-object v0

    .line 299
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_2

    .line 306
    :cond_4
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 311
    sget-object v2, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStylesheet()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 241
    :goto_0
    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_1

    .line 233
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/jetty-dir.css"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_defaultStylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getWelcome(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3

    .prologue
    .line 360
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 367
    :goto_1
    return-object v0

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 14

    .prologue
    .line 376
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v2, 0x0

    .line 381
    const-string v3, "GET"

    invoke-interface/range {p3 .. p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 383
    const-string v2, "HEAD"

    invoke-interface/range {p3 .. p3}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 389
    :cond_2
    const/4 v2, 0x1

    move v3, v2

    .line 392
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getResource(Lc/c/c/c;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 394
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 396
    :cond_3
    const-string v2, "/jetty-dir.css"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 398
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getStylesheet()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 399
    if-eqz v2, :cond_0

    .line 401
    const-string v4, "text/css"

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 411
    :cond_4
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 413
    sget-object v3, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " aliased to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 406
    :cond_5
    invoke-super/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 418
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 420
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 422
    invoke-interface/range {p3 .. p3}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 424
    invoke-interface/range {p3 .. p3}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 428
    :cond_7
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->getWelcome(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 429
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v2, v4

    .line 440
    :cond_8
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v6

    .line 441
    const/4 v4, 0x0

    .line 442
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    if-eqz v5, :cond_10

    .line 445
    const-string v4, "If-None-Match"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object v4

    .line 447
    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 449
    const/16 v2, 0x130

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lc/c/c/e;->setStatus(I)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->doDirectory(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 434
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    goto/16 :goto_0

    :cond_a
    move-object v5, v4

    .line 456
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_b

    .line 458
    const-string v4, "If-Modified-Since"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lc/c/c/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v8

    .line 459
    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_b

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    cmp-long v4, v10, v8

    if-gtz v4, :cond_b

    .line 461
    const/16 v2, 0x130

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lc/c/c/e;->setStatus(I)V

    goto/16 :goto_0

    .line 466
    :cond_b
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 467
    if-nez v4, :cond_c

    .line 468
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-interface/range {p3 .. p3}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 471
    :cond_c
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->doResponseHeaders(Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V

    .line 472
    const-string v4, "Last-Modified"

    move-object/from16 v0, p4

    invoke-interface {v0, v4, v6, v7}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 473
    iget-boolean v4, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    if-eqz v4, :cond_d

    .line 474
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v4

    sget-object v6, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v4, v6, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 476
    :cond_d
    if-nez v3, :cond_0

    .line 479
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lc/c/c/e;->getOutputStream()Lc/c/z;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 484
    :goto_4
    instance-of v4, v3, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v4, :cond_f

    .line 487
    check-cast v3, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    .line 481
    :catch_0
    move-exception v3

    new-instance v3, Lorg/eclipse/jetty/io/WriterOutputStream;

    invoke-interface/range {p4 .. p4}, Lc/c/c/e;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    goto :goto_4

    .line 492
    :cond_f
    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_0

    :cond_10
    move-object v5, v4

    goto/16 :goto_2

    :cond_11
    move v3, v2

    goto/16 :goto_1
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    return v0
.end method

.method public isDirectoriesListed()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    return v0
.end method

.method public isEtags()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    return v0
.end method

.method public setAliases(Z)V
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_aliases:Z

    .line 112
    return-void
.end method

.method public setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_baseResource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 197
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 283
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 284
    return-void

    .line 283
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDirectoriesListed(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_directory:Z

    .line 130
    return-void
.end method

.method public setEtags(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_etags:Z

    .line 148
    return-void
.end method

.method public setMimeTypes(Lorg/eclipse/jetty/http/MimeTypes;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 90
    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 207
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->setBaseResource(Lorg/eclipse/jetty/util/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStylesheet(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    :try_start_0
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    sget-object v0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to find custom stylesheet: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 262
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    sget-object v1, Lorg/eclipse/jetty/server/handler/ResourceHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 355
    return-void
.end method
