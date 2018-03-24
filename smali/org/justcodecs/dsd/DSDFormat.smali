.class public abstract Lorg/justcodecs/dsd/DSDFormat;
.super Ljava/lang/Object;
.source "DSDFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected attrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field bufEnd:I

.field bufPos:I

.field protected dsdStream:Lorg/justcodecs/dsd/DSDStream;

.field protected metadataCharset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lorg/justcodecs/dsd/DSDFormat;->bufPos:I

    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-interface {v0}, Lorg/justcodecs/dsd/DSDStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMetadataCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->metadataCharset:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getNoTrackInfo_trackCount()I
.end method

.method public abstract getNoTrackInfo_trackDuration()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNoTrackInfo_trackStart()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNumChannels()I
.end method

.method public abstract getSampleCount()J
.end method

.method public abstract getSampleRate()I
.end method

.method abstract getSamples()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public getTimeAdjustment()D
    .locals 2

    .prologue
    .line 56
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public init(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 1

    .prologue
    .line 27
    iput-object p1, p0, Lorg/justcodecs/dsd/DSDFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method abstract initBuffers(I)V
.end method

.method isDST()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method abstract isMSB()Z
.end method

.method public metaDataIsExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method abstract readDataBlock()Z
.end method

.method abstract seek(J)V
.end method

.method public setMetadataCharset(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lorg/justcodecs/dsd/DSDFormat;->metadataCharset:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public sleep()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DSDFormat [attrs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DSDFormat;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DSDFormat;->getNumChannels()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DSDFormat;->isDST()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tracks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDFormat;->attrs:Ljava/util/HashMap;

    const-string v1, "Tracks"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
