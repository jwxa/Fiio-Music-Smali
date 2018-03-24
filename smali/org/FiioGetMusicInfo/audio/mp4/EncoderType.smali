.class public final enum Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;
.super Ljava/lang/Enum;
.source "EncoderType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

.field public static final enum APPLE_LOSSLESS:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

.field public static final enum DRM_AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    const-string v1, "AAC"

    const-string v2, "AAC"

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    .line 10
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    const-string v1, "DRM_AAC"

    const-string v2, "DRM AAC"

    invoke-direct {v0, v1, v4, v2}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->DRM_AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    .line 11
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    const-string v1, "APPLE_LOSSLESS"

    const-string v2, "Apple Lossless"

    invoke-direct {v0, v1, v5, v2}, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->DRM_AAC:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->APPLE_LOSSLESS:Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->description:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/EncoderType;->description:Ljava/lang/String;

    return-object v0
.end method
