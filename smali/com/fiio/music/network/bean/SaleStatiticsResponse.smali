.class public Lcom/fiio/music/network/bean/SaleStatiticsResponse;
.super Ljava/lang/Object;
.source "SaleStatiticsResponse.java"


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/fiio/music/network/bean/SaleStatiticsResponse;->code:I

    .line 17
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/fiio/music/network/bean/SaleStatiticsResponse;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/fiio/music/network/bean/SaleStatiticsResponse;->code:I

    .line 25
    return-void
.end method
