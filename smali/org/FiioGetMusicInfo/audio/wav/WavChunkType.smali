.class public final enum Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;
.super Ljava/lang/Enum;
.source "WavChunkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DATA:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

.field public static final enum FACT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

.field public static final enum FORMAT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

.field public static final enum ID3:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

.field public static final enum INFO:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

.field public static final enum LIST:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const-string v1, "FORMAT"

    const-string v2, "fmt "

    const-string v3, "Basic Audio Information"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->FORMAT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const-string v1, "FACT"

    const-string v2, "fact"

    const-string v3, "Only strictly required for Non-PCM or compressed data"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->FACT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    .line 15
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const-string v1, "DATA"

    const-string v2, "data"

    const-string v3, "Stores the actual audio data"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->DATA:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const-string v1, "LIST"

    const-string v2, "LIST"

    const-string v3, "List chunk, wraps round other chunks"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->LIST:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const-string v1, "INFO"

    const-string v2, "INFO"

    const-string v3, "Original metadata implementation"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->INFO:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    .line 18
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const-string v1, "ID3"

    const/4 v2, 0x5

    const-string v3, "id3 "

    const-string v4, "Stores metadata in ID3 chunk"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ID3:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->FORMAT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->FACT:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->DATA:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->LIST:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->INFO:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ID3:Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->code:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->description:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;
    .locals 7

    .prologue
    .line 33
    const-class v1, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->values()[Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 38
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :cond_1
    :try_start_1
    aget-object v4, v2, v0

    .line 35
    sget-object v5, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/WavChunkType;->code:Ljava/lang/String;

    return-object v0
.end method
