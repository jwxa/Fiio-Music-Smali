.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;
.source "AbstractTagFrameBody.java"


# instance fields
.field private header:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

.field protected objectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setupObjectList()V

    .line 103
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 119
    return-void

    .line 115
    :cond_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 116
    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 117
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public createStructure()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 286
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_0

    move v0, v1

    .line 292
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 290
    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 291
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 292
    goto :goto_0
.end method

.method public getBriefDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    const-string v0, ""

    .line 141
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    return-object v1

    .line 141
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public getHeader()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->header:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    return-object v0
.end method

.method public final getLongDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    const-string v0, ""

    .line 162
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    return-object v1

    .line 162
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 217
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 219
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 220
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public final getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    .line 238
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    return v1

    .line 240
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 241
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public final getTextEncoding()B
    .locals 1

    .prologue
    .line 71
    const-string v0, "TextEncoding"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->byteValue()B

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserFriendlyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 257
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_0

    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 261
    :cond_0
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iget-object v2, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    .line 262
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 264
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 266
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->header:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    .line 341
    return-void
.end method

.method public final setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 182
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    return-void

    .line 184
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    .line 185
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final setTextEncoding(B)V
    .locals 2

    .prologue
    .line 92
    const-string v0, "TextEncoding"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method protected abstract setupObjectList()V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->getBriefDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
