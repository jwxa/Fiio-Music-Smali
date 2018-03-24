.class public Lcom/fiio/music/network/bean/AddressResult;
.super Ljava/lang/Object;
.source "AddressResult.java"


# instance fields
.field private code:I

.field private data:Lcom/fiio/music/network/bean/AddressData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(ILcom/fiio/music/network/bean/AddressData;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/fiio/music/network/bean/AddressResult;->code:I

    .line 15
    iput-object p2, p0, Lcom/fiio/music/network/bean/AddressResult;->data:Lcom/fiio/music/network/bean/AddressData;

    .line 16
    return-void
.end method


# virtual methods
.method public getAddressData()Lcom/fiio/music/network/bean/AddressData;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fiio/music/network/bean/AddressResult;->data:Lcom/fiio/music/network/bean/AddressData;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/fiio/music/network/bean/AddressResult;->code:I

    return v0
.end method

.method public setAddressData(Lcom/fiio/music/network/bean/AddressData;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fiio/music/network/bean/AddressResult;->data:Lcom/fiio/music/network/bean/AddressData;

    .line 32
    return-void
.end method

.method public setCode(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/fiio/music/network/bean/AddressResult;->code:I

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fiio/music/network/bean/AddressResult;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndata : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/bean/AddressResult;->data:Lcom/fiio/music/network/bean/AddressData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
