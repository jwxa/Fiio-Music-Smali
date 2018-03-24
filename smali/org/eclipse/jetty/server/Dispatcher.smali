.class public Lorg/eclipse/jetty/server/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lc/c/p;


# static fields
.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field private final _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private final _dQuery:Ljava/lang/String;

.field private final _named:Ljava/lang/String;

.field private final _path:Ljava/lang/String;

.field private final _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 91
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 75
    iput-object p2, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/Dispatcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    return-object v0
.end method

.method private commitResponse(Lc/c/ai;Lorg/eclipse/jetty/server/Request;)V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->isWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :try_start_0
    invoke-interface {p1}, Lc/c/ai;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    invoke-interface {p1}, Lc/c/ai;->getOutputStream()Lc/c/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/z;->close()V

    goto :goto_0

    .line 315
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lc/c/ai;->getOutputStream()Lc/c/z;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/z;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    invoke-interface {p1}, Lc/c/ai;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0
.end method


# virtual methods
.method public error(Lc/c/ac;Lc/c/ai;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lc/c/d;->e:Lc/c/d;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Lc/c/ac;Lc/c/ai;Lc/c/d;)V

    .line 113
    return-void
.end method

.method public forward(Lc/c/ac;Lc/c/ai;)V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lc/c/d;->a:Lc/c/d;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jetty/server/Dispatcher;->forward(Lc/c/ac;Lc/c/ai;Lc/c/d;)V

    .line 104
    return-void
.end method

.method protected forward(Lc/c/ac;Lc/c/ai;Lc/c/d;)V
    .locals 16

    .prologue
    .line 202
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/eclipse/jetty/server/Request;

    if-eqz v1, :cond_0

    move-object/from16 v1, p1

    check-cast v1, Lorg/eclipse/jetty/server/Request;

    move-object v4, v1

    .line 203
    :goto_0
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getResponse()Lorg/eclipse/jetty/server/Response;

    move-result-object v1

    .line 204
    invoke-interface/range {p2 .. p2}, Lc/c/ai;->resetBuffer()V

    .line 205
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->fwdReset()V

    .line 208
    move-object/from16 v0, p1

    instance-of v1, v0, Lc/c/c/c;

    if-nez v1, :cond_7

    .line 209
    new-instance v1, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Lc/c/ac;)V

    .line 210
    :goto_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lc/c/c/e;

    if-nez v2, :cond_6

    .line 211
    new-instance v2, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Lc/c/ai;)V

    .line 213
    :goto_2
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v6

    .line 214
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v9

    .line 217
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v10

    .line 218
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v12

    .line 220
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v13

    .line 221
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v3

    .line 225
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lc/c/d;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    check-cast v1, Lc/c/c/c;

    check-cast v2, Lc/c/c/e;

    invoke-virtual {v5, v14, v4, v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v3

    .line 284
    :goto_3
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 285
    invoke-virtual {v4, v7}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4, v10}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v4, v12}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 290
    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 291
    invoke-virtual {v4, v11}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v4, v13}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lc/c/d;)V

    .line 293
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_0

    .line 234
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 235
    if-eqz v14, :cond_5

    .line 238
    if-nez v3, :cond_4

    .line 240
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 241
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 244
    :goto_4
    :try_start_2
    invoke-virtual {v4, v14}, Lorg/eclipse/jetty/server/Request;->mergeQueryString(Ljava/lang/String;)V

    .line 247
    :goto_5
    new-instance v14, Lorg/eclipse/jetty/server/j;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v12}, Lorg/eclipse/jetty/server/j;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 253
    const-string v3, "javax.servlet.forward.request_uri"

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 255
    const-string v3, "javax.servlet.forward.path_info"

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lorg/eclipse/jetty/server/j;->e:Ljava/lang/String;

    .line 256
    const-string v3, "javax.servlet.forward.query_string"

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lorg/eclipse/jetty/server/j;->f:Ljava/lang/String;

    .line 257
    const-string v3, "javax.servlet.forward.request_uri"

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lorg/eclipse/jetty/server/j;->b:Ljava/lang/String;

    .line 258
    const-string v3, "javax.servlet.forward.context_path"

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lorg/eclipse/jetty/server/j;->c:Ljava/lang/String;

    .line 259
    const-string v3, "javax.servlet.forward.servlet_path"

    invoke-interface {v12, v3}, Lorg/eclipse/jetty/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lorg/eclipse/jetty/server/j;->d:Ljava/lang/String;

    .line 270
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 272
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4, v14}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    check-cast v1, Lc/c/c/c;

    move-object v0, v2

    check-cast v0, Lc/c/c/e;

    move-object v3, v0

    invoke-virtual {v14, v15, v4, v1, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 278
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsyncStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lorg/eclipse/jetty/server/Dispatcher;->commitResponse(Lc/c/ai;Lorg/eclipse/jetty/server/Request;)V

    :cond_2
    move-object v1, v5

    goto/16 :goto_3

    .line 263
    :cond_3
    iput-object v10, v14, Lorg/eclipse/jetty/server/j;->e:Ljava/lang/String;

    .line 264
    iput-object v11, v14, Lorg/eclipse/jetty/server/j;->f:Ljava/lang/String;

    .line 265
    iput-object v7, v14, Lorg/eclipse/jetty/server/j;->b:Ljava/lang/String;

    .line 266
    iput-object v8, v14, Lorg/eclipse/jetty/server/j;->c:Ljava/lang/String;

    .line 267
    iput-object v9, v14, Lorg/eclipse/jetty/server/j;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 284
    :catchall_0
    move-exception v1

    :goto_7
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 285
    invoke-virtual {v4, v7}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v4, v8}, Lorg/eclipse/jetty/server/Request;->setContextPath(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4, v10}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v4, v12}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 290
    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 291
    invoke-virtual {v4, v11}, Lorg/eclipse/jetty/server/Request;->setQueryString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v4, v13}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lc/c/d;)V

    throw v1

    .line 284
    :catchall_1
    move-exception v1

    move-object v5, v3

    goto :goto_7

    :cond_4
    move-object v5, v3

    goto/16 :goto_4

    :cond_5
    move-object v5, v3

    goto/16 :goto_5

    :cond_6
    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_7
    move-object/from16 v1, p1

    goto/16 :goto_1
.end method

.method public include(Lc/c/ac;Lc/c/ai;)V
    .locals 13

    .prologue
    .line 121
    instance-of v0, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    move-object v4, v0

    .line 124
    :goto_0
    instance-of v0, p1, Lc/c/c/c;

    if-nez v0, :cond_7

    .line 125
    new-instance v0, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;-><init>(Lc/c/ac;)V

    .line 126
    :goto_1
    instance-of v1, p2, Lc/c/c/e;

    if-nez v1, :cond_6

    .line 127
    new-instance v1, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    invoke-direct {v1, p2}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;-><init>(Lc/c/ai;)V

    .line 132
    :goto_2
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Lc/c/d;

    move-result-object v6

    .line 133
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getAttributes()Lorg/eclipse/jetty/util/Attributes;

    move-result-object v7

    .line 134
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;

    move-result-object v2

    .line 137
    :try_start_0
    sget-object v3, Lc/c/d;->b:Lc/c/d;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lc/c/d;)V

    .line 138
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->include()V

    .line 139
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_named:Ljava/lang/String;

    check-cast v0, Lc/c/c/c;

    check-cast v1, Lc/c/c/e;

    invoke-virtual {v3, v5, v4, v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 188
    :goto_3
    invoke-virtual {v4, v7}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 189
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 190
    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 191
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lc/c/d;)V

    .line 192
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 143
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/eclipse/jetty/server/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 145
    if-eqz v8, :cond_4

    .line 148
    if-nez v2, :cond_5

    .line 150
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->extractParameters()V

    .line 151
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getParameters()Lorg/eclipse/jetty/util/MultiMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 154
    :goto_4
    :try_start_2
    new-instance v9, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v9}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 155
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V

    .line 157
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 160
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 161
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 166
    const/4 v2, 0x0

    :goto_5
    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 167
    invoke-static {v11, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v3, v12}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 170
    :cond_3
    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v5

    .line 173
    :cond_4
    :try_start_3
    new-instance v3, Lorg/eclipse/jetty/server/k;

    invoke-direct {v3, p0, v7}, Lorg/eclipse/jetty/server/k;-><init>(Lorg/eclipse/jetty/server/Dispatcher;Lorg/eclipse/jetty/util/Attributes;)V

    .line 175
    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_uri:Ljava/lang/String;

    iput-object v5, v3, Lorg/eclipse/jetty/server/k;->b:Ljava/lang/String;

    .line 176
    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/eclipse/jetty/server/k;->c:Ljava/lang/String;

    .line 177
    const/4 v5, 0x0

    iput-object v5, v3, Lorg/eclipse/jetty/server/k;->d:Ljava/lang/String;

    .line 178
    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    iput-object v5, v3, Lorg/eclipse/jetty/server/k;->e:Ljava/lang/String;

    .line 179
    iput-object v8, v3, Lorg/eclipse/jetty/server/k;->f:Ljava/lang/String;

    .line 181
    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 183
    iget-object v3, p0, Lorg/eclipse/jetty/server/Dispatcher;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    iget-object v5, p0, Lorg/eclipse/jetty/server/Dispatcher;->_path:Ljava/lang/String;

    check-cast v0, Lc/c/c/c;

    check-cast v1, Lc/c/c/e;

    invoke-virtual {v3, v5, v4, v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto/16 :goto_3

    .line 188
    :catchall_0
    move-exception v0

    :goto_6
    invoke-virtual {v4, v7}, Lorg/eclipse/jetty/server/Request;->setAttributes(Lorg/eclipse/jetty/util/Attributes;)V

    .line 189
    invoke-virtual {v4}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->included()V

    .line 190
    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/server/Request;->setParameters(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 191
    invoke-virtual {v4, v6}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Lc/c/d;)V

    throw v0

    .line 188
    :catchall_1
    move-exception v0

    move-object v2, v5

    goto :goto_6

    :cond_5
    move-object v5, v2

    goto/16 :goto_4

    :cond_6
    move-object v1, p2

    goto/16 :goto_2

    :cond_7
    move-object v0, p1

    goto/16 :goto_1
.end method
