.class public Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;
.super Ljava/lang/Object;
.source "SearchLrcResult.java"


# instance fields
.field private code:Ljava/lang/String;

.field private klyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;

.field private lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

.field private qfy:Z

.field private sfy:Z

.field private sgc:Z

.field private tlyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(ZZZLcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sgc:Z

    .line 19
    iput-boolean p2, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sfy:Z

    .line 20
    iput-boolean p3, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->qfy:Z

    .line 21
    iput-object p4, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    .line 22
    iput-object p5, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->klyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;

    .line 23
    iput-object p6, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->tlyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;

    .line 24
    iput-object p7, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->code:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getKlyric()Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->klyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;

    return-object v0
.end method

.method public getLrc()Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    return-object v0
.end method

.method public getTlyric()Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->tlyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;

    return-object v0
.end method

.method public isQfy()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->qfy:Z

    return v0
.end method

.method public isSfy()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sfy:Z

    return v0
.end method

.method public isSgc()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sgc:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->code:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setKlyric(Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->klyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;

    .line 65
    return-void
.end method

.method public setLrc(Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    .line 57
    return-void
.end method

.method public setQfy(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->qfy:Z

    .line 49
    return-void
.end method

.method public setSfy(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sfy:Z

    .line 41
    return-void
.end method

.method public setSgc(Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sgc:Z

    .line 33
    return-void
.end method

.method public setTlyric(Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->tlyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sgc = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sgc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsfy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->sfy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nqfy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->qfy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v1, "\nlrc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->lrc:Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nklyric ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->klyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/KLyric;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntlyric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->tlyric:Lcom/fiio/music/network/bean/cloudmusic/lrc/TLyric;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
