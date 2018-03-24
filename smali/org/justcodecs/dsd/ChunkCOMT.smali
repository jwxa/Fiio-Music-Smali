.class public Lorg/justcodecs/dsd/ChunkCOMT;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkCOMT.java"


# static fields
.field public static Channel:I

.field public static File_History:I

.field public static General_album:I

.field public static Sound_Source:I


# instance fields
.field comments:[Lorg/justcodecs/dsd/ChunkCOMT$Comment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, Lorg/justcodecs/dsd/ChunkCOMT;->General_album:I

    .line 11
    const/4 v0, 0x1

    sput v0, Lorg/justcodecs/dsd/ChunkCOMT;->Channel:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lorg/justcodecs/dsd/ChunkCOMT;->Sound_Source:I

    .line 13
    const/4 v0, 0x3

    sput v0, Lorg/justcodecs/dsd/ChunkCOMT;->File_History:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/justcodecs/dsd/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 6

    .prologue
    .line 59
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 62
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v2

    .line 63
    new-array v0, v2, [Lorg/justcodecs/dsd/ChunkCOMT$Comment;

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkCOMT;->comments:[Lorg/justcodecs/dsd/ChunkCOMT$Comment;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkCOMT;->skip(Lorg/justcodecs/dsd/DSDStream;)V

    .line 75
    return-void

    .line 65
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/justcodecs/dsd/ChunkCOMT;->comments:[Lorg/justcodecs/dsd/ChunkCOMT$Comment;

    new-instance v4, Lorg/justcodecs/dsd/ChunkCOMT$Comment;

    invoke-direct {v4}, Lorg/justcodecs/dsd/ChunkCOMT$Comment;-><init>()V

    aput-object v4, v3, v0

    .line 66
    iget-object v3, p0, Lorg/justcodecs/dsd/ChunkCOMT;->comments:[Lorg/justcodecs/dsd/ChunkCOMT$Comment;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, v1}, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->read(Lorg/justcodecs/dsd/DSDStream;Ljava/util/Calendar;)V

    .line 67
    iget-object v3, p0, Lorg/justcodecs/dsd/ChunkCOMT;->comments:[Lorg/justcodecs/dsd/ChunkCOMT$Comment;

    aget-object v3, v3, v0

    iget-short v3, v3, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->cmtType:S

    sget v4, Lorg/justcodecs/dsd/ChunkCOMT;->General_album:I

    if-ne v3, v4, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/justcodecs/dsd/ChunkCOMT;->getFRM8()Lorg/justcodecs/dsd/ChunkFRM8;

    move-result-object v3

    iget-object v3, v3, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v4, "Album"

    iget-object v5, p0, Lorg/justcodecs/dsd/ChunkCOMT;->comments:[Lorg/justcodecs/dsd/ChunkCOMT$Comment;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
