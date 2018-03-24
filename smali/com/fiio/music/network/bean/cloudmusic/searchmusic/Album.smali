.class public Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field private artist:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->artist:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

    .line 18
    iput-object p4, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->picUrl:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getArtist()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->artist:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->artist:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

    .line 43
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->picUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nartist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->artist:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Artist;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npicUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
