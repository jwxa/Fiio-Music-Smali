.class public Lcom/fiio/music/entity/ThreadInfo;
.super Ljava/lang/Object;
.source "ThreadInfo.java"


# instance fields
.field private completeSize:I

.field private downLoadInfoId:I

.field private endPosition:I

.field private id:I

.field private startPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getCompleteSize()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/fiio/music/entity/ThreadInfo;->completeSize:I

    return v0
.end method

.method public getDownLoadInfoId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/fiio/music/entity/ThreadInfo;->downLoadInfoId:I

    return v0
.end method

.method public getEndPosition()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fiio/music/entity/ThreadInfo;->endPosition:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fiio/music/entity/ThreadInfo;->id:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fiio/music/entity/ThreadInfo;->startPosition:I

    return v0
.end method

.method public setCompleteSize(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/fiio/music/entity/ThreadInfo;->completeSize:I

    .line 56
    return-void
.end method

.method public setDownLoadInfoId(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/fiio/music/entity/ThreadInfo;->downLoadInfoId:I

    .line 32
    return-void
.end method

.method public setEndPosition(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/fiio/music/entity/ThreadInfo;->endPosition:I

    .line 48
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/fiio/music/entity/ThreadInfo;->id:I

    .line 24
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/fiio/music/entity/ThreadInfo;->startPosition:I

    .line 40
    return-void
.end method
