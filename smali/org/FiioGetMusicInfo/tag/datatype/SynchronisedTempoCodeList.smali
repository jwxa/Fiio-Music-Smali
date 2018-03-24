.class public Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCodeList;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;
.source "SynchronisedTempoCodeList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList",
        "<",
        "Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCodeList;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYTC;)V
    .locals 1

    .prologue
    .line 40
    const-string v0, "SynchronisedTempoList"

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataTypeList;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic createListElement()Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCodeList;->createListElement()Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    move-result-object v0

    return-object v0
.end method

.method protected createListElement()Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;

    const-string v1, "SynchronisedTempo"

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCodeList;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/SynchronisedTempoCode;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    return-object v0
.end method
