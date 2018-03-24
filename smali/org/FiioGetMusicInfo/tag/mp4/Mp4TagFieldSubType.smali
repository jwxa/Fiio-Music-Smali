.class public final enum Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;
.super Ljava/lang/Enum;
.source "Mp4TagFieldSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum BYTE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum DISC_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum NUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum REVERSE_DNS:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum TEXT:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum TRACK_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

.field public static final enum UNKNOWN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 10
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 11
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v5}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 12
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "REVERSE_DNS"

    invoke-direct {v0, v1, v6}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "GENRE"

    invoke-direct {v0, v1, v7}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "DISC_NO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 15
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "TRACK_NO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "ARTWORK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
