.class public Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;
.super Lorg/eclipse/jetty/server/handler/HandlerCollection;
.source "ContextHandlerCollection.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _contextClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/server/handler/ContextHandler;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _contextMap:Lorg/eclipse/jetty/http/PathMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;-><init>(Z)V

    .line 55
    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    if-nez p1, :cond_1

    .line 324
    const/4 p1, 0x0

    .line 329
    :cond_0
    :goto_0
    return-object p1

    .line 326
    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 2

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 285
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->addHandler(Lorg/eclipse/jetty/server/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-object v0

    .line 290
    :catch_0
    move-exception v0

    .line 292
    sget-object v1, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 293
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doStart()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 172
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->doStart()V

    .line 173
    return-void
.end method

.method public getContextClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->isAsync()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/AsyncContinuation;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    .line 203
    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 206
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move v2, v3

    .line 208
    :goto_1
    invoke-static {v5}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 211
    invoke-static {v5, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 214
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 216
    check-cast v0, Ljava/util/Map;

    .line 217
    invoke-interface {p3}, Lc/c/c/c;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move v4, v3

    .line 221
    :goto_2
    invoke-static {v7}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 223
    invoke-static {v7, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/Handler;

    .line 224
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 225
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 230
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "*."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move v4, v3

    .line 231
    :goto_3
    invoke-static {v6}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, v1, :cond_4

    .line 233
    invoke-static {v6, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/Handler;

    .line 234
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 235
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 241
    :cond_4
    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move v1, v3

    .line 242
    :goto_4
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 244
    invoke-static {v4, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/Handler;

    .line 245
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 246
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    move v4, v3

    .line 252
    :goto_5
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 254
    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/Handler;

    .line 255
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 256
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 208
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 265
    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 267
    aget-object v1, v0, v3

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    .line 268
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_0
.end method

.method public mapContexts()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 70
    new-instance v7, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v7}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v8

    move v6, v4

    .line 74
    :goto_0
    if-eqz v8, :cond_a

    array-length v0, v8

    if-ge v6, v0, :cond_a

    .line 78
    aget-object v0, v8, v6

    instance-of v0, v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    if-eqz v0, :cond_1

    .line 80
    new-array v0, v12, [Lorg/eclipse/jetty/server/Handler;

    aget-object v1, v8, v6

    aput-object v1, v0, v4

    move-object v2, v0

    :goto_1
    move v3, v4

    .line 89
    :goto_2
    array-length v0, v2

    if-ge v3, v0, :cond_9

    .line 91
    aget-object v0, v2, v3

    check-cast v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 93
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal context spec:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    aget-object v0, v8, v6

    instance-of v0, v0, Lorg/eclipse/jetty/server/HandlerContainer;

    if-eqz v0, :cond_9

    .line 84
    aget-object v0, v8, v6

    check-cast v0, Lorg/eclipse/jetty/server/HandlerContainer;

    const-class v1, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/server/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 98
    :cond_2
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v12, :cond_b

    .line 103
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 109
    :goto_3
    invoke-virtual {v7, v5}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    .line 113
    if-eqz v9, :cond_6

    array-length v0, v9

    if-lez v0, :cond_6

    .line 117
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 118
    check-cast v0, Ljava/util/Map;

    :goto_4
    move v1, v4

    .line 126
    :goto_5
    array-length v5, v9

    if-ge v1, v5, :cond_7

    .line 128
    aget-object v5, v9, v1

    .line 129
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 130
    aget-object v11, v8, v6

    invoke-static {v10, v11}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 131
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 105
    :cond_4
    const-string v5, "/*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    .line 121
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    const-string v10, "*"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {v7, v5, v0}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 134
    :cond_6
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 136
    check-cast v1, Ljava/util/Map;

    .line 137
    const-string v0, "*"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    aget-object v5, v8, v6

    invoke-static {v0, v5}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    const-string v5, "*"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_7
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 143
    :cond_8
    aget-object v0, v8, v6

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-virtual {v7, v5, v0}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 74
    :cond_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 148
    :cond_a
    iput-object v7, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    .line 150
    return-void

    :cond_b
    move-object v5, v1

    goto/16 :goto_3
.end method

.method public setContextClass(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 315
    if-eqz p1, :cond_0

    const-class v0, Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 317
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    .line 318
    return-void
.end method

.method public setHandlers([Lorg/eclipse/jetty/server/Handler;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->_contextMap:Lorg/eclipse/jetty/http/PathMap;

    .line 162
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/HandlerCollection;->setHandlers([Lorg/eclipse/jetty/server/Handler;)V

    .line 163
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/ContextHandlerCollection;->mapContexts()V

    .line 165
    :cond_0
    return-void
.end method
