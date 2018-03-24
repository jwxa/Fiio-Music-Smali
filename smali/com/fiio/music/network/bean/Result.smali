.class public Lcom/fiio/music/network/bean/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private aid:I

.field private artist_id:I

.field private lrc:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private song:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/fiio/music/network/bean/Result;->aid:I

    .line 13
    iput p2, p0, Lcom/fiio/music/network/bean/Result;->artist_id:I

    .line 14
    iput-object p3, p0, Lcom/fiio/music/network/bean/Result;->song:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/fiio/music/network/bean/Result;->lrc:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/fiio/music/network/bean/Result;->sid:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getAid()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fiio/music/network/bean/Result;->aid:I

    return v0
.end method

.method public getArtist_id()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fiio/music/network/bean/Result;->artist_id:I

    return v0
.end method

.method public getLrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fiio/music/network/bean/Result;->lrc:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fiio/music/network/bean/Result;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fiio/music/network/bean/Result;->song:Ljava/lang/String;

    return-object v0
.end method

.method public setAid(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/fiio/music/network/bean/Result;->aid:I

    .line 23
    return-void
.end method

.method public setArtist_id(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/fiio/music/network/bean/Result;->artist_id:I

    .line 29
    return-void
.end method

.method public setLrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fiio/music/network/bean/Result;->lrc:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fiio/music/network/bean/Result;->sid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fiio/music/network/bean/Result;->song:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fiio/music/network/bean/Result;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nartist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/fiio/music/network/bean/Result;->artist_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsong = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/fiio/music/network/bean/Result;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlrc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/fiio/music/network/bean/Result;->lrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/fiio/music/network/bean/Result;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
