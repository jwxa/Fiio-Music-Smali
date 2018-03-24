.class public abstract Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/Tag;


# instance fields
.field protected commonNumber:I

.field protected fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->commonNumber:I

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 303
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 304
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 3

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->isCommon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->commonNumber:I

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 454
    return-void
.end method

.method public abstract createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public deleteArtworkField()V
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    .line 465
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    return-void
.end method

.method public abstract deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-object v1

    .line 108
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 110
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFieldCount()I
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    return v0

    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    new-instance v1, Lorg/FiioGetMusicInfo/audio/generic/a;

    invoke-direct {v1, p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/a;-><init>(Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :cond_0
    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 429
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/images/Artwork;

    .line 431
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
.end method

.method public getItem(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hasCommonFields()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->commonNumber:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract isAllowedEncoding(Ljava/nio/charset/Charset;)Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->isAllowedEncoding(Ljava/nio/charset/Charset;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .line 354
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 357
    instance-of v2, v0, Lorg/FiioGetMusicInfo/tag/TagTextField;

    if-eqz v2, :cond_1

    .line 359
    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagTextField;

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/TagTextField;->setEncoding(Ljava/nio/charset/Charset;)V

    goto :goto_1
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 288
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 289
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 3

    .prologue
    .line 317
    if-nez p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 325
    if-eqz v0, :cond_2

    .line 327
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->isCommon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->commonNumber:I

    goto :goto_0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 443
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    const-string v0, "Tag content:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 379
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
