.class public Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "EncodingChunk.java"


# instance fields
.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_ENCODING:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->strings:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public getStrings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->strings:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncodingChunk;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  | : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
