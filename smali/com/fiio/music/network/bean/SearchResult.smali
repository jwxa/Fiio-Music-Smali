.class public Lcom/fiio/music/network/bean/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field private code:I

.field private count:I

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/fiio/music/network/bean/SearchResult;->count:I

    .line 16
    iput p2, p0, Lcom/fiio/music/network/bean/SearchResult;->code:I

    .line 17
    iput-object p3, p0, Lcom/fiio/music/network/bean/SearchResult;->result:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fiio/music/network/bean/SearchResult;->code:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fiio/music/network/bean/SearchResult;->count:I

    return v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fiio/music/network/bean/SearchResult;->result:Ljava/util/List;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/fiio/music/network/bean/SearchResult;->code:I

    .line 30
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/fiio/music/network/bean/SearchResult;->count:I

    .line 24
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/network/bean/Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fiio/music/network/bean/SearchResult;->result:Ljava/util/List;

    .line 36
    return-void
.end method
