.class public Lorg/fourthline/cling/support/model/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field protected containerUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected count:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

.field protected result:Ljava/lang/String;

.field protected totalMatches:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 43
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/support/model/SearchResult;-><init>(Ljava/lang/String;JJJ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 4

    .prologue
    .line 47
    .line 49
    new-instance v0, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v0, p2, p3}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 50
    new-instance v1, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v1, p4, p5}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    .line 51
    new-instance v2, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v2, p6, p7}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/fourthline/cling/support/model/SearchResult;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/fourthline/cling/support/model/SearchResult;->result:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/fourthline/cling/support/model/SearchResult;->count:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 38
    iput-object p3, p0, Lorg/fourthline/cling/support/model/SearchResult;->totalMatches:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 39
    iput-object p4, p0, Lorg/fourthline/cling/support/model/SearchResult;->containerUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    .line 40
    return-void
.end method


# virtual methods
.method public getContainerUpdateID()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->containerUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getContainerUpdateIDLong()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->containerUpdateID:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->count:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getCountLong()J
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->count:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMatches()Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->totalMatches:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getTotalMatchesLong()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/fourthline/cling/support/model/SearchResult;->totalMatches:Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
