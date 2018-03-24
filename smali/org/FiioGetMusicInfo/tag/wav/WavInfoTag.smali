.class public Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;
.super Lorg/FiioGetMusicInfo/audio/generic/GenericTag;
.source "WavInfoTag.java"


# instance fields
.field private endLocationInFile:Ljava/lang/Long;

.field private startLocationInFile:Ljava/lang/Long;

.field private unrecognisedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagTextField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    .line 42
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    .line 45
    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    .line 37
    return-void
.end method


# virtual methods
.method public addUnRecognizedField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    new-instance v1, Lorg/FiioGetMusicInfo/audio/generic/GenericTag$GenericTagTextField;

    invoke-direct {v1, p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag$GenericTagTextField;-><init>(Lorg/FiioGetMusicInfo/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public getEndLocationInFile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getSizeOfTag()J
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const-wide/16 v0, 0x0

    .line 103
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStartLocationInFile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    return-object v0
.end method

.method public getUnrecognisedFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagTextField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    return-object v0
.end method

.method public setEndLocationInFile(J)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->endLocationInFile:Ljava/lang/Long;

    .line 95
    return-void
.end method

.method public setStartLocationInFile(J)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->startLocationInFile:Ljava/lang/Long;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Wav "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    const-string v0, "\nUnrecognized Tags:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;->unrecognisedFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagTextField;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
