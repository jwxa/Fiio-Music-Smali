.class public final enum Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;
.super Ljava/lang/Enum;
.source "Mp4ContentTypeValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO_BOOK:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKLET:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum BOOKMARK:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MOVIE:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum MUSIC_VIDEO:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum NORMAL:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum SHORT_FILM:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

.field public static final enum TV_SHOW:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "MOVIE"

    const-string v2, "Movie"

    invoke-direct {v0, v1, v5, v2, v5}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 12
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "NORMAL"

    const-string v2, "Normal"

    invoke-direct {v0, v1, v6, v2, v6}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "AUDIO_BOOK"

    const-string v2, "AudioBook"

    invoke-direct {v0, v1, v7, v2, v7}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 14
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "BOOKMARK"

    const/4 v2, 0x3

    const-string v3, "Whacked Bookmark"

    invoke-direct {v0, v1, v2, v3, v8}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 15
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "MUSIC_VIDEO"

    const/4 v2, 0x4

    const-string v3, "Music Video"

    invoke-direct {v0, v1, v2, v3, v9}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 16
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "SHORT_FILM"

    const-string v2, "Short Film"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 17
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "TV_SHOW"

    const-string v2, "TV Show"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 18
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    const-string v1, "BOOKLET"

    const/4 v2, 0x7

    const-string v3, "Booklet"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->MOVIE:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v5

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->NORMAL:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v6

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->AUDIO_BOOK:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->BOOKMARK:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->MUSIC_VIDEO:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v2, v0, v1

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->SHORT_FILM:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v8

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->TV_SHOW:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v1, v0, v9

    const/4 v1, 0x7

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->BOOKLET:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    aput-object v2, v0, v1

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    .line 31
    iput p4, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    return v0
.end method

.method public final getIdAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4ContentTypeValue;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
