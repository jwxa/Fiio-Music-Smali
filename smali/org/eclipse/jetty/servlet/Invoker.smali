.class public Lorg/eclipse/jetty/servlet/Invoker;
.super Lc/c/c/b;
.source "Invoker.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _invokerEntry:Ljava/util/Map$Entry;

.field private _nonContextServlets:Z

.field private _parameters:Ljava/util/Map;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/eclipse/jetty/servlet/Invoker;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lc/c/c/b;-><init>()V

    .line 245
    return-void
.end method

.method private getHolder([Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 301
    if-nez p1, :cond_1

    .line 312
    :cond_0
    return-object v0

    .line 305
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 307
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    aget-object v0, p1, v1

    .line 305
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker;->getServletContext()Lc/c/s;

    move-result-object v0

    .line 84
    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lorg/eclipse/jetty/server/handler/HandlerWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 90
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Invoker;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 91
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/Invoker;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 96
    const-string v1, "nonContextServlets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "t"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/Invoker;->_nonContextServlets:Z

    .line 100
    :cond_1
    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "t"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_verbose:Z

    goto :goto_1

    :cond_2
    move v1, v3

    .line 98
    goto :goto_2

    :cond_3
    move v0, v3

    .line 102
    goto :goto_3

    .line 106
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    .line 108
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 111
    :cond_6
    return-void
.end method

.method protected service(Lc/c/c/c;Lc/c/c/e;)V
    .locals 12

    .prologue
    const/16 v4, 0x2f

    const/16 v11, 0x194

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    .line 119
    const-string v0, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    if-nez v0, :cond_1

    .line 121
    invoke-interface {p1}, Lc/c/c/c;->getServletPath()Ljava/lang/String;

    move-result-object v5

    move v3, v1

    .line 124
    :goto_0
    const-string v0, "javax.servlet.include.path_info"

    invoke-interface {p1, v0}, Lc/c/c/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    if-nez v0, :cond_11

    .line 126
    invoke-interface {p1}, Lc/c/c/c;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    .line 130
    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 132
    :cond_0
    invoke-interface {p2, v11}, Lc/c/c/e;->sendError(I)V

    .line 242
    :goto_2
    return-void

    :cond_1
    move-object v5, v0

    move v3, v2

    .line 123
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_4

    .line 138
    :goto_3
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 139
    if-gez v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 142
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 143
    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/servlet/Invoker;->getHolder([Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v4

    .line 145
    if-eqz v4, :cond_6

    .line 149
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding servlet mapping for named servlet:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v0, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 152
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v2}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    iget-object v8, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v8}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v8

    const-class v9, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v8, v0, v9}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    move-object v8, v4

    move-object v4, v2

    .line 228
    :goto_5
    if-eqz v8, :cond_f

    .line 230
    instance-of v0, p1, Lorg/eclipse/jetty/server/Request;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/server/Request;

    move-object v7, v0

    .line 231
    :goto_6
    new-instance v0, Lorg/eclipse/jetty/servlet/d;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jetty/servlet/d;-><init>(Lorg/eclipse/jetty/servlet/Invoker;Lc/c/c/c;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Lc/c/ac;Lc/c/ai;)V

    goto/16 :goto_2

    :cond_4
    move v2, v1

    .line 137
    goto/16 :goto_3

    .line 139
    :cond_5
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_4

    .line 159
    :cond_6
    const-string v0, ".class"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 161
    :goto_7
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 163
    :cond_7
    invoke-interface {p2, v11}, Lc/c/c/e;->sendError(I)V

    goto/16 :goto_2

    .line 167
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    .line 173
    invoke-static {v5, v4}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_a

    iget-object v8, p0, Lorg/eclipse/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    invoke-interface {v0, v8}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 225
    :cond_9
    :goto_8
    monitor-exit v2

    move-object v8, v0

    goto :goto_5

    .line 184
    :cond_a
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 185
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Making new servlet="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v0, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_b
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Invoker;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 188
    iget-object v8, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-eqz v8, :cond_c

    .line 189
    iget-object v8, p0, Lorg/eclipse/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_c
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    iget-boolean v8, p0, Lorg/eclipse/jetty/servlet/Invoker;->_nonContextServlets:Z

    if-nez v8, :cond_d

    .line 201
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Lc/c/q;

    move-result-object v8

    .line 203
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/Invoker;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v9}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    if-eq v9, v10, :cond_d

    .line 208
    :try_start_3
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :goto_9
    :try_start_4
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dynamic servlet "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not loaded from context "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lc/c/c/c;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v0, Lc/c/ao;

    const-string v1, "Not in context"

    invoke-direct {v0, v1}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    :try_start_5
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 195
    new-instance v1, Lc/c/ao;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/c/ao;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :catch_1
    move-exception v0

    .line 212
    sget-object v1, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 222
    :cond_d
    iget-boolean v8, p0, Lorg/eclipse/jetty/servlet/Invoker;->_verbose:Z

    if-eqz v8, :cond_9

    sget-object v8, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v8}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 223
    sget-object v8, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dynamic load \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v8, v7, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8

    .line 230
    :cond_e
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getRequest()Lorg/eclipse/jetty/server/Request;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_6

    .line 237
    :cond_f
    sget-object v0, Lorg/eclipse/jetty/servlet/Invoker;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t find holder for servlet: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-interface {p2, v11}, Lc/c/c/e;->sendError(I)V

    goto/16 :goto_2

    :cond_10
    move-object v4, v2

    goto/16 :goto_7

    :cond_11
    move-object v6, v0

    goto/16 :goto_1
.end method
