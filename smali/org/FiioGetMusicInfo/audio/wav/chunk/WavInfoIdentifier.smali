.class public final enum Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
.super Ljava/lang/Enum;
.source "WavInfoIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALBUM:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ALBUM_GAIN:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum ARTIST:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field private static final CODE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COPYRIGHT:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field private static final FIELDKEY_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            "Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GENRE:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TITLE:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACKNO:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum TRACK_GAIN:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

.field public static final enum YEAR:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;


# instance fields
.field private code:Ljava/lang/String;

.field private fieldKey:Lorg/FiioGetMusicInfo/tag/FieldKey;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "ARTIST"

    const-string v2, "IART"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "TITLE"

    .line 15
    const-string v2, "INAM"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "ALBUM"

    const-string v2, "IPRD"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "TRACKNO"

    const-string v2, "ITRK"

    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 18
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "YEAR"

    const/4 v2, 0x4

    const-string v3, "ICRD"

    sget-object v4, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 19
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "GENRE"

    const/4 v2, 0x5

    const-string v3, "IGNR"

    sget-object v4, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 20
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "COPYRIGHT"

    const/4 v2, 0x6

    .line 21
    const-string v3, "ICOP"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 22
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "TRACK_GAIN"

    const/4 v2, 0x7

    .line 29
    const-string v3, "ITGL"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 30
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const-string v1, "ALBUM_GAIN"

    const/16 v2, 0x8

    const-string v3, "IAGL"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ARTIST:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->TITLE:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v1, v0, v7

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ALBUM:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v1, v0, v8

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->TRACKNO:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->YEAR:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->GENRE:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->COPYRIGHT:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->TRACK_GAIN:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ALBUM_GAIN:Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 41
    return-void
.end method

.method public static declared-synchronized getByByFieldKey(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    .prologue
    .line 80
    const-class v1, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->values()[Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 90
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :cond_1
    :try_start_1
    aget-object v4, v2, v0

    .line 84
    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 86
    sget-object v5, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->FIELDKEY_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->getFieldKey()Lorg/FiioGetMusicInfo/tag/FieldKey;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getByCode(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
    .locals 7

    .prologue
    .line 62
    const-class v1, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->values()[Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 69
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :cond_1
    :try_start_1
    aget-object v4, v2, v0

    .line 66
    sget-object v5, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->CODE_TYPE_MAP:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getFieldKey()Lorg/FiioGetMusicInfo/tag/FieldKey;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/wav/chunk/WavInfoIdentifier;->fieldKey:Lorg/FiioGetMusicInfo/tag/FieldKey;

    return-object v0
.end method
