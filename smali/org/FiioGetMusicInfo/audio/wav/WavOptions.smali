.class public final enum Lorg/FiioGetMusicInfo/audio/wav/WavOptions;
.super Ljava/lang/Enum;
.source "WavOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/wav/WavOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

.field public static final enum READ_ID3_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

.field public static final enum READ_ID3_UNLESS_ONLY_INFO:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

.field public static final enum READ_INFO_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

.field public static final enum READ_INFO_UNLESS_ONLY_ID3:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    const-string v1, "READ_ID3_ONLY"

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_ID3_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    .line 22
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    const-string v1, "READ_INFO_ONLY"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_INFO_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    .line 23
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    const-string v1, "READ_ID3_UNLESS_ONLY_INFO"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    .line 24
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    const-string v1, "READ_INFO_UNLESS_ONLY_ID3"

    invoke-direct {v0, v1, v5}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_ID3_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_INFO_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    aput-object v1, v0, v5

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/WavOptions;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/wav/WavOptions;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
