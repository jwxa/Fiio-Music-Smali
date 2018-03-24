.class public final enum Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;
.super Ljava/lang/Enum;
.source "WavSaveOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

.field public static final enum SAVE_ACTIVE:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

.field public static final enum SAVE_BOTH:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

.field public static final enum SAVE_EXISTING_AND_ACTIVE:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_EXISTING_AND_ACTIVE"

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    .line 22
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_ACTIVE"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    .line 23
    new-instance v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    const-string v1, "SAVE_BOTH"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->SAVE_EXISTING_AND_ACTIVE:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->SAVE_ACTIVE:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->SAVE_BOTH:Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    aput-object v1, v0, v4

    sput-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/wav/WavSaveOptions;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
