.class public Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;
.source "AbstractStringStringValuePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected lkey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractValuePair;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected createMaps()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->iterator:Ljava/util/Iterator;

    .line 53
    :goto_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->iterator:Ljava/util/Iterator;

    .line 62
    :goto_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->valueList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 68
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->idToValue:Ljava/util/Map;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->value:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->valueToId:Ljava/util/Map;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->value:Ljava/lang/String;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->lkey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->valueList:Ljava/util/List;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->idToValue:Ljava/util/Map;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getIdForValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->valueToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueForId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractStringStringValuePair;->idToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
