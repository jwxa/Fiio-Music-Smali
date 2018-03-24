.class public final Lorg/FiioGetMusicInfo/audio/asf/util/ChunkPositionComparator;
.super Ljava/lang/Object;
.source "ChunkPositionComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57f1ee5d529ccfe1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    check-cast p2, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/asf/util/ChunkPositionComparator;->compare(Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;)I

    move-result v0

    return v0
.end method

.method public final compare(Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;)I
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->getPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 44
    return v0
.end method
