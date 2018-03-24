.class public final enum Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;
.super Ljava/lang/Enum;
.source "Mp4NonStandardFieldKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AAPR:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ADCP:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum ALFN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum AMIM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

.field public static final enum APTY:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

.field private static final synthetic ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;


# instance fields
.field private description:Ljava/lang/String;

.field private fieldName:Ljava/lang/String;

.field private tagger:Lorg/FiioGetMusicInfo/tag/reference/Tagger;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    const-string v1, "AAPR"

    const-string v3, "AApr"

    const-string v4, "MM3 Album Art Attributes"

    sget-object v5, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    invoke-direct/range {v0 .. v5}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/reference/Tagger;)V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    .line 13
    new-instance v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    const-string v4, "ALFN"

    const-string v6, "Alfn"

    const-string v7, "MM3 Album Art Unknown"

    sget-object v8, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/reference/Tagger;)V

    sput-object v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    .line 14
    new-instance v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    const-string v4, "AMIM"

    const-string v6, "AMIM"

    const-string v7, "MM3 Album Art MimeType"

    sget-object v8, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/reference/Tagger;)V

    sput-object v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    .line 15
    new-instance v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    const-string v4, "ADCP"

    const-string v6, "Adcp"

    const-string v7, "MM3 Album Art Description"

    sget-object v8, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/reference/Tagger;)V

    sput-object v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    .line 16
    new-instance v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    const-string v4, "APTY"

    const-string v6, "Apty"

    const-string v7, "MM3 Album Art ID3 Picture Type"

    sget-object v8, Lorg/FiioGetMusicInfo/tag/reference/Tagger;->MEDIA_MONKEY:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/reference/Tagger;)V

    sput-object v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    aput-object v1, v0, v2

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->ALFN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    aput-object v1, v0, v9

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->AMIM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    aput-object v1, v0, v10

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->ADCP:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    aput-object v1, v0, v11

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->APTY:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    aput-object v1, v0, v12

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/reference/Tagger;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    return-object v0
.end method

.method public static values()[Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->ENUM$VALUES:[Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    array-length v1, v0

    new-array v2, v1, [Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final geTagger()Lorg/FiioGetMusicInfo/tag/reference/Tagger;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->tagger:Lorg/FiioGetMusicInfo/tag/reference/Tagger;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method
