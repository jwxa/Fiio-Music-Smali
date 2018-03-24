.class abstract Lorg/FiioGetMusicInfo/audio/asf/io/a;
.super Ljava/lang/Object;
.source "ChunkContainerReader.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ChunkType:",
        "Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final LOGGER:Ljava/util/logging/Logger;

.field public static final READ_LIMIT:I = 0x2000


# instance fields
.field protected final eachChunkOnce:Z

.field protected hasFailingReaders:Z

.field protected final readerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->$assertionsDisabled:Z

    .line 30
    const-string v0, "org.jaudiotabgger.audio"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 29
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->LOGGER:Ljava/util/logging/Logger;

    .line 35
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->hasFailingReaders:Z

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->readerMap:Ljava/util/Map;

    .line 69
    iput-boolean p2, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->eachChunkOnce:Z

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 71
    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->register(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private register(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;

    .line 228
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;->getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 236
    :goto_1
    return-void

    .line 228
    :cond_0
    aget-object v4, v2, v1

    .line 229
    iget-object v5, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->readerMap:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/a;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :catch_1
    move-exception v0

    .line 234
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/io/a;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected checkStream(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->hasFailingReaders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    const-string v1, "Stream has to support mark/reset."

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method protected abstract createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/math/BigInteger;",
            "Ljava/io/InputStream;",
            ")TChunkType;"
        }
    .end annotation
.end method

.method protected getReader(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->readerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;

    return-object v0
.end method

.method protected isReaderAvailable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->readerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            "Ljava/io/InputStream;",
            "J)TChunkType;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x10

    .line 156
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->checkStream(Ljava/io/InputStream;)V

    .line 157
    new-instance v4, Lorg/FiioGetMusicInfo/audio/asf/io/c;

    invoke-direct {v4, p2}, Lorg/FiioGetMusicInfo/audio/asf/io/c;-><init>(Ljava/io/InputStream;)V

    .line 158
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->getApplyingIds()[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    const-string v1, "provided GUID is not supported by this reader."

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v0

    .line 168
    invoke-virtual {p0, p3, p4, v0, v4}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->createContainer(JLjava/math/BigInteger;Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    move-result-object v5

    .line 170
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    add-long/2addr v0, v8

    .line 172
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 176
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->getChunkEnd()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 213
    return-object v5

    .line 177
    :cond_2
    invoke-static {v4}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readGUID(Ljava/io/InputStream;)Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v7

    .line 178
    iget-boolean v2, p0, Lorg/FiioGetMusicInfo/audio/asf/io/a;->eachChunkOnce:Z

    if-eqz v2, :cond_5

    .line 179
    invoke-virtual {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->isReaderAvailable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 178
    :cond_3
    const/4 v2, 0x1

    move v3, v2

    .line 186
    :goto_1
    if-nez v3, :cond_6

    invoke-virtual {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->isReaderAvailable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 187
    invoke-virtual {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->getReader(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;

    move-result-object v2

    .line 188
    invoke-interface {v2}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;->canFail()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    const/16 v2, 0x2000

    invoke-virtual {v4, v2}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->mark(I)V

    .line 191
    :cond_4
    invoke-virtual {p0, v7}, Lorg/FiioGetMusicInfo/audio/asf/io/a;->getReader(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;

    move-result-object v2

    invoke-interface {v2, v7, v4, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkReader;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v2

    .line 197
    :goto_2
    if-nez v2, :cond_7

    .line 201
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->reset()V

    goto :goto_0

    .line 178
    :cond_5
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 194
    :cond_6
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/asf/io/b;->a()Lorg/FiioGetMusicInfo/audio/asf/io/b;

    move-result-object v2

    invoke-virtual {v2, v7, v4, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/b;->read(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;J)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v2

    goto :goto_2

    .line 203
    :cond_7
    if-nez v3, :cond_8

    .line 204
    invoke-virtual {v5, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->addChunk(Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;)V

    .line 206
    :cond_8
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getChunkEnd()J

    move-result-wide v0

    .line 209
    sget-boolean v2, Lorg/FiioGetMusicInfo/audio/asf/io/a;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/io/c;->a()J

    move-result-wide v2

    add-long/2addr v2, p3

    add-long/2addr v2, v8

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
