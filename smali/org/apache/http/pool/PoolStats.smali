.class public Lorg/apache/http/pool/PoolStats;
.super Ljava/lang/Object;
.source "PoolStats.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final available:I

.field private final leased:I

.field private final max:I

.field private final pending:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    .line 48
    iput p2, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    .line 49
    iput p3, p0, Lorg/apache/http/pool/PoolStats;->available:I

    .line 50
    iput p4, p0, Lorg/apache/http/pool/PoolStats;->max:I

    .line 51
    return-void
.end method


# virtual methods
.method public getAvailable()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->available:I

    return v0
.end method

.method public getLeased()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->max:I

    return v0
.end method

.method public getPending()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v1, "[leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->leased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "; pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->pending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "; available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->available:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "; max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lorg/apache/http/pool/PoolStats;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
