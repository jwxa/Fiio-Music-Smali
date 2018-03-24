.class public Lorg/eclipse/jetty/server/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lc/c/c/c;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final _STREAM:I = 0x1

.field private static final __ASYNC_FWD:Ljava/lang/String; = "org.eclipse.asyncfwd"

.field public static final __MULTIPART_CONFIG_ELEMENT:Ljava/lang/String; = "org.eclipse.multipartConfig"

.field public static final __MULTIPART_CONTEXT:Ljava/lang/String; = "org.eclipse.multiPartContext"

.field public static final __MULTIPART_INPUT_STREAM:Ljava/lang/String; = "org.eclipse.multiPartInputStream"

.field private static final __NONE:I = 0x0

.field private static final __READER:I = 0x2

.field private static final __defaultLocale:Ljava/util/Collection;


# instance fields
.field protected final _async:Lorg/eclipse/jetty/server/AsyncContinuation;

.field private _asyncSupported:Z

.field private volatile _attributes:Lorg/eclipse/jetty/util/Attributes;

.field private _authentication:Lorg/eclipse/jetty/server/Authentication;

.field private _baseParameters:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _characterEncoding:Ljava/lang/String;

.field protected _connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

.field private _context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _contextPath:Ljava/lang/String;

.field private _cookies:Lorg/eclipse/jetty/server/CookieCutter;

.field private _cookiesExtracted:Z

.field private _dispatchTime:J

.field private _dispatcherType:Lc/c/d;

.field private _dns:Z

.field private _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private _handled:Z

.field private _inputState:I

.field private _method:Ljava/lang/String;

.field private _multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

.field private _newContext:Z

.field private _parameters:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _paramsExtracted:Z

.field private _pathInfo:Ljava/lang/String;

.field private _port:I

.field private _protocol:Ljava/lang/String;

.field private _queryEncoding:Ljava/lang/String;

.field private _queryString:Ljava/lang/String;

.field private _reader:Ljava/io/BufferedReader;

.field private _readerEncoding:Ljava/lang/String;

.field private _remoteAddr:Ljava/lang/String;

.field private _remoteHost:Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestURI:Ljava/lang/String;

.field private _requestedSessionId:Ljava/lang/String;

.field private _requestedSessionIdFromCookie:Z

.field private _savedNewSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lc/c/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private _scheme:Ljava/lang/String;

.field private _scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

.field private _serverName:Ljava/lang/String;

.field private _servletPath:Ljava/lang/String;

.field private _session:Lc/c/c/g;

.field private _sessionManager:Lorg/eclipse/jetty/server/SessionManager;

.field private _timeStamp:J

.field private _timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

.field private _uri:Lorg/eclipse/jetty/http/HttpURI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const-class v0, Lorg/eclipse/jetty/server/Request;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 134
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 192
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 194
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 196
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 197
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 203
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 215
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 192
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 194
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 196
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 197
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 203
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 215
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 237
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Request;->setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 238
    return-void
.end method

.method public static getRequest(Lc/c/c/c;)Lorg/eclipse/jetty/server/Request;
    .locals 1

    .prologue
    .line 176
    instance-of v0, p0, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_0

    .line 177
    check-cast p0, Lorg/eclipse/jetty/server/Request;

    .line 179
    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 2

    .prologue
    .line 243
    instance-of v0, p1, Lc/c/ae;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 245
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/continuation/ContinuationListener;

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    instance-of v0, p1, Lc/c/c;

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    return-void
.end method

.method public authenticate(Lc/c/c/e;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2006
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_1

    .line 2008
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0, p1}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Lc/c/ac;Lc/c/ai;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 2009
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$ResponseSent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2012
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2009
    goto :goto_0

    .line 2011
    :cond_1
    const/16 v0, 0x191

    invoke-interface {p1, v0}, Lc/c/c/e;->sendError(I)V

    move v0, v1

    .line 2012
    goto :goto_0
.end method

.method public extractParameters()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lorg/eclipse/jetty/util/MultiMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 260
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    .line 272
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 293
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 297
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-nez v0, :cond_7

    const-string v0, "POST"

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PUT"

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 302
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 303
    if-eqz v6, :cond_7

    .line 310
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v0, :cond_15

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMaxFormContentSize()I

    move-result v1

    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMaxFormKeys()I

    move-result v4

    .line 316
    :goto_2
    if-gez v1, :cond_5

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-string v7, "org.eclipse.jetty.server.Request.maxFormContentSize"

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    if-nez v0, :cond_c

    .line 320
    const v1, 0x30d40

    .line 332
    :cond_5
    :goto_3
    if-gez v4, :cond_6

    .line 334
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    const-string v7, "org.eclipse.jetty.server.Request.maxFormKeys"

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    if-nez v0, :cond_e

    .line 336
    const/16 v0, 0x3e8

    move v4, v0

    .line 348
    :cond_6
    :goto_4
    if-le v6, v1, :cond_10

    if-lez v1, :cond_10

    .line 350
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Form too large "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :catch_0
    move-exception v0

    .line 359
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 360
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 368
    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_13

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    goto/16 :goto_0

    .line 280
    :cond_9
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    iget-object v4, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/http/HttpURI;->decodeQueryTo(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 282
    :catch_1
    move-exception v0

    .line 284
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 285
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 387
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v1, :cond_a

    .line 388
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    iput-object v1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    :cond_a
    throw v0

    .line 287
    :cond_b
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 321
    :cond_c
    :try_start_6
    instance-of v7, v0, Ljava/lang/Number;

    if-eqz v7, :cond_d

    .line 323
    check-cast v0, Ljava/lang/Number;

    .line 324
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto/16 :goto_3

    .line 326
    :cond_d
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 328
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_3

    .line 337
    :cond_e
    instance-of v7, v0, Ljava/lang/Number;

    if-eqz v7, :cond_f

    .line 339
    check-cast v0, Ljava/lang/Number;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v4, v0

    .line 341
    goto/16 :goto_4

    .line 342
    :cond_f
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 344
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto/16 :goto_4

    .line 352
    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Lc/c/y;

    move-result-object v7

    .line 355
    iget-object v8, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    if-gez v6, :cond_11

    move v0, v1

    :goto_6
    invoke-static {v7, v8, v5, v0, v4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    :cond_11
    move v0, v3

    goto :goto_6

    .line 362
    :cond_12
    :try_start_7
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 370
    :cond_13
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eq v0, v1, :cond_8

    .line 373
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 374
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 376
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move v0, v2

    .line 379
    :goto_7
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v0, v5, :cond_14

    .line 380
    iget-object v5, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    move v4, v3

    move v1, v3

    goto/16 :goto_2
.end method

.method public getAsyncContext()Lc/c/a;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 412
    const-string v0, "org.eclipse.jetty.io.EndPoint.maxIdleTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 418
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 416
    :goto_1
    if-nez v0, :cond_0

    const-string v1, "org.eclipse.jetty.continuation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_0

    .line 428
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-static {v0}, Lorg/eclipse/jetty/util/AttributesMap;->getAttributeNamesCopy(Lorg/eclipse/jetty/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributes()Lorg/eclipse/jetty/util/Attributes;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getAuthMethod()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthentication()Lorg/eclipse/jetty/server/Authentication;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->getLongField(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    const-wide/16 v0, -0x1

    .line 500
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getContentRead()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCookies()[Lc/c/c/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 556
    :goto_0
    return-object v0

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/CookieCutter;->getCookies()[Lc/c/c/a;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 541
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v2

    .line 544
    if-eqz v2, :cond_3

    .line 546
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v0, :cond_2

    .line 547
    new-instance v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/CookieCutter;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    .line 549
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 552
    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/server/CookieCutter;->addCookieField(Ljava/lang/String;)V

    goto :goto_1

    .line 556
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/CookieCutter;->getCookies()[Lc/c/c/a;

    move-result-object v0

    goto :goto_0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getDateField(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDispatchTime()J
    .locals 2

    .prologue
    .line 1351
    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_dispatchTime:J

    return-wide v0
.end method

.method public getDispatcherType()Lc/c/d;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_dispatcherType:Lc/c/d;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 599
    if-nez v0, :cond_0

    .line 600
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 601
    :cond_0
    return-object v0
.end method

.method public getInputState()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    return v0
.end method

.method public getInputStream()Lc/c/y;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 619
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eq v0, v1, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iput v1, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 622
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getInputStream()Lc/c/y;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getLongField(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 729
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    .line 730
    const/4 v0, 0x0

    .line 737
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 649
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Accept-Language"

    const-string v2, ", \t"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 676
    :goto_0
    return-object v0

    .line 656
    :cond_1
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 658
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 662
    if-lez v1, :cond_4

    .line 664
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 666
    const-string v0, ""

    .line 667
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 668
    if-ltz v2, :cond_3

    .line 670
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 673
    :cond_3
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 676
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 686
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    const-string v1, "Accept-Language"

    const-string v2, ", \t"

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    .line 693
    :cond_1
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v6

    .line 695
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 696
    sget-object v0, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 699
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move-object v4, v5

    .line 702
    :goto_1
    if-ge v2, v7, :cond_4

    .line 704
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 705
    invoke-static {v0, v5}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 706
    const-string v0, ""

    .line 707
    const/16 v8, 0x2d

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 708
    if-ltz v8, :cond_3

    .line 710
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 713
    :cond_3
    invoke-static {v4, v7}, Lorg/eclipse/jetty/util/LazyList;->ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 714
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 702
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto :goto_1

    .line 717
    :cond_4
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_5

    .line 718
    sget-object v0, Lorg/eclipse/jetty/server/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 720
    :cond_5
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 764
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 766
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 778
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 789
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 807
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 809
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 810
    if-nez v0, :cond_1

    .line 811
    const/4 v0, 0x0

    .line 812
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getParameters()Lorg/eclipse/jetty/util/MultiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Lc/c/c/q;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2018
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2019
    :cond_0
    new-instance v0, Lc/c/x;

    const-string v1, "Content-Type != multipart/form-data"

    invoke-direct {v0, v1}, Lc/c/x;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2021
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    if-nez v0, :cond_6

    .line 2023
    const-string v0, "org.eclipse.multipartConfig"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/m;

    .line 2025
    if-nez v0, :cond_2

    .line 2026
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No multipart config for servlet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2028
    :cond_2
    new-instance v3, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Lc/c/y;

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v6, "javax.servlet.context.tempdir"

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :goto_0
    invoke-direct {v3, v4, v5, v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lc/c/m;Ljava/io/File;)V

    iput-object v3, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 2031
    const-string v0, "org.eclipse.multiPartInputStream"

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2032
    const-string v0, "org.eclipse.multiPartContext"

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2033
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParts()Ljava/util/Collection;

    move-result-object v0

    .line 2034
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/q;

    .line 2036
    check-cast v0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    .line 2037
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentDispositionFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2041
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2042
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    .line 2044
    :goto_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getBytes()[B

    move-result-object v5

    if-nez v1, :cond_4

    const-string v1, "UTF-8"

    :cond_4
    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2045
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 2046
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move-object v1, v2

    .line 2028
    goto :goto_0

    .line 2050
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getPart(Ljava/lang/String;)Lc/c/c/q;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v1, v2

    goto :goto_2
.end method

.method public getParts()Ljava/util/Collection;
    .locals 7
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
    const/4 v2, 0x0

    .line 2056
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2057
    :cond_0
    new-instance v0, Lc/c/x;

    const-string v1, "Content-Type != multipart/form-data"

    invoke-direct {v0, v1}, Lc/c/x;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2059
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    if-nez v0, :cond_6

    .line 2061
    const-string v0, "org.eclipse.multipartConfig"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/m;

    .line 2063
    if-nez v0, :cond_2

    .line 2064
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No multipart config for servlet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_2
    new-instance v3, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Lc/c/y;

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContentType()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    const-string v6, "javax.servlet.context.tempdir"

    invoke-virtual {v1, v6}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :goto_0
    invoke-direct {v3, v4, v5, v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lc/c/m;Ljava/io/File;)V

    iput-object v3, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 2070
    const-string v0, "org.eclipse.multiPartInputStream"

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2071
    const-string v0, "org.eclipse.multiPartContext"

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2072
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParts()Ljava/util/Collection;

    move-result-object v0

    .line 2073
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/q;

    .line 2075
    check-cast v0, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    .line 2076
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentDispositionFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2080
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2081
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    .line 2083
    :goto_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getBytes()[B

    move-result-object v5

    if-nez v1, :cond_4

    const-string v1, "UTF-8"

    :cond_4
    invoke-direct {v4, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2084
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 2085
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move-object v1, v2

    .line 2066
    goto :goto_0

    .line 2089
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParts()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v1, v2

    goto :goto_2
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_1

    .line 831
    :cond_0
    const/4 v0, 0x0

    .line 832
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 863
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    return-object v0

    .line 861
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpURI;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 872
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eq v0, v4, :cond_0

    .line 873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STREAMED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-ne v0, v4, :cond_1

    .line 876
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 896
    :goto_0
    return-object v0

    .line 878
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 879
    if-nez v0, :cond_2

    .line 880
    const-string v0, "ISO-8859-1"

    .line 882
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_readerEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 884
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getInputStream()Lc/c/y;

    move-result-object v1

    .line 885
    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_readerEncoding:Ljava/lang/String;

    .line 886
    new-instance v2, Lorg/eclipse/jetty/server/n;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v1}, Lorg/eclipse/jetty/server/n;-><init>(Lorg/eclipse/jetty/server/Request;Ljava/io/Reader;Lc/c/y;)V

    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 895
    :cond_4
    iput v4, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 896
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_0

    .line 906
    const/4 v0, 0x0

    .line 907
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    .line 918
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    if-eqz v0, :cond_2

    .line 929
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    .line 935
    :goto_0
    return-object v0

    .line 933
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 954
    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 956
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Lc/c/p;
    .locals 3

    .prologue
    .line 965
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v0, :cond_1

    .line 966
    :cond_0
    const/4 v0, 0x0

    .line 980
    :goto_0
    return-object v0

    .line 969
    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 971
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 973
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 974
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 977
    :goto_1
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 980
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getRequestDispatcher(Ljava/lang/String;)Lc/c/p;

    move-result-object v0

    goto :goto_0

    .line 976
    :cond_3
    const-string v0, "/"

    goto :goto_1
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPathAndParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1000
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1009
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1010
    monitor-enter v1

    .line 1012
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v2

    .line 1015
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1016
    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1017
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1018
    iget v3, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-lez v3, :cond_2

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1bb

    if-eq v2, v0, :cond_2

    .line 1020
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1021
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1024
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1025
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponse()Lorg/eclipse/jetty/server/Response;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1049
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v2

    .line 1052
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    if-lez v2, :cond_2

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x1bb

    if-eq v2, v1, :cond_2

    .line 1058
    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1061
    :cond_2
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1080
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1152
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-nez v0, :cond_1

    .line 1084
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1088
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1089
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1090
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->HOST_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 1094
    if-eqz v2, :cond_7

    .line 1096
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 1098
    invoke-interface {v2, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 1099
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1124
    goto :goto_1

    .line 1105
    :sswitch_0
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    sub-int v3, v1, v3

    invoke-interface {v2, v0, v3}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1108
    add-int/lit8 v0, v1, 0x1

    :try_start_0
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v0, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/io/BufferUtil;->toInt(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1114
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v1, 0x190

    const-string v2, "Bad Host header"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1117
    :catch_1
    move-exception v0

    .line 1119
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1125
    :cond_4
    :sswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gez v0, :cond_6

    .line 1127
    :cond_5
    invoke-static {v2}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1128
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1131
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1135
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    if-eqz v0, :cond_8

    .line 1137
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1138
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1139
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "0.0.0.0"

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1140
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1146
    :cond_8
    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1152
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1148
    :catch_2
    move-exception v0

    .line 1150
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 1161
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1164
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    .line 1166
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    if-eqz v0, :cond_2

    .line 1169
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I

    move-result v0

    move-object v1, p0

    .line 1171
    :goto_0
    iput v0, v1, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1175
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    if-gtz v0, :cond_5

    .line 1177
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1178
    const/16 v0, 0x1bb

    .line 1181
    :goto_1
    return v0

    .line 1171
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v0

    move-object v1, p0

    goto :goto_0

    .line 1179
    :cond_4
    const/16 v0, 0x50

    goto :goto_1

    .line 1181
    :cond_5
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    goto :goto_1
.end method

.method public getServletContext()Lc/c/s;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity$Scope;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1207
    const-string v0, ""

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1208
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServletResponse()Lc/c/ai;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lc/c/c/g;
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Lc/c/c/g;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1232
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    if-eqz v1, :cond_0

    .line 1234
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/server/SessionManager;->isValid(Lc/c/c/g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1235
    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    .line 1240
    :cond_0
    if-nez p1, :cond_2

    .line 1251
    :goto_0
    return-object v0

    .line 1237
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    goto :goto_0

    .line 1243
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    if-nez v0, :cond_3

    .line 1244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SessionManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/SessionManager;->newHttpSession(Lc/c/c/c;)Lc/c/c/g;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    .line 1247
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->isSecure()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookie(Lc/c/c/g;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/HttpCookie;

    move-result-object v0

    .line 1248
    if-eqz v0, :cond_4

    .line 1249
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/Response;->addCookie(Lorg/eclipse/jetty/http/HttpCookie;)V

    .line 1251
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    goto :goto_0
.end method

.method public getSessionManager()Lorg/eclipse/jetty/server/SessionManager;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 1271
    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    return-wide v0
.end method

.method public getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1283
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    iget-wide v2, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/io/BufferDateCache;->formatBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1284
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getUri()Lorg/eclipse/jetty/http/HttpURI;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    return-object v0
.end method

.method public getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1302
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1303
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1304
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1334
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->getUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v0

    .line 1337
    invoke-interface {v0}, Lorg/eclipse/jetty/server/UserIdentity;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 1340
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAsyncStarted()Z
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v0

    return v0
.end method

.method public isAsyncSupported()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1405
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return v0

    .line 1408
    :cond_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->getSession(Z)Lc/c/c/g;

    move-result-object v1

    .line 1409
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v2}, Lorg/eclipse/jetty/server/SessionManager;->getSessionIdManager()Lorg/eclipse/jetty/server/SessionIdManager;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/server/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/server/SessionManager;->getClusterId(Lc/c/c/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1427
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->authenticate(Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1430
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_1

    .line 1431
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/server/Authentication$User;->isUserInRole(Lorg/eclipse/jetty/server/UserIdentity$Scope;Ljava/lang/String;)Z

    move-result v0

    .line 1432
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2095
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$Deferred;

    invoke-interface {v0, p1, p2, p0}, Lorg/eclipse/jetty/server/Authentication$Deferred;->login(Ljava/lang/String;Ljava/lang/Object;Lc/c/ac;)Lorg/eclipse/jetty/server/Authentication;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 2098
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    if-nez v0, :cond_1

    .line 2099
    new-instance v0, Lc/c/x;

    invoke-direct {v0}, Lc/c/x;-><init>()V

    throw v0

    .line 2103
    :cond_0
    new-instance v0, Lc/c/x;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authenticated as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/x;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2105
    :cond_1
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    instance-of v0, v0, Lorg/eclipse/jetty/server/Authentication$User;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    check-cast v0, Lorg/eclipse/jetty/server/Authentication$User;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Authentication$User;->logout()V

    .line 2112
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 2113
    return-void
.end method

.method public mergeQueryString(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 2126
    new-instance v4, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 2127
    const-string v0, "UTF-8"

    invoke-static {p1, v4, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 2132
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 2133
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 2136
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2139
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    .line 2140
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2142
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2146
    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2147
    const/4 v2, 0x1

    .line 2150
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move v0, v3

    .line 2151
    :goto_0
    invoke-static {v6}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 2152
    invoke-static {v6, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 2156
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 2158
    if-eqz v2, :cond_8

    .line 2160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2161
    new-instance v0, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 2162
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getQueryEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 2165
    new-instance v5, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v5}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 2166
    const-string v1, "UTF-8"

    invoke-static {p1, v5, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 2168
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2169
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2171
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2173
    invoke-virtual {v5, v1}, Lorg/eclipse/jetty/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move v0, v3

    .line 2176
    :goto_1
    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 2178
    const-string v8, "&"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2183
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2191
    :cond_7
    :goto_2
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 2192
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 2193
    return-void

    .line 2187
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public recoverNewSession(Ljava/lang/Object;)Lc/c/c/g;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    .line 1440
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/g;

    goto :goto_0
.end method

.method protected recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1446
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1450
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 1451
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1452
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1456
    sget-object v1, Lorg/eclipse/jetty/server/Request;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 1457
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_reader:Ljava/io/BufferedReader;

    .line 1461
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/Request;->setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V

    .line 1462
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->recycle()V

    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 1464
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 1465
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v0, :cond_1

    .line 1466
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request in context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-eqz v0, :cond_2

    .line 1468
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/Attributes;->clearAttributes()V

    .line 1469
    :cond_2
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1470
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    .line 1471
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-eqz v0, :cond_3

    .line 1472
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/CookieCutter;->reset()V

    .line 1473
    :cond_3
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_cookiesExtracted:Z

    .line 1474
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1475
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1476
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    .line 1477
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    .line 1478
    iput v3, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1479
    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 1480
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1481
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1482
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1483
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 1484
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    .line 1485
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 1486
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1487
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .line 1488
    const-string v0, "http"

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 1489
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1490
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    .line 1491
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_timeStampBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1492
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 1493
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v0, :cond_4

    .line 1494
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 1495
    :cond_4
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 1496
    iput-boolean v3, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    .line 1497
    iput v3, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    .line 1499
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1500
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1501
    :cond_5
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1502
    iput-object v2, p0, Lorg/eclipse/jetty/server/Request;->_multiPartInputStream:Lorg/eclipse/jetty/util/MultiPartInputStream;

    .line 1503
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1511
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1513
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-eqz v1, :cond_0

    .line 1514
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    .line 1516
    :cond_0
    if-eqz v0, :cond_3

    .line 1518
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1520
    new-instance v1, Lc/c/ad;

    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-direct {v1, v2, p0, p1, v0}, Lc/c/ad;-><init>(Lc/c/s;Lc/c/ac;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1521
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    .line 1522
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1524
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/ae;

    .line 1525
    instance-of v3, v0, Lc/c/ae;

    if-eqz v3, :cond_1

    .line 1527
    check-cast v0, Lc/c/ae;

    .line 1528
    invoke-interface {v0}, Lc/c/ae;->b()V

    .line 1522
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1511
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1533
    :cond_3
    return-void
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1539
    return-void
.end method

.method public saveNewSession(Ljava/lang/Object;Lc/c/c/g;)V
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1546
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    return-void
.end method

.method public setAsyncSupported(Z)V
    .locals 0

    .prologue
    .line 1552
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    .line 1553
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1566
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v2, :cond_3

    move-object v4, v1

    .line 1568
    :goto_0
    const-string v2, "org.eclipse.jetty."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1570
    const-string v2, "org.eclipse.jetty.server.Request.queryEncoding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1571
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/Request;->setQueryEncoding(Ljava/lang/String;)V

    .line 1612
    :cond_0
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    if-nez v1, :cond_1

    .line 1613
    new-instance v1, Lorg/eclipse/jetty/util/AttributesMap;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 1614
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1616
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v1, :cond_c

    .line 1618
    new-instance v2, Lc/c/ad;

    iget-object v3, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v4, :cond_9

    move-object v1, p2

    :goto_3
    invoke-direct {v2, v3, p0, p1, v1}, Lc/c/ad;-><init>(Lc/c/s;Lc/c/ac;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1619
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    .line 1620
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_c

    .line 1622
    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/ae;

    .line 1623
    instance-of v5, v1, Lc/c/ae;

    if-eqz v5, :cond_2

    .line 1625
    check-cast v1, Lc/c/ae;

    .line 1627
    if-nez v4, :cond_a

    .line 1628
    invoke-interface {v1}, Lc/c/ae;->a()V

    .line 1620
    :cond_2
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1566
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    invoke-interface {v2, p1}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    .line 1571
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1572
    :cond_5
    const-string v1, "org.eclipse.jetty.server.sendContent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1576
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServletResponse()Lc/c/ai;

    move-result-object v1

    invoke-interface {v1}, Lc/c/ai;->getOutputStream()Lc/c/z;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1578
    :catch_0
    move-exception v1

    .line 1580
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1583
    :cond_6
    const-string v1, "org.eclipse.jetty.server.ResponseBuffer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1587
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v1, v0

    .line 1588
    monitor-enter v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1590
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    :goto_6
    check-cast v2, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 1591
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getServletResponse()Lc/c/ai;

    move-result-object v3

    invoke-interface {v3}, Lc/c/ai;->getOutputStream()Lc/c/z;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1592
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1597
    :catch_1
    move-exception v1

    .line 1596
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1590
    :cond_7
    :try_start_4
    new-instance v2, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 1599
    :cond_8
    const-string v1, "org.eclipse.jetty.io.EndPoint.maxIdleTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    :try_start_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 1605
    :catch_2
    move-exception v1

    .line 1607
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_9
    move-object v1, v4

    .line 1618
    goto/16 :goto_3

    .line 1629
    :cond_a
    if-nez p2, :cond_b

    .line 1630
    invoke-interface {v1}, Lc/c/ae;->b()V

    goto/16 :goto_5

    .line 1632
    :cond_b
    invoke-interface {v1}, Lc/c/ae;->c()V

    goto/16 :goto_5

    .line 1636
    :cond_c
    return-void
.end method

.method public setAttributes(Lorg/eclipse/jetty/util/Attributes;)V
    .locals 0

    .prologue
    .line 1643
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_attributes:Lorg/eclipse/jetty/util/Attributes;

    .line 1644
    return-void
.end method

.method public setAuthentication(Lorg/eclipse/jetty/server/Authentication;)V
    .locals 0

    .prologue
    .line 1657
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_authentication:Lorg/eclipse/jetty/server/Authentication;

    .line 1658
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1666
    iget v0, p0, Lorg/eclipse/jetty/server/Request;->_inputState:I

    if-eqz v0, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1672
    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    goto :goto_0
.end method

.method public setCharacterEncodingUnchecked(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1683
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_characterEncoding:Ljava/lang/String;

    .line 1684
    return-void
.end method

.method protected final setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .prologue
    .line 1690
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1691
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AsyncContinuation;->setConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 1692
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 1693
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_dns:Z

    .line 1694
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1702
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_connection:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequestFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1704
    return-void
.end method

.method public setContext(Lorg/eclipse/jetty/server/handler/ContextHandler$Context;)V
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1716
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 1717
    return-void

    .line 1715
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1739
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_contextPath:Ljava/lang/String;

    .line 1740
    return-void
.end method

.method public setCookies([Lc/c/c/a;)V
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    if-nez v0, :cond_0

    .line 1750
    new-instance v0, Lorg/eclipse/jetty/server/CookieCutter;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/CookieCutter;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    .line 1751
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_cookies:Lorg/eclipse/jetty/server/CookieCutter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/CookieCutter;->setCookies([Lc/c/c/a;)V

    .line 1752
    return-void
.end method

.method public setDispatchTime(J)V
    .locals 1

    .prologue
    .line 1975
    iput-wide p1, p0, Lorg/eclipse/jetty/server/Request;->_dispatchTime:J

    .line 1976
    return-void
.end method

.method public setDispatcherType(Lc/c/d;)V
    .locals 0

    .prologue
    .line 1757
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_dispatcherType:Lc/c/d;

    .line 1758
    return-void
.end method

.method public setHandled(Z)V
    .locals 0

    .prologue
    .line 1763
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    .line 1764
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1773
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_method:Ljava/lang/String;

    .line 1774
    return-void
.end method

.method public setParameters(Lorg/eclipse/jetty/util/MultiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1783
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jetty/server/Request;->_baseParameters:Lorg/eclipse/jetty/util/MultiMap;

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    .line 1784
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_parameters:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v0, :cond_1

    .line 1785
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1786
    :cond_1
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1795
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_pathInfo:Ljava/lang/String;

    .line 1796
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1805
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_protocol:Ljava/lang/String;

    .line 1806
    return-void
.end method

.method public setQueryEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1819
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1820
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1821
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1830
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_queryString:Ljava/lang/String;

    .line 1831
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Request;->_queryEncoding:Ljava/lang/String;

    .line 1832
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1841
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_remoteAddr:Ljava/lang/String;

    .line 1842
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1851
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_remoteHost:Ljava/lang/String;

    .line 1852
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1881
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_requestURI:Ljava/lang/String;

    .line 1882
    return-void
.end method

.method public setRequestedSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1861
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1862
    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0

    .prologue
    .line 1871
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/Request;->_requestedSessionIdFromCookie:Z

    .line 1872
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1891
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_scheme:Ljava/lang/String;

    .line 1892
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1901
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_serverName:Ljava/lang/String;

    .line 1902
    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    .prologue
    .line 1911
    iput p1, p0, Lorg/eclipse/jetty/server/Request;->_port:I

    .line 1912
    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1921
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_servletPath:Ljava/lang/String;

    .line 1922
    return-void
.end method

.method public setSession(Lc/c/c/g;)V
    .locals 0

    .prologue
    .line 1931
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_session:Lc/c/c/g;

    .line 1932
    return-void
.end method

.method public setSessionManager(Lorg/eclipse/jetty/server/SessionManager;)V
    .locals 0

    .prologue
    .line 1941
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_sessionManager:Lorg/eclipse/jetty/server/SessionManager;

    .line 1942
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 1947
    iput-wide p1, p0, Lorg/eclipse/jetty/server/Request;->_timeStamp:J

    .line 1948
    return-void
.end method

.method public setUri(Lorg/eclipse/jetty/http/HttpURI;)V
    .locals 0

    .prologue
    .line 1957
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 1958
    return-void
.end method

.method public setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V
    .locals 0

    .prologue
    .line 1963
    iput-object p1, p0, Lorg/eclipse/jetty/server/Request;->_scope:Lorg/eclipse/jetty/server/UserIdentity$Scope;

    .line 1964
    return-void
.end method

.method public startAsync()Lc/c/a;
    .locals 2

    .prologue
    .line 1981
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    if-nez v0, :cond_0

    .line 1982
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!asyncSupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1983
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->suspend()V

    .line 1984
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public startAsync(Lc/c/ac;Lc/c/ai;)Lc/c/a;
    .locals 2

    .prologue
    .line 1990
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_asyncSupported:Z

    if-nez v0, :cond_0

    .line 1991
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!asyncSupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_context:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jetty/server/AsyncContinuation;->suspend(Lc/c/s;Lc/c/ac;Lc/c/ai;)V

    .line 1993
    iget-object v0, p0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    return-object v0
.end method

.method public takeNewContext()Z
    .locals 2

    .prologue
    .line 1726
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1727
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/Request;->_newContext:Z

    .line 1728
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    if-eqz v0, :cond_0

    const-string v0, "["

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/Request;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/Request;->_handled:Z

    if-eqz v0, :cond_1

    const-string v0, "]@"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "("

    goto :goto_0

    :cond_1
    const-string v0, ")@"

    goto :goto_1
.end method
