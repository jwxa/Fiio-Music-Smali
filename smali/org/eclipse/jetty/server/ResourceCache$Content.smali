.class public Lorg/eclipse/jetty/server/ResourceCache$Content;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpContent;


# instance fields
.field final _contentType:Lorg/eclipse/jetty/io/Buffer;

.field _directBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field final _etagBuffer:Lorg/eclipse/jetty/io/Buffer;

.field _indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field final _key:Ljava/lang/String;

.field volatile _lastAccessed:J

.field final _lastModified:J

.field final _lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

.field final _length:I

.field final _resource:Lorg/eclipse/jetty/util/resource/Resource;

.field final synthetic this$0:Lorg/eclipse/jetty/server/ResourceCache;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 367
    iput-object p1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 363
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 368
    iput-object p2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    .line 369
    iput-object p3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    .line 371
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$000(Lorg/eclipse/jetty/server/ResourceCache;)Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    .line 372
    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    .line 373
    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    .line 374
    iget-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    .line 376
    if-eqz v3, :cond_3

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_2
    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    .line 377
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 378
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    .line 381
    invoke-static {p1}, Lorg/eclipse/jetty/server/ResourceCache;->access$300(Lorg/eclipse/jetty/server/ResourceCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p3}, Lorg/eclipse/jetty/util/resource/Resource;->getWeakETag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_etagBuffer:Lorg/eclipse/jetty/io/Buffer;

    .line 382
    return-void

    .line 373
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 374
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-wide v4, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    invoke-static {v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 481
    if-nez v0, :cond_3

    .line 483
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/ResourceCache;->getDirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 485
    if-nez v2, :cond_1

    .line 486
    invoke-static {}, Lorg/eclipse/jetty/server/ResourceCache;->access$500()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    .line 492
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    move-object v0, v1

    .line 495
    :goto_1
    return-object v0

    .line 487
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_directBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    move-object v2, v0

    goto :goto_0

    .line 495
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public getETag()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_etagBuffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 460
    if-nez v0, :cond_3

    .line 462
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/server/ResourceCache;->getIndirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 464
    if-nez v2, :cond_1

    .line 465
    invoke-static {}, Lorg/eclipse/jetty/server/ResourceCache;->access$500()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    .line 471
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    move-object v0, v1

    .line 473
    :goto_1
    return-object v0

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_indirectBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    move-object v2, v0

    goto :goto_0

    .line 473
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getResource()Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method protected invalidate()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 435
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 436
    return-void
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiss()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method isValid()Z
    .locals 4

    .prologue
    .line 418
    iget-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModified:J

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    .line 421
    const/4 v0, 0x1

    .line 426
    :goto_0
    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/server/ResourceCache;->access$400(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    .line 426
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 518
    const-string v0, "%s %s %d %s %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_resource:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_contentType:Lorg/eclipse/jetty/io/Buffer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastModifiedBytes:Lorg/eclipse/jetty/io/Buffer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
