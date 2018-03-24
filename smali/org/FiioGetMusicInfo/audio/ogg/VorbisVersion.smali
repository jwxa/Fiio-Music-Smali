.class public final enum Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;
.super Ljava/lang/Enum;
.source "VorbisVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

.field public static final enum VERSION_ONE:Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;


# instance fields
.field private displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    new-instance v0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    const-string v1, "VERSION_ONE"

    const-string v2, "Ogg Vorbis v1"

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->VERSION_ONE:Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->VERSION_ONE:Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    aput-object v1, v0, v3

    sput-object v0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->displayName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ogg/VorbisVersion;->displayName:Ljava/lang/String;

    return-object v0
.end method
