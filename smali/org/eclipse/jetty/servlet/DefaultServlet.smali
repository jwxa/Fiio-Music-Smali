.class public Lorg/eclipse/jetty/servlet/DefaultServlet;
.super Lc/c/c/b;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final serialVersionUID:J = 0x446c8213da929ba9L


# instance fields
.field private _acceptRanges:Z

.field private _cache:Lorg/eclipse/jetty/server/ResourceCache;

.field private _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _etags:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _pathInfoOnly:Z

.field private _redirectWelcome:Z

.field private _relativeResourceBase:Ljava/lang/String;

.field private _resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

.field private _servletContext:Lc/c/s;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field private _useFileMappedBuffer:Z

.field private _welcomeExactServlets:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lorg/eclipse/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Lc/c/c/b;-><init>()V

    .line 151
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 152
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 153
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 154
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 155
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 156
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 157
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 158
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    .line 166
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return-void
.end method

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return p2

    :cond_1
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 355
    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 662
    :goto_0
    return-object v1

    .line 646
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_5

    .line 648
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 650
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v1, v0, v2

    goto :goto_0

    .line 653
    :cond_1
    iget-boolean v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v3, :cond_4

    :cond_2
    if-nez v0, :cond_4

    .line 655
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v3

    .line 656
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eq v4, v5, :cond_4

    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object v0, v1

    .line 646
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    .line 662
    goto :goto_0
.end method

.method private hasDefinedRange(Ljava/util/Enumeration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 598
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache;->flushCache()V

    .line 1121
    :cond_0
    invoke-super {p0}, Lc/c/c/b;->destroy()V

    .line 1122
    return-void
.end method

.method protected doGet(Lc/c/c/c;Lc/c/c/e;)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 403
    .line 406
    const-string v0, "javax.servlet.include.request_uri"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 407
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 409
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    const-string v1, "javax.servlet.include.path_info"

    invoke-interface {p1, v1}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 411
    if-nez v0, :cond_28

    .line 413
    invoke-interface {p1}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-interface {p1}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    move-object v6, v5

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    .line 429
    :goto_1
    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 430
    if-nez v1, :cond_0

    invoke-interface {p1}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 441
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v1, :cond_26

    if-nez v6, :cond_26

    if-nez v8, :cond_26

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".gz"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v4, :cond_a

    .line 446
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    move-object v1, v5

    .line 454
    :goto_2
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 457
    const-string v9, "Vary"

    const-string v10, "Accept-Encoding"

    invoke-interface {p2, v9, v10}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v9, "Accept-Encoding"

    invoke-interface {p1, v9}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 461
    if-eqz v9, :cond_1

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_1

    move v3, v2

    .line 467
    :cond_1
    :goto_3
    if-nez v3, :cond_25

    .line 469
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v9, :cond_c

    .line 470
    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v5

    :cond_2
    :goto_4
    move-object v4, v5

    move-object v5, v1

    .line 478
    :goto_5
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    sget-object v9, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "uri="

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " resource="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v5, :cond_d

    const-string v1, " content"

    :goto_6
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v9, v1, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 484
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 485
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    :catch_0
    move-exception v0

    .line 581
    :goto_7
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    invoke-interface {p2}, Lc/c/c/e;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 583
    const/16 v1, 0x1f4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lc/c/c/e;->sendError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    :cond_5
    if-eqz v5, :cond_23

    .line 588
    invoke-interface {v5}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 593
    :cond_6
    :goto_8
    return-void

    :cond_7
    move v0, v3

    .line 406
    goto/16 :goto_0

    .line 419
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 420
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    if-eqz v0, :cond_9

    const-string v0, "/"

    .line 421
    :goto_9
    invoke-interface {p1}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    .line 424
    const-string v6, "Range"

    invoke-interface {p1, v6}, Lc/c/c/c;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    .line 425
    invoke-direct {p0, v6}, Lorg/eclipse/jetty/servlet/DefaultServlet;->hasDefinedRange(Ljava/util/Enumeration;)Z

    move-result v7

    if-nez v7, :cond_27

    move-object v6, v5

    move-object v11, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v11

    .line 426
    goto/16 :goto_1

    .line 420
    :cond_9
    invoke-interface {p1}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 449
    :cond_a
    :try_start_4
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v1

    .line 450
    if-nez v1, :cond_b

    move-object v4, v5

    goto/16 :goto_2

    :cond_b
    :try_start_5
    invoke-interface {v1}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v4

    goto/16 :goto_2

    .line 473
    :cond_c
    :try_start_6
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v9, v7}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v1

    .line 474
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v5

    goto/16 :goto_4

    .line 479
    :cond_d
    :try_start_7
    const-string v1, ""

    goto/16 :goto_6

    .line 486
    :cond_e
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 587
    :cond_f
    :goto_a
    if-eqz v5, :cond_22

    .line 588
    invoke-interface {v5}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    goto :goto_8

    .line 488
    :cond_10
    :try_start_8
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_17

    .line 490
    if-eqz v8, :cond_13

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_13

    .line 492
    invoke-interface {p1}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 493
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 494
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_11
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-interface {v1}, Lc/c/s;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_a

    .line 587
    :catchall_0
    move-exception v0

    :goto_b
    if-eqz v5, :cond_24

    .line 588
    invoke-interface {v5}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 590
    :cond_12
    :goto_c
    throw v0

    .line 501
    :cond_13
    if-nez v5, :cond_14

    .line 502
    :try_start_9
    new-instance v1, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-interface {p2}, Lc/c/c/e;->getBufferSize()I

    move-result v8

    iget-boolean v9, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {v1, v4, v2, v8, v9}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    move-object v5, v1

    .line 504
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 506
    :cond_15
    if-eqz v3, :cond_16

    .line 508
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {p2, v1, v2}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-interface {v1, v7}, Lc/c/s;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 510
    if-eqz v1, :cond_16

    .line 511
    invoke-interface {p2, v1}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 513
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendData(Lc/c/c/c;Lc/c/c/e;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V

    goto/16 :goto_a

    .line 519
    :cond_17
    if-eqz v8, :cond_18

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1b

    const-string v1, "org.eclipse.jetty.server.nullPathInfo"

    invoke-interface {p1, v1}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 523
    :cond_18
    invoke-interface {p1}, Lc/c/c/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 524
    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 526
    :try_start_a
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 527
    if-gez v0, :cond_1a

    .line 528
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 531
    :goto_d
    invoke-interface {p1}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    .line 534
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    :cond_19
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    .line 539
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v1

    throw v0
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 530
    :cond_1a
    const/16 v2, 0x2f

    :try_start_c
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_d

    .line 540
    :cond_1b
    :try_start_d
    invoke-direct {p0, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 544
    sget-object v2, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "welcome={}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v2, v3, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v2, :cond_1d

    .line 548
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 549
    invoke-interface {p1}, Lc/c/c/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-interface {v3}, Lc/c/s;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 553
    :cond_1c
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-interface {v0}, Lc/c/s;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/c/c/e;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 558
    :cond_1d
    invoke-interface {p1, v1}, Lc/c/c/c;->getRequestDispatcher(Ljava/lang/String;)Lc/c/p;

    move-result-object v2

    .line 559
    if-eqz v2, :cond_f

    .line 561
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 562
    invoke-interface {v2, p1, p2}, Lc/c/p;->include(Lc/c/ac;Lc/c/ai;)V

    goto/16 :goto_a

    .line 565
    :cond_1e
    const-string v0, "org.eclipse.jetty.server.welcome"

    invoke-interface {p1, v0, v1}, Lc/c/c/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 566
    invoke-interface {v2, p1, p2}, Lc/c/p;->forward(Lc/c/ac;Lc/c/ai;)V

    goto/16 :goto_a

    .line 573
    :cond_1f
    new-instance v1, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {v1, v4, v2, v3}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;Z)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 574
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0, p1, p2, v4, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 575
    :cond_20
    invoke-virtual {p0, p1, p2, v4, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendDirectory(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_21
    move-object v5, v1

    goto/16 :goto_a

    .line 589
    :cond_22
    if-eqz v4, :cond_6

    .line 590
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_8

    .line 589
    :cond_23
    if-eqz v4, :cond_6

    .line 590
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_8

    .line 589
    :cond_24
    if-eqz v4, :cond_12

    .line 590
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_c

    .line 587
    :catchall_2
    move-exception v0

    move-object v4, v5

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    move-object v4, v5

    move-object v5, v1

    goto/16 :goto_b

    :catchall_4
    move-exception v0

    move-object v5, v1

    goto/16 :goto_b

    :catchall_5
    move-exception v0

    move-object v5, v1

    goto/16 :goto_b

    .line 579
    :catch_1
    move-exception v0

    move-object v4, v5

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v4, v5

    move-object v5, v1

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v5, v1

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object v5, v1

    goto/16 :goto_7

    :cond_25
    move-object v5, v1

    goto/16 :goto_5

    :cond_26
    move-object v1, v5

    move-object v4, v5

    goto/16 :goto_3

    :cond_27
    move-object v11, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v11

    goto/16 :goto_1

    :cond_28
    move-object v6, v5

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto/16 :goto_1
.end method

.method protected doOptions(Lc/c/c/c;Lc/c/c/e;)V
    .locals 2

    .prologue
    .line 624
    const-string v0, "Allow"

    const-string v1, "GET,HEAD,POST,OPTIONS"

    invoke-interface {p2, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method protected doPost(Lc/c/c/c;Lc/c/c/e;)V
    .locals 0

    .prologue
    .line 606
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->doGet(Lc/c/c/c;Lc/c/c/e;)V

    .line 607
    return-void
.end method

.method protected doTrace(Lc/c/c/c;Lc/c/c/e;)V
    .locals 1

    .prologue
    .line 616
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V

    .line 617
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Lc/c/s;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "org.eclipse.jetty.servlet.Default."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/s;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    invoke-super {p0, p1}, Lc/c/c/b;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 384
    :goto_0
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 392
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "/jetty-dir.css"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 395
    :cond_3
    return-object v0

    .line 380
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-interface {v0, p1}, Lc/c/s;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 381
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 389
    sget-object v2, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public init()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 178
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Lc/c/s;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->initContextHandler(Lc/c/s;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "index.html"

    aput-object v1, v0, v6

    const-string v1, "index.jsp"

    aput-object v1, v0, v5

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 187
    :cond_0
    const-string v0, "acceptRanges"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 188
    const-string v0, "dirAllowed"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 189
    const-string v0, "redirectWelcome"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 190
    const-string v0, "gzip"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 191
    const-string v0, "pathInfoOnly"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 193
    const-string v0, "exact"

    const-string v1, "welcomeServlets"

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iput-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 196
    iput-boolean v6, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 201
    :goto_0
    const-string v0, "aliases"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-string v1, "aliases"

    invoke-direct {p0, v1, v6}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAliases(Z)V

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v0

    .line 205
    if-nez v0, :cond_3

    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Alias checking disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    const-string v0, "welcomeServlets"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    goto :goto_0

    .line 207
    :cond_3
    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    const-string v1, "Aliases are enabled! Security constraints may be bypassed!!!"

    invoke-interface {v0, v1}, Lc/c/s;->log(Ljava/lang/String;)V

    .line 210
    :cond_4
    const-string v0, "useFileMappedBuffer"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 212
    const-string v0, "relativeResourceBase"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    .line 214
    const-string v0, "resourceBase"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_6

    .line 217
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 218
    new-instance v0, Lc/c/ao;

    const-string v1, "resourceBase & relativeResourceBase"

    invoke-direct {v0, v1}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_5
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_6
    const-string v0, "stylesheet"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_7

    .line 232
    :try_start_1
    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 233
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 235
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 239
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_8

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/jetty-dir.css"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_8
    :goto_1
    const-string v0, "cacheControl"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_9

    .line 252
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 254
    :cond_9
    const-string v0, "resourceCache"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v0, "maxCacheSize"

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v7

    .line 256
    const-string v0, "maxCachedFileSize"

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v8

    .line 257
    const-string v0, "maxCachedFiles"

    invoke-direct {p0, v0, v4}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v9

    .line 258
    if-eqz v1, :cond_e

    .line 260
    if-ne v7, v10, :cond_a

    if-ne v8, v4, :cond_a

    if-eq v9, v4, :cond_b

    .line 261
    :cond_a
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "ignoring resource cache configuration, using resourceCache attribute"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_b
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_d

    .line 263
    :cond_c
    new-instance v0, Lc/c/ao;

    const-string v1, "resourceCache specified with resource bases"

    invoke-direct {v0, v1}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    new-instance v1, Lc/c/ao;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :catch_1
    move-exception v0

    .line 246
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 264
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Lc/c/s;

    invoke-interface {v0, v1}, Lc/c/s;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 266
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Cache {}={}"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v6

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    aput-object v1, v3, v5

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_e
    const-string v0, "etags"

    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    .line 273
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v0, :cond_11

    if-lez v9, :cond_11

    .line 275
    new-instance v0, Lorg/eclipse/jetty/server/ResourceCache;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/server/ResourceCache;-><init>(Lorg/eclipse/jetty/server/ResourceCache;Lorg/eclipse/jetty/util/resource/ResourceFactory;Lorg/eclipse/jetty/http/MimeTypes;ZZ)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 277
    if-lez v7, :cond_f

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCacheSize(I)V

    .line 279
    :cond_f
    if-lt v8, v10, :cond_10

    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFileSize(I)V

    .line 281
    :cond_10
    if-lt v9, v10, :cond_11

    .line 282
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFiles(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :cond_11
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v1, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 292
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    array-length v2, v1

    move v0, v6

    :goto_2
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 293
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletInstance()Lc/c/q;

    move-result-object v4

    if-ne v4, p0, :cond_12

    .line 294
    iput-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 292
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 285
    :catch_2
    move-exception v0

    .line 287
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    new-instance v1, Lc/c/ao;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_13
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 298
    sget-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resource base = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_14
    return-void
.end method

.method protected initContextHandler(Lc/c/s;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 312
    if-nez v0, :cond_1

    .line 314
    instance-of v0, p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The servletContext "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    goto :goto_0
.end method

.method protected passConditionalHeaders(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 673
    :try_start_0
    invoke-interface {p1}, Lc/c/c/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 675
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v0, :cond_8

    .line 677
    const-string v0, "If-Match"

    invoke-interface {p1, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_4

    .line 681
    if-eqz p4, :cond_1

    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 683
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v0, v4, v5, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    move v0, v2

    .line 684
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 686
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 687
    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 688
    goto :goto_0

    :cond_1
    move v0, v2

    .line 692
    :cond_2
    if-nez v0, :cond_4

    .line 694
    invoke-static {p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Lc/c/c/e;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 695
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 696
    const/16 v1, 0x19c

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    move v1, v2

    .line 798
    :cond_3
    :goto_1
    return v1

    .line 701
    :cond_4
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_8

    if-eqz p4, :cond_8

    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 705
    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "o.e.j.s.GzipFilter.ETag"

    invoke-interface {p1, v4}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 707
    invoke-static {p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Lc/c/c/e;)Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    .line 708
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 709
    const/16 v3, 0x130

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 710
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v1

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    move v1, v2

    .line 711
    goto :goto_1

    .line 716
    :cond_5
    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 718
    invoke-static {p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Lc/c/c/e;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 719
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 720
    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 721
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    move v1, v2

    .line 722
    goto :goto_1

    .line 726
    :cond_6
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v0, v4, v5, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 727
    :cond_7
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 732
    invoke-static {p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Lc/c/c/e;)Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    .line 733
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 734
    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 735
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    move v1, v2

    .line 736
    goto/16 :goto_1

    .line 744
    :cond_8
    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_a

    .line 748
    invoke-static {p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Lc/c/c/e;)Lorg/eclipse/jetty/server/Response;

    move-result-object v3

    .line 750
    if-eqz p4, :cond_9

    .line 752
    invoke-interface {p4}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 753
    if-eqz v4, :cond_9

    .line 755
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 757
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 758
    const/16 v0, 0x130

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 759
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->flushBuffer()V

    move v1, v2

    .line 760
    goto/16 :goto_1

    .line 765
    :cond_9
    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0}, Lc/c/c/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v4

    .line 766
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a

    .line 768
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    cmp-long v0, v6, v4

    if-gtz v0, :cond_a

    .line 770
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 771
    const/16 v0, 0x130

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 772
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->flushBuffer()V

    move v1, v2

    .line 773
    goto/16 :goto_1

    .line 779
    :cond_a
    const-string v0, "If-Unmodified-Since"

    invoke-interface {p1, v0}, Lc/c/c/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v4

    .line 781
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    .line 785
    const/16 v0, 0x19c

    invoke-interface {p2, v0}, Lc/c/c/e;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 786
    goto/16 :goto_1

    .line 792
    :catch_0
    move-exception v0

    .line 794
    invoke-interface {p2}, Lc/c/c/e;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 795
    const/16 v1, 0x190

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    .line 796
    :cond_b
    throw v0
.end method

.method protected sendData(Lc/c/c/c;Lc/c/c/e;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    .locals 26

    .prologue
    .line 854
    if-nez p5, :cond_1

    .line 856
    const/4 v4, 0x0

    .line 857
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v8

    move v6, v4

    .line 872
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v5

    .line 875
    instance-of v4, v5, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v4, :cond_3

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jetty/server/HttpOutput;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/HttpOutput;->isWritten()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 885
    :goto_1
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_c

    .line 888
    :cond_0
    if-eqz p3, :cond_4

    .line 890
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 1037
    :goto_2
    return-void

    .line 861
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v5

    .line 862
    instance-of v4, v5, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v4, :cond_2

    move-object v4, v5

    check-cast v4, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v4}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v5, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    .line 863
    :goto_3
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v8

    move v6, v4

    goto :goto_0

    .line 862
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 875
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isWritten()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 881
    :catch_0
    move-exception v4

    new-instance v5, Lorg/eclipse/jetty/io/WriterOutputStream;

    invoke-interface/range {p2 .. p2}, Lc/c/c/e;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    .line 882
    const/4 v4, 0x1

    goto :goto_1

    .line 895
    :cond_4
    if-eqz p5, :cond_8

    if-nez v4, :cond_8

    instance-of v7, v5, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v7, :cond_8

    .line 897
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/server/Response;

    if-eqz v4, :cond_5

    .line 899
    check-cast p2, Lorg/eclipse/jetty/server/Response;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 900
    check-cast v5, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 904
    :cond_5
    if-eqz v6, :cond_6

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 905
    :goto_4
    if-eqz v4, :cond_7

    .line 907
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 908
    check-cast v5, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v5, v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 904
    :cond_6
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    goto :goto_4

    .line 912
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 913
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 920
    :cond_8
    if-eqz v4, :cond_9

    const-wide/16 v6, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 923
    if-nez p5, :cond_a

    const/4 v4, 0x0

    .line 924
    :goto_6
    if-eqz v4, :cond_b

    .line 925
    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_9
    move-wide v6, v8

    .line 920
    goto :goto_5

    .line 923
    :cond_a
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    goto :goto_6

    .line 927
    :cond_b
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 934
    :cond_c
    move-object/from16 v0, p6

    invoke-static {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v18

    .line 937
    if-eqz v18, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 939
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 940
    const/16 v4, 0x1a0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lc/c/c/e;->setStatus(I)V

    .line 941
    const-string v4, "Content-Range"

    invoke-static {v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 949
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    .line 951
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 953
    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v10

    .line 954
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v10, v11}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 955
    const/16 v6, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lc/c/c/e;->setStatus(I)V

    .line 956
    const-string v6, "Content-Range"

    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v6

    move-object/from16 v4, p4

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 966
    :cond_f
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 967
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    move-object/from16 v17, v4

    .line 968
    :goto_7
    if-nez v17, :cond_10

    .line 969
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown mimetype for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    :cond_10
    new-instance v11, Lorg/eclipse/jetty/util/MultiPartOutputStream;

    invoke-direct {v11, v5}, Lorg/eclipse/jetty/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 971
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lc/c/c/e;->setStatus(I)V

    .line 977
    const-string v4, "Request-Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lc/c/c/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 978
    const-string v4, "multipart/x-byteranges; boundary="

    .line 981
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 984
    const-wide/16 v12, 0x0

    .line 987
    const/4 v5, 0x0

    .line 988
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 989
    const/4 v4, 0x0

    move v6, v4

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_15

    .line 991
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 992
    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v19, v6

    .line 993
    int-to-long v14, v5

    if-lez v6, :cond_13

    const/4 v5, 0x2

    :goto_a
    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v10, v5, 0x2

    if-nez v17, :cond_14

    const/4 v5, 0x0

    :goto_b
    add-int/2addr v5, v10

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xd

    add-int/lit8 v5, v5, 0x2

    aget-object v10, v19, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-long v0, v5

    move-wide/from16 v20, v0

    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v22

    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v4

    sub-long v4, v22, v4

    add-long v4, v4, v20

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    add-long/2addr v4, v14

    long-to-int v5, v4

    .line 989
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_9

    .line 967
    :cond_11
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto/16 :goto_7

    .line 980
    :cond_12
    const-string v4, "multipart/byteranges; boundary="

    goto/16 :goto_8

    .line 993
    :cond_13
    const/4 v5, 0x0

    goto :goto_a

    :cond_14
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    goto :goto_b

    .line 1001
    :cond_15
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    .line 1002
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lc/c/c/e;->setContentLength(I)V

    .line 1004
    const/4 v4, 0x0

    move/from16 v16, v4

    move-object v5, v7

    move-wide v6, v12

    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_17

    .line 1006
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 1007
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Content-Range: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v19, v16

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v10}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v12

    .line 1010
    invoke-virtual {v4, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v14

    .line 1011
    if-eqz v5, :cond_16

    .line 1014
    cmp-long v4, v12, v6

    if-gez v4, :cond_1a

    .line 1016
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1017
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1018
    const-wide/16 v4, 0x0

    .line 1020
    :goto_d
    cmp-long v6, v4, v12

    if-gez v6, :cond_19

    .line 1022
    sub-long v4, v12, v4

    invoke-virtual {v7, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1025
    :goto_e
    invoke-static {v7, v11, v14, v15}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 1026
    add-long v4, v12, v14

    .line 1004
    :goto_f
    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    move-wide/from16 v24, v4

    move-object v5, v7

    move-wide/from16 v6, v24

    goto :goto_c

    :cond_16
    move-object/from16 v10, p4

    .line 1030
    invoke-virtual/range {v10 .. v15}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    move-wide/from16 v24, v6

    move-object v7, v5

    move-wide/from16 v4, v24

    goto :goto_f

    .line 1033
    :cond_17
    if-eqz v5, :cond_18

    .line 1034
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1035
    :cond_18
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->close()V

    goto/16 :goto_2

    :cond_19
    move-wide v12, v4

    goto :goto_e

    :cond_1a
    move-wide/from16 v24, v6

    move-object v7, v5

    move-wide/from16 v4, v24

    goto :goto_d
.end method

.method protected sendDirectory(Lc/c/c/c;Lc/c/c/e;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x193

    const/4 v0, 0x1

    .line 809
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    if-nez v1, :cond_0

    .line 811
    invoke-interface {p2, v3}, Lc/c/c/e;->sendError(I)V

    .line 841
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-interface {p1}, Lc/c/c/c;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 819
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v2, :cond_2

    .line 822
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    instance-of v2, v2, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v2, :cond_1

    .line 823
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    .line 829
    :cond_1
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_3

    :goto_2
    invoke-virtual {p3, v1, v0}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 830
    if-nez v0, :cond_4

    .line 832
    const-string v0, "No directory"

    invoke-interface {p2, v3, v0}, Lc/c/c/e;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    instance-of v2, v2, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v2, :cond_1

    .line 827
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    goto :goto_1

    .line 829
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 837
    :cond_4
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 838
    const-string v1, "text/html; charset=UTF-8"

    invoke-interface {p2, v1}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 839
    array-length v1, v0

    invoke-interface {p2, v1}, Lc/c/c/e;->setContentLength(I)V

    .line 840
    invoke-interface {p2}, Lc/c/c/e;->getOutputStream()Lc/c/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/c/z;->write([B)V

    goto :goto_0
.end method

.method protected writeHeaders(Lc/c/c/e;Lorg/eclipse/jetty/http/HttpContent;J)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 1044
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lc/c/c/e;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1045
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/c/c/e;->setContentType(Ljava/lang/String;)V

    .line 1047
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/server/Response;

    if-eqz v0, :cond_5

    .line 1049
    check-cast p1, Lorg/eclipse/jetty/server/Response;

    .line 1050
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 1052
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1053
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1061
    :cond_1
    :goto_0
    cmp-long v1, p3, v4

    if-eqz v1, :cond_2

    .line 1062
    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jetty/server/Response;->setLongContentLength(J)V

    .line 1064
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 1066
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v1, :cond_3

    .line 1067
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1088
    :cond_3
    :goto_1
    return-void

    .line 1054
    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1056
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v2

    .line 1057
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1058
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    goto :goto_0

    .line 1071
    :cond_5
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v0

    .line 1072
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    .line 1073
    const-string v2, "Last-Modified"

    invoke-interface {p1, v2, v0, v1}, Lc/c/c/e;->setDateHeader(Ljava/lang/String;J)V

    .line 1075
    :cond_6
    cmp-long v0, p3, v4

    if-eqz v0, :cond_7

    .line 1077
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gez v0, :cond_8

    .line 1078
    long-to-int v0, p3

    invoke-interface {p1, v0}, Lc/c/c/e;->setContentLength(I)V

    .line 1083
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lc/c/c/e;)V

    .line 1085
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v0, :cond_3

    .line 1086
    const-string v0, "ETag"

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1080
    :cond_8
    const-string v0, "Content-Length"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected writeOptionHeaders(Lc/c/c/e;)V
    .locals 2

    .prologue
    .line 1103
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1104
    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    invoke-interface {p1, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1107
    const-string v0, "Cache-Control"

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lc/c/c/e;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_1
    return-void
.end method

.method protected writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 2

    .prologue
    .line 1093
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1094
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->BYTES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1097
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1098
    :cond_1
    return-void
.end method
