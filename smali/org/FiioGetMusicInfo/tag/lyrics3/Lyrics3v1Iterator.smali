.class public Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;
.super Ljava/lang/Object;
.source "Lyrics3v1Iterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private lastIndex:I

.field private removeIndex:I

.field private tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;


# direct methods
.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    .line 38
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 43
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    .line 52
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    .line 53
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 71
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    .line 75
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    if-ltz v0, :cond_1

    .line 77
    if-ltz v1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    iput v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    .line 93
    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration has no more elements."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->removeIndex:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->lastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1Iterator;->tag:Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->setLyric(Ljava/lang/String;)V

    .line 103
    return-void
.end method
