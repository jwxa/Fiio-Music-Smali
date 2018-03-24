.class public Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;
.super Ljava/lang/Object;
.source "Song.java"


# instance fields
.field private album:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

.field private artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;",
            ">;"
        }
    .end annotation
.end field

.field private audio:Ljava/lang/String;

.field private djProgramId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;",
            ">;",
            "Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->id:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->name:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->artists:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->album:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    .line 25
    iput-object p5, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->audio:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->djProgramId:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->page:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->album:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    return-object v0
.end method

.method public getArtists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getAudio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->audio:Ljava/lang/String;

    return-object v0
.end method

.method public getDjProgramId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->djProgramId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->page:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->album:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    .line 60
    return-void
.end method

.method public setArtists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->artists:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setAudio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->audio:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setDjProgramId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->djProgramId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->page:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nartists = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->artists:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nalbum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->album:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\naudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->audio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndjProgramId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->djProgramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
