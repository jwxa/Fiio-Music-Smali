.class public Lorg/justcodecs/dsd/ChunkID3;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkID3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/justcodecs/dsd/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 8

    .prologue
    .line 16
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 17
    invoke-virtual {p0}, Lorg/justcodecs/dsd/ChunkID3;->getFRM8()Lorg/justcodecs/dsd/ChunkFRM8;

    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "ID3 chink appeared out of FRM8 scope"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 23
    :cond_0
    :try_start_0
    new-instance v3, La/a/a/d;

    new-instance v4, La/a/a/m;

    move-object v0, p1

    check-cast v0, Ljava/io/RandomAccessFile;

    move-object v1, v0

    invoke-direct {v4, v1}, La/a/a/m;-><init>(Ljava/io/RandomAccessFile;)V

    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->encoding:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, La/a/a/d;-><init>(La/a/a/m;Ljava/lang/String;)V

    .line 24
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Album"

    const/4 v5, 0x2

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/justcodecs/dsd/ChunkID3;->storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V

    .line 25
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Artist"

    const/4 v5, 0x7

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/justcodecs/dsd/ChunkID3;->storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V

    .line 26
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Title"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/justcodecs/dsd/ChunkID3;->storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V

    .line 27
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Year"

    const/4 v5, 0x5

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/justcodecs/dsd/ChunkID3;->storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V

    .line 28
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Year"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :try_start_1
    iget-object v4, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v5, "Year"

    new-instance v6, Ljava/lang/Integer;

    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v7, "Year"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Track"

    const/16 v5, 0xc

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/justcodecs/dsd/ChunkID3;->storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V

    .line 35
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Track"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    :try_start_3
    iget-object v4, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v5, "Track"

    new-instance v6, Ljava/lang/Integer;

    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v7, "Track"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 41
    :cond_2
    :goto_1
    :try_start_4
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Genre"

    const/4 v5, 0x3

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/justcodecs/dsd/ChunkID3;->storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v3}, La/a/a/d;->b()La/a/a/r;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/r;->b()[B

    move-result-object v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    iget-object v2, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v3, "Picture"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 51
    :cond_3
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkID3;->skip(Lorg/justcodecs/dsd/DSDStream;)V

    .line 52
    return-void

    .line 32
    :catch_0
    move-exception v1

    :try_start_5
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Year"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    .line 47
    new-instance v2, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v3, "ID3 parsing error"

    invoke-direct {v2, v3, v1}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 39
    :catch_2
    move-exception v1

    :try_start_6
    iget-object v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Track"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method protected storeAttr(Ljava/util/HashMap;La/a/a/d;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "La/a/a/d;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p2, p4}, La/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, La/a/a/t;->a(La/a/a/d;Ljava/lang/String;)La/a/a/r;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, La/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
