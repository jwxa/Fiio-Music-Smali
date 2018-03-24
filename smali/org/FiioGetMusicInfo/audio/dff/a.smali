.class final enum Lorg/FiioGetMusicInfo/audio/dff/a;
.super Ljava/lang/Enum;
.source "DffAudioFileReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/audio/dff/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/FiioGetMusicInfo/audio/dff/a;

.field public static final enum b:Lorg/FiioGetMusicInfo/audio/dff/a;

.field public static final enum c:Lorg/FiioGetMusicInfo/audio/dff/a;

.field public static final enum d:Lorg/FiioGetMusicInfo/audio/dff/a;

.field public static final enum e:Lorg/FiioGetMusicInfo/audio/dff/a;

.field private static final synthetic f:[Lorg/FiioGetMusicInfo/audio/dff/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    const-string v1, "FS"

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/dff/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->a:Lorg/FiioGetMusicInfo/audio/dff/a;

    .line 50
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    const-string v1, "CHNL"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/audio/dff/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->b:Lorg/FiioGetMusicInfo/audio/dff/a;

    .line 51
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    const-string v1, "CMPR"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/audio/dff/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->c:Lorg/FiioGetMusicInfo/audio/dff/a;

    .line 52
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    const-string v1, "LSCO"

    invoke-direct {v0, v1, v5}, Lorg/FiioGetMusicInfo/audio/dff/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->d:Lorg/FiioGetMusicInfo/audio/dff/a;

    .line 53
    new-instance v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v6}, Lorg/FiioGetMusicInfo/audio/dff/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->e:Lorg/FiioGetMusicInfo/audio/dff/a;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/FiioGetMusicInfo/audio/dff/a;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->a:Lorg/FiioGetMusicInfo/audio/dff/a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->b:Lorg/FiioGetMusicInfo/audio/dff/a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->c:Lorg/FiioGetMusicInfo/audio/dff/a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->d:Lorg/FiioGetMusicInfo/audio/dff/a;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/audio/dff/a;->e:Lorg/FiioGetMusicInfo/audio/dff/a;

    aput-object v1, v0, v6

    sput-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->f:[Lorg/FiioGetMusicInfo/audio/dff/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/dff/a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/dff/a;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/audio/dff/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/audio/dff/a;->f:[Lorg/FiioGetMusicInfo/audio/dff/a;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/audio/dff/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
