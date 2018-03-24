.class public Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;
.super Ljava/lang/Object;
.source "PairedTextEncodedStringNullTerminated.java"


# instance fields
.field private mapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    .line 211
    return-void
.end method

.method static synthetic access$0(Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;)Ljava/util/List;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    invoke-direct {v1, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 267
    if-ne p1, p0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    .line 272
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    if-nez v0, :cond_1

    .line 274
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    .line 279
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getNumberOfValues()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getNumberOfValues()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public getMapping()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/Pair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    return-object v0
.end method

.method public getNumberOfPairs()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfValues()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->mapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Pair;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Pair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
