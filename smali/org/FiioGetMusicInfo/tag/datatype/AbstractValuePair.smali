.class public abstract Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;
.super Ljava/lang/Object;
.source "AbstractValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final idToValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TI;TV;>;"
        }
    .end annotation
.end field

.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TI;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/String;

.field protected final valueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected final valueToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TV;TI;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->iterator:Ljava/util/Iterator;

    .line 29
    return-void
.end method


# virtual methods
.method public getAlphabeticalValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    return-object v0
.end method

.method public getIdToValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TI;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->idToValue:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->valueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueToIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TV;TI;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;->valueToId:Ljava/util/Map;

    return-object v0
.end method
