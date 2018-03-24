.class public final enum Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;
.super Ljava/lang/Enum;
.source "ChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANNOTATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum APPLICATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum AUTHOR:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COMMENTS:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum COMMON:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum COPYRIGHT:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum FORMAT_VERSION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum NAME:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum SOUND:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

.field public static final enum TAG:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "FORMAT_VERSION"

    const-string v2, "FVER"

    invoke-direct {v0, v1, v4, v2}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->FORMAT_VERSION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "APPLICATION"

    const-string v2, "APPL"

    invoke-direct {v0, v1, v5, v2}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->APPLICATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 15
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "SOUND"

    const-string v2, "SSND"

    invoke-direct {v0, v1, v6, v2}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->SOUND:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "COMMON"

    const-string v2, "COMM"

    invoke-direct {v0, v1, v7, v2}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COMMON:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "COMMENTS"

    const-string v2, "COMT"

    invoke-direct {v0, v1, v8, v2}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COMMENTS:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 18
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "NAME"

    const/4 v2, 0x5

    const-string v3, "NAME"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->NAME:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 19
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "AUTHOR"

    const/4 v2, 0x6

    const-string v3, "AUTH"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->AUTHOR:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 20
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "COPYRIGHT"

    const/4 v2, 0x7

    const-string v3, "(c) "

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COPYRIGHT:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 21
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "ANNOTATION"

    const/16 v2, 0x8

    const-string v3, "ANNO"

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ANNOTATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 22
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const-string v1, "TAG"

    const/16 v2, 0x9

    const-string v3, "ID3 "

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->TAG:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->FORMAT_VERSION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->APPLICATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->SOUND:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COMMON:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COMMENTS:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->NAME:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->AUTHOR:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->COPYRIGHT:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ANNOTATION:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->TAG:Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->code:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;
    .locals 7

    .prologue
    .line 42
    const-class v1, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->values()[Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 47
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :cond_1
    :try_start_1
    aget-object v4, v2, v0

    .line 44
    sget-object v5, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/chunk/ChunkType;->code:Ljava/lang/String;

    return-object v0
.end method
