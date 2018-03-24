.class public final enum Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;
.super Ljava/lang/Enum;
.source "Id3FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BINARY:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

.field public static final enum TEXT:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

.field public static final enum USER_DEFINED_TEXT:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    .line 9
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    const-string v1, "USER_DEFINED_TEXT"

    invoke-direct {v0, v1, v3}, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->USER_DEFINED_TEXT:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    .line 10
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v4}, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->BINARY:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->USER_DEFINED_TEXT:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->BINARY:Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/id3/Id3FieldType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
