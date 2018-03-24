.class public Lorg/FiioGetMusicInfo/tag/reference/ISOScript;
.super Ljava/lang/Object;
.source "ISOScript.java"


# static fields
.field private static codeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;",
            ">;"
        }
    .end annotation
.end field

.field private static descriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/reference/ISOScript;->codeMap:Ljava/util/Map;

    .line 23
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;->values()[Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/FiioGetMusicInfo/tag/reference/ISOScript;->descriptionMap:Ljava/util/Map;

    .line 29
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;->values()[Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_1

    .line 34
    return-void

    .line 23
    :cond_0
    aget-object v4, v2, v1

    .line 25
    sget-object v5, Lorg/FiioGetMusicInfo/tag/reference/ISOScript;->codeMap:Ljava/util/Map;

    invoke-static {v4}, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;->access$2(Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    aget-object v3, v1, v0

    .line 31
    sget-object v4, Lorg/FiioGetMusicInfo/tag/reference/ISOScript;->descriptionMap:Ljava/util/Map;

    invoke-static {v3}, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;->access$3(Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptionsAsArray()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;->values()[Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 218
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 214
    :cond_0
    aget-object v5, v3, v0

    .line 216
    invoke-static {v5}, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;->access$3(Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getScriptByCode(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/FiioGetMusicInfo/tag/reference/ISOScript;->codeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;

    return-object v0
.end method

.method public static getScriptByDescription(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/FiioGetMusicInfo/tag/reference/ISOScript;->descriptionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/reference/ISOScript$Script;

    return-object v0
.end method
