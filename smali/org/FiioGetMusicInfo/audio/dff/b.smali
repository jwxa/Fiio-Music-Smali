.class final enum Lorg/FiioGetMusicInfo/audio/dff/b;
.super Ljava/lang/Enum;
.source "DffAudioFileReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/dff/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/FiioGetMusicInfo/audio/dff/b;

.field public static final enum b:Lorg/FiioGetMusicInfo/audio/dff/b;

.field public static final enum c:Lorg/FiioGetMusicInfo/audio/dff/b;

.field public static final enum d:Lorg/FiioGetMusicInfo/audio/dff/b;

.field public static final enum e:Lorg/FiioGetMusicInfo/audio/dff/b;

.field public static final enum f:Lorg/FiioGetMusicInfo/audio/dff/b;

.field public static final enum g:Lorg/FiioGetMusicInfo/audio/dff/b;

.field private static final synthetic h:[Lorg/FiioGetMusicInfo/audio/dff/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "FVER"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->a:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 40
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "PROP"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->b:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 41
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "DSD"

    invoke-direct {v0, v1, v5}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->c:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 42
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "DIIN"

    invoke-direct {v0, v1, v6}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->d:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 43
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "COMT"

    invoke-direct {v0, v1, v7}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->e:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 44
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "ID3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->f:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 45
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    const-string v1, "UNKNOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/dff/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->g:Lorg/FiioGetMusicInfo/audio/dff/b;

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/dff/b;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->a:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->b:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->c:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->d:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/b;->e:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/audio/dff/b;->f:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/audio/dff/b;->g:Lorg/FiioGetMusicInfo/audio/dff/b;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->h:[Lorg/FiioGetMusicInfo/audio/dff/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/dff/b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/dff/b;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/dff/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/b;->h:[Lorg/FiioGetMusicInfo/audio/dff/b;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/dff/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
