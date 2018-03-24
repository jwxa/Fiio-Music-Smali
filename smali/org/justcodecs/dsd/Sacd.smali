.class public Lorg/justcodecs/dsd/Sacd;
.super Ljava/lang/Object;
.source "Sacd.java"


# instance fields
.field DST:Z

.field album:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field channels:I

.field duration:I

.field sampleRate:I

.field songName:Ljava/lang/String;

.field start:I

.field style:Ljava/lang/String;

.field track:I

.field year:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/justcodecs/dsd/Sacd;->DST:Z

    .line 16
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->track:I

    .line 17
    iput-object p2, p0, Lorg/justcodecs/dsd/Sacd;->songName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lorg/justcodecs/dsd/Sacd;->artist:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lorg/justcodecs/dsd/Sacd;->album:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lorg/justcodecs/dsd/Sacd;->style:Ljava/lang/String;

    .line 21
    iput p6, p0, Lorg/justcodecs/dsd/Sacd;->start:I

    .line 22
    iput p7, p0, Lorg/justcodecs/dsd/Sacd;->duration:I

    .line 23
    iput p9, p0, Lorg/justcodecs/dsd/Sacd;->sampleRate:I

    .line 24
    iput p8, p0, Lorg/justcodecs/dsd/Sacd;->year:I

    .line 25
    iput p10, p0, Lorg/justcodecs/dsd/Sacd;->channels:I

    .line 26
    iput-boolean p11, p0, Lorg/justcodecs/dsd/Sacd;->DST:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/justcodecs/dsd/Sacd;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/justcodecs/dsd/Sacd;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/justcodecs/dsd/Sacd;->channels:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/justcodecs/dsd/Sacd;->duration:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/justcodecs/dsd/Sacd;->sampleRate:I

    return v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/justcodecs/dsd/Sacd;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/justcodecs/dsd/Sacd;->start:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/justcodecs/dsd/Sacd;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/justcodecs/dsd/Sacd;->track:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/justcodecs/dsd/Sacd;->year:I

    return v0
.end method

.method public isDST()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/justcodecs/dsd/Sacd;->DST:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/justcodecs/dsd/Sacd;->album:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lorg/justcodecs/dsd/Sacd;->artist:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setChannels(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->channels:I

    .line 90
    return-void
.end method

.method public setDST(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/justcodecs/dsd/Sacd;->DST:Z

    .line 98
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->duration:I

    .line 58
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->sampleRate:I

    .line 66
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lorg/justcodecs/dsd/Sacd;->songName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->start:I

    .line 52
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/justcodecs/dsd/Sacd;->style:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTrack(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->track:I

    .line 34
    return-void
.end method

.method public setYear(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lorg/justcodecs/dsd/Sacd;->year:I

    .line 74
    return-void
.end method
