.class public Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "InterfaceMacHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;->setString(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;->setValue(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, ":"

    invoke-static {v0, v1}, Lorg/seamless/util/io/HexBin;->bytesToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    const-string v0, ":"

    invoke-static {p1, v0}, Lorg/seamless/util/io/HexBin;->stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;->setValue(Ljava/lang/Object;)V

    .line 41
    array-length v0, v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid MAC address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/InterfaceMacHeader;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
