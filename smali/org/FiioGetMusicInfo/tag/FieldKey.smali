.class public final enum Lorg/FiioGetMusicInfo/tag/FieldKey;
.super Ljava/lang/Enum;
.source "FieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

.field public static final enum YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 29
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 30
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "COVER_ART"

    invoke-direct {v0, v1, v5}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 31
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "DISC_NO"

    invoke-direct {v0, v1, v6}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 32
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "DISC_TOTAL"

    invoke-direct {v0, v1, v7}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 33
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "GENRE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 34
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "IS_COMPILATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 35
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "TITLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 36
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "TRACK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 37
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "TRACK_TOTAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 38
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    const-string v1, "YEAR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/FieldKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/FieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/FieldKey;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/FieldKey;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/FieldKey;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/FieldKey;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
