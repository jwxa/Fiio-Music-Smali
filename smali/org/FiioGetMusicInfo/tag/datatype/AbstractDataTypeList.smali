.class public abstract Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "AbstractDataTypeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;",
        ">",
        "Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->setValue(Ljava/util/List;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected abstract createListElement()Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 71
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 72
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByteArray([BI)V
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Byte array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-gez p2, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to byte array is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    array-length v0, p1

    if-lt p2, v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->createListElement()Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->readByteArray([BI)V

    .line 106
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 107
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr p2, v0

    .line 103
    :cond_3
    array-length v0, p1

    if-lt p2, v0, :cond_2

    goto :goto_0
.end method

.method public setValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    .line 61
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "{}"

    goto :goto_0
.end method

.method public writeByteArray()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 127
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Writing DataTypeList "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getSize()I

    move-result v0

    new-array v3, v0, [B

    .line 130
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    return-object v3

    .line 130
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 131
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->writeByteArray()[B

    move-result-object v0

    .line 132
    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
