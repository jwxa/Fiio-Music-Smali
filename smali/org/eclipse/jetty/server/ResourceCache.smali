.class public Lorg/eclipse/jetty/server/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/ResourceCache$Content;",
            ">;"
        }
    .end annotation
.end field

.field private final _cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _etags:Z

.field private final _factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

.field private _maxCacheSize:I

.field private _maxCachedFileSize:I

.field private _maxCachedFiles:I

.field private final _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private final _parent:Lorg/eclipse/jetty/server/ResourceCache;

.field private _useFileMappedBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;Lorg/eclipse/jetty/util/resource/ResourceFactory;Lorg/eclipse/jetty/http/MimeTypes;ZZ)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    .line 64
    const/high16 v0, 0x400000

    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    .line 65
    const/16 v0, 0x800

    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    .line 66
    const/high16 v0, 0x2000000

    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    .line 74
    iput-object p2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    iput-object p3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    .line 80
    iput-boolean p5, p0, Lorg/eclipse/jetty/server/ResourceCache;->_etags:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/ResourceCache;)Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/ResourceCache;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_etags:Z

    return v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private load(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/http/HttpContent;
    .locals 4

    .prologue
    .line 222
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/ResourceCache;->isCacheable(Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    new-instance v1, Lorg/eclipse/jetty/server/ResourceCache$Content;

    invoke-direct {v1, p0, p1, p2}, Lorg/eclipse/jetty/server/ResourceCache$Content;-><init>(Lorg/eclipse/jetty/server/ResourceCache;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 234
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 238
    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache;->getMaxCachedFileSize()I

    move-result v2

    iget-boolean v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_etags:Z

    invoke-direct {v0, p2, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private shrinkCache()V
    .locals 4

    .prologue
    .line 255
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    if-le v0, v1, :cond_5

    .line 258
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lorg/eclipse/jetty/server/o;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/o;-><init>(Lorg/eclipse/jetty/server/ResourceCache;)V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 276
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 281
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    if-le v2, v3, :cond_0

    .line 282
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_3

    .line 284
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    goto :goto_1

    .line 287
    :cond_5
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_2

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    goto :goto_0

    .line 167
    :cond_2
    return-void
.end method

.method public getCachedFiles()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getDirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 318
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(Ljava/io/File;)V

    .line 336
    :goto_0
    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 322
    if-gez v2, :cond_1

    .line 324
    sget-object v0, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 325
    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(I)V

    .line 328
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 329
    invoke-interface {v0, v3, v2}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 330
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 335
    sget-object v2, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 336
    goto :goto_0
.end method

.method protected getIndirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 294
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 295
    if-gez v2, :cond_0

    .line 297
    sget-object v1, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :goto_0
    return-object v0

    .line 300
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    .line 301
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 302
    invoke-interface {v1, v3, v2}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 303
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 304
    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    .line 308
    sget-object v2, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMaxCacheSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    return v0
.end method

.method public getMaxCachedFileSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    return v0
.end method

.method public getMaxCachedFiles()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    return v0
.end method

.method protected isCacheable(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    .line 215
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseFileMappedBuffer()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    return v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 185
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/resource/ResourceFactory;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 190
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/server/ResourceCache;->load(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 202
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxCacheSize(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    .line 118
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 119
    return-void
.end method

.method public setMaxCachedFileSize(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    .line 105
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 106
    return-void
.end method

.method public setMaxCachedFiles(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    .line 137
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 138
    return-void
.end method

.method public setUseFileMappedBuffer(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceCache["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
