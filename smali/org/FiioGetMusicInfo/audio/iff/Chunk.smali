.class public abstract Lorg/FiioGetMusicInfo/audio/iff/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field protected chunkData:Ljava/nio/ByteBuffer;

.field protected chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->chunkData:Ljava/nio/ByteBuffer;

    .line 28
    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/iff/Chunk;->chunkHeader:Lorg/FiioGetMusicInfo/audio/iff/ChunkHeader;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract readChunk()Z
.end method
