.class public Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "ChunkContainer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MULTI_CHUNKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chunkTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->$assertionsDisabled:Z

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 29
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->MULTI_CHUNKS:Ljava/util/Set;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_STREAM:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    .line 71
    return-void
.end method

.method protected static chunkstartsUnique(Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;)Z
    .locals 6

    .prologue
    .line 43
    const/4 v0, 0x1

    .line 44
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 45
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->getChunks()Ljava/util/Collection;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    return v1

    .line 46
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    .line 47
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addChunk(Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->assertChunkList(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->MULTI_CHUNKS:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    const-string v1, "The GUID of the given chunk indicates, that there is no more instance allowed."

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkstartsUnique(Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Chunk has equal start position like an already inserted one."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 90
    :cond_1
    return-void
.end method

.method protected assertChunkList(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-object v0
.end method

.method public getChunks()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-object v1

    .line 116
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;",
            ">;)",
            "Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;"
        }
    .end annotation

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 136
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public hasChunkByGUID(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->chunkTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;->getChunks()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/util/ChunkPositionComparator;

    invoke-direct {v2}, Lorg/FiioGetMusicInfo/audio/asf/util/ChunkPositionComparator;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  |"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
