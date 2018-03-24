.class public Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;
.super Lorg/FiioGetMusicInfo/audio/generic/GenericTag;
.source "APETAGEXV2.java"


# static fields
.field public static final APETAGEX_3BYTE_NULL_VALUE:Ljava/lang/String; = "000000"

.field public static final APETAGEX_4BYTE_NULL_VALUE:Ljava/lang/String; = "00000000"

.field public static final APETAGEX_AGEX:Ljava/lang/String; = "41474558"

.field public static final APETAG_ALBUM:Ljava/lang/String; = "Album"

.field public static final APETAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final APETAG_COVER:Ljava/lang/String; = "Cover Art "

.field public static final APETAG_DISC:Ljava/lang/String; = "e7a29fe78987"

.field public static final APETAG_GENRE:Ljava/lang/String; = "Genre"

.field public static final APETAG_TITLE:Ljava/lang/String; = "Title"

.field public static final APETAG_TRACK:Ljava/lang/String; = "Track"

.field public static final APETAG_YEAR:Ljava/lang/String; = "Year"

.field public static final VERSION_2_HEX:Ljava/lang/String; = "d0070000"


# instance fields
.field private images:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->images:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->images:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->images:Ljava/lang/String;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/ape/APETAGEXV2;->images:Ljava/lang/String;

    .line 53
    return-void
.end method
