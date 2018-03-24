.class public Lcom/fiio/music/network/bean/AlbumCover;
.super Ljava/lang/Object;
.source "AlbumCover.java"


# instance fields
.field private code:I

.field private count:I

.field private result:Lcom/fiio/music/network/bean/AlbumCover$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(IILcom/fiio/music/network/bean/AlbumCover$Result;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/fiio/music/network/bean/AlbumCover;->count:I

    .line 22
    iput p2, p0, Lcom/fiio/music/network/bean/AlbumCover;->code:I

    .line 23
    iput-object p3, p0, Lcom/fiio/music/network/bean/AlbumCover;->result:Lcom/fiio/music/network/bean/AlbumCover$Result;

    .line 24
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/fiio/music/network/bean/AlbumCover;->code:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/fiio/music/network/bean/AlbumCover;->count:I

    return v0
.end method

.method public getResult()Lcom/fiio/music/network/bean/AlbumCover$Result;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fiio/music/network/bean/AlbumCover;->result:Lcom/fiio/music/network/bean/AlbumCover$Result;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/fiio/music/network/bean/AlbumCover;->code:I

    .line 58
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/fiio/music/network/bean/AlbumCover;->count:I

    .line 46
    return-void
.end method

.method public setResult(Lcom/fiio/music/network/bean/AlbumCover$Result;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fiio/music/network/bean/AlbumCover;->result:Lcom/fiio/music/network/bean/AlbumCover$Result;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fiio/music/network/bean/AlbumCover;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    iget v1, p0, Lcom/fiio/music/network/bean/AlbumCover;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreuslt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/fiio/music/network/bean/AlbumCover;->result:Lcom/fiio/music/network/bean/AlbumCover$Result;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/AlbumCover$Result;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
