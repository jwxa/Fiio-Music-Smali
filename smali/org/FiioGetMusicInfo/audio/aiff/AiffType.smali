.class public final enum Lorg/FiioGetMusicInfo/audio/aiff/AiffType;
.super Ljava/lang/Enum;
.source "AiffType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/aiff/AiffType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AIFC:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

.field public static final enum AIFF:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/aiff/AiffType;


# instance fields
.field code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    const-string v1, "AIFF"

    const-string v2, "AIFF"

    invoke-direct {v0, v1, v3, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFF:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    .line 9
    new-instance v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    const-string v1, "AIFC"

    const-string v2, "AIFC"

    invoke-direct {v0, v1, v4, v2}, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFC:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFF:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->AIFC:Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->code:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/aiff/AiffType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/aiff/AiffType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/aiff/AiffType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/aiff/AiffType;->code:Ljava/lang/String;

    return-object v0
.end method
