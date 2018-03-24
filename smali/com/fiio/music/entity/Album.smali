.class public Lcom/fiio/music/entity/Album;
.super Ljava/lang/Object;
.source "Album.java"

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
    iput p1, p0, Lcom/fiio/music/entity/Album;->id:I

    .line 25
    iput-object p2, p0, Lcom/fiio/music/entity/Album;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/fiio/music/entity/Album;->picPath:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fiio/music/entity/Album;->xxxCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fiio/music/entity/Album;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiio/music/entity/Album;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAscii()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fiio/music/entity/Album;->nameAscii:I

    return v0
.end method

.method public getPicPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fiio/music/entity/Album;->picPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fiio/music/entity/Album;->sortLetters:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/fiio/music/entity/Album;->xxxCount:I

    .line 63
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/fiio/music/entity/Album;->id:I

    .line 35
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fiio/music/entity/Album;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNameAscii(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/fiio/music/entity/Album;->nameAscii:I

    .line 47
    return-void
.end method

.method public setPicPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fiio/music/entity/Album;->picPath:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSortLetters(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/fiio/music/entity/Album;->sortLetters:Ljava/lang/String;

    .line 70
    return-void
.end method
