.class public Lorg/justcodecs/dsd/MetadataChunk;
.super Ljava/lang/Object;
.source "MetadataChunk.java"


# instance fields
.field attrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected encoding:Ljava/lang/String;

.field position:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lorg/justcodecs/dsd/MetadataChunk;->position:J

    .line 17
    iput-object p3, p0, Lorg/justcodecs/dsd/MetadataChunk;->encoding:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 6

    .prologue
    .line 21
    iget-wide v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->position:J

    invoke-interface {p1, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 22
    :try_start_0
    new-instance v1, La/a/a/d;

    new-instance v0, La/a/a/m;

    check-cast p1, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1}, La/a/a/m;-><init>(Ljava/io/RandomAccessFile;)V

    iget-object v2, p0, Lorg/justcodecs/dsd/MetadataChunk;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, La/a/a/d;-><init>(La/a/a/m;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    .line 26
    const-string v0, "Album"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lorg/justcodecs/dsd/MetadataChunk;->storeAttr(La/a/a/d;Ljava/lang/String;I)V

    .line 27
    const-string v0, "Artist"

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v0, v2}, Lorg/justcodecs/dsd/MetadataChunk;->storeAttr(La/a/a/d;Ljava/lang/String;I)V

    .line 28
    const-string v0, "Title"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/justcodecs/dsd/MetadataChunk;->storeAttr(La/a/a/d;Ljava/lang/String;I)V

    .line 29
    const-string v0, "Year"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lorg/justcodecs/dsd/MetadataChunk;->storeAttr(La/a/a/d;Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v2, "Year"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_1
    iget-object v2, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v3, "Year"

    new-instance v4, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v5, "Year"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "Track"

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v0, v2}, Lorg/justcodecs/dsd/MetadataChunk;->storeAttr(La/a/a/d;Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v2, "Track"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :try_start_3
    iget-object v2, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v3, "Track"

    new-instance v4, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v5, "Track"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 43
    :cond_1
    :goto_1
    :try_start_4
    const-string v0, "Genre"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v0, v2}, Lorg/justcodecs/dsd/MetadataChunk;->storeAttr(La/a/a/d;Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v1}, La/a/a/d;->b()La/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/r;->b()[B

    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    iget-object v1, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v2, "Picture"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    return-void

    .line 34
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v2, "Year"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :catch_2
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    const-string v2, "Track"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method protected storeAttr(La/a/a/d;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p1, p3}, La/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/a/a/t;->a(La/a/a/d;Ljava/lang/String;)La/a/a/r;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    invoke-virtual {v0}, La/a/a/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
