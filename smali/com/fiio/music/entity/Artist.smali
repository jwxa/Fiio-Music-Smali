.class public Lcom/fiio/music/entity/Artist;
.super Ljava/lang/Object;
.source "Artist.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private nameAscii:I

.field private picPath:Ljava/lang/String;

.field private sortLetters:Ljava/lang/String;

.field private xxxCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/fiio/music/entity/Artist;->id:I

    .line 25
    iput-object p2, p0, Lcom/fiio/music/entity/Artist;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/fiio/music/entity/Artist;->picPath:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fiio/music/entity/Artist;->xxxCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fiio/music/entity/Artist;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fiio/music/entity/Artist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAscii()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fiio/music/entity/Artist;->nameAscii:I

    return v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/entity/Artist;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fiio/music/entity/Artist;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/fiio/music/entity/Artist;->xxxCount:I

    .line 62
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/fiio/music/entity/Artist;->id:I

    .line 42
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fiio/music/entity/Artist;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setNameAscii(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/fiio/music/entity/Artist;->nameAscii:I

    .line 31
    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fiio/music/entity/Artist;->picPath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fiio/music/entity/Artist;->sortLetters:Ljava/lang/String;

    .line 69
    return-void
.end method
