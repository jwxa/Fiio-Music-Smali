.class public final enum Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
.super Ljava/lang/Enum;
.source "Mp4FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COVERART_BMP:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_GIF:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_JPEG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum COVERART_PNG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum DATETIME:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum DURATION:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum GENRES:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum GUID:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum HTML:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum IMPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum INTEGER:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum ISRC:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum MI3P:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum RIAAPA:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_JAPANESE:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum TEXT_UTF16BE:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum UPC:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum URL:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field public static final enum XML:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

.field private static coverArtTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final fileClassIdFiedTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileClassId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 11
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "IMPLICIT"

    invoke-direct {v1, v2, v0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 12
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "TEXT"

    invoke-direct {v1, v2, v5, v5}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 13
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "TEXT_UTF16BE"

    invoke-direct {v1, v2, v6, v6}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 14
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "TEXT_JAPANESE"

    invoke-direct {v1, v2, v7, v7}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 15
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "HTML"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v8}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->HTML:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 16
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "XML"

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->XML:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 17
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "GUID"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v8, v3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->GUID:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 18
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "ISRC"

    const/4 v3, 0x7

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->ISRC:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 19
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "MI3P"

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->MI3P:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 20
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "COVERART_GIF"

    const/16 v3, 0x9

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 21
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "COVERART_JPEG"

    const/16 v3, 0xa

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 22
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "COVERART_PNG"

    const/16 v3, 0xb

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 23
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "URL"

    const/16 v3, 0xc

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->URL:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 24
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "DURATION"

    const/16 v3, 0xd

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->DURATION:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 25
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "DATETIME"

    const/16 v3, 0xe

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->DATETIME:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 26
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "GENRES"

    const/16 v3, 0xf

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->GENRES:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 27
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "INTEGER"

    const/16 v3, 0x10

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 28
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "RIAAPA"

    const/16 v3, 0x11

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->RIAAPA:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 29
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "UPC"

    const/16 v3, 0x12

    const/16 v4, 0x19

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->UPC:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 30
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const-string v2, "COVERART_BMP"

    const/16 v3, 0x13

    const/16 v4, 0x1b

    invoke-direct {v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v2, v1, v0

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT_UTF16BE:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT_JAPANESE:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->HTML:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->XML:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->GUID:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v2, v1, v8

    const/4 v2, 0x7

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->ISRC:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->MI3P:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->URL:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->DURATION:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->DATETIME:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->GENRES:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->RIAAPA:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->UPC:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    aput-object v3, v1, v2

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->values()[Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->values()[Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 70
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_GIF:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_JPEG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_PNG:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->COVERART_BMP:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    .line 71
    return-void

    .line 51
    :cond_0
    aget-object v3, v1, v0

    .line 53
    sget-object v4, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    iget v5, v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->fileClassId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->fileClassId:I

    .line 39
    return-void
.end method

.method public static getFieldType(I)Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->fileClassIdFiedTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method

.method public static isCoverArtType(Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;)Z
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->coverArtTypes:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getFileClassId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->fileClassId:I

    return v0
.end method
