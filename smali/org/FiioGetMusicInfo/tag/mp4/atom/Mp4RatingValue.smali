.class public final enum Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;
.super Ljava/lang/Enum;
.source "Mp4RatingValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLEAN:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

.field public static final enum EXPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    const-string v1, "CLEAN"

    const-string v2, "Clean"

    invoke-direct {v0, v1, v4, v2, v6}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    .line 13
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    const-string v1, "EXPLICIT"

    const-string v2, "Explicit"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    .line 10
    new-array v0, v6, [Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    aput-object v1, v0, v4

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    aput-object v1, v0, v5

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    .line 26
    iput p4, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->id:I

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4RatingValue;->id:I

    return v0
.end method
