.class public Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;
.source "AbstractIntStringValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected key:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->key:Ljava/lang/Integer;

    .line 30
    return-void
.end method


# virtual methods
.method protected createMaps()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->valueList:Ljava/util/List;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->valueList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    return-void

    .line 57
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->valueToId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->valueToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValueForId(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;->idToValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
