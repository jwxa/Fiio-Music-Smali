.class public Lorg/eclipse/jetty/server/handler/IPAccessHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "IPAccessHandler.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field _black:Lorg/eclipse/jetty/util/IPAddressMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;"
        }
    .end annotation
.end field

.field _white:Lorg/eclipse/jetty/util/IPAddressMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 104
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 114
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 104
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/IPAddressMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    .line 127
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->setWhite([Ljava/lang/String;)V

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 130
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->setBlack([Ljava/lang/String;)V

    .line 131
    :cond_1
    return-void
.end method


# virtual methods
.method protected add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x7c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 221
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 223
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v4, v0

    move v3, v2

    .line 231
    :goto_0
    if-lez v4, :cond_6

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 232
    :goto_1
    if-lez v4, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_2
    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v1

    .line 236
    :goto_3
    if-eqz v0, :cond_8

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/*."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 237
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 239
    :goto_4
    invoke-virtual {p2, v5}, Lorg/eclipse/jetty/util/IPAddressMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap;

    .line 240
    if-nez v0, :cond_1

    .line 242
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/PathMap;-><init>(Z)V

    .line 243
    invoke-virtual {p2, v5, v0}, Lorg/eclipse/jetty/util/IPAddressMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_1
    if-eqz v3, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    invoke-virtual {v0, v3, v3}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_2
    if-eqz v4, :cond_3

    .line 249
    sget-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - deprecated specification syntax: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_3
    return-void

    .line 227
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 228
    if-ltz v3, :cond_5

    move v0, v1

    :goto_5
    move v4, v3

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move-object v5, p1

    .line 231
    goto :goto_1

    .line 232
    :cond_7
    const-string v0, "/*"

    goto :goto_2

    :cond_8
    move-object v3, v0

    goto :goto_4

    :cond_9
    move v4, v3

    goto :goto_3
.end method

.method public addBlack(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 153
    return-void
.end method

.method public addWhite(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 142
    return-void
.end method

.method protected doStart()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->doStart()V

    .line 337
    sget-object v0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    :cond_0
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, " WHITELIST:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v1, " BLACKLIST:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/lang/StringBuilder;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/IPAddressMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/util/IPAddressMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 374
    const-string v4, "# "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 381
    :cond_1
    return-void
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->isAddrUriAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/16 v0, 0x193

    invoke-interface {p4, v0}, Lc/c/c/e;->sendError(I)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/Handler;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lc/c/c/c;Lc/c/c/e;)V

    goto :goto_0
.end method

.method protected isAddrUriAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IPAddressMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_a

    .line 292
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/util/List;

    .line 294
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 296
    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap;

    .line 297
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    .line 298
    :cond_2
    :goto_2
    if-nez v0, :cond_6

    .line 322
    :cond_3
    :goto_3
    return v1

    .line 292
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    .line 297
    goto :goto_1

    .line 306
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/IPAddressMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/IPAddressMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_9

    .line 311
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_8

    check-cast v0, Ljava/util/List;

    .line 313
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 315
    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/PathMap;

    .line 316
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->size()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 311
    :cond_8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_9
    move v1, v2

    .line 322
    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method protected set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/IPAddressMap",
            "<",
            "Lorg/eclipse/jetty/http/PathMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/IPAddressMap;->clear()V

    .line 265
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 267
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 269
    invoke-virtual {p0, v2, p2}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->add(Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method public setBlack([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_black:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 175
    return-void
.end method

.method public setWhite([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->_white:Lorg/eclipse/jetty/util/IPAddressMap;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/server/handler/IPAccessHandler;->set([Ljava/lang/String;Lorg/eclipse/jetty/util/IPAddressMap;)V

    .line 164
    return-void
.end method
