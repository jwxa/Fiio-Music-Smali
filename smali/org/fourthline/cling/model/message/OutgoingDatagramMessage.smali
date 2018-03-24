.class public abstract Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;
.super Lorg/fourthline/cling/model/message/UpnpMessage;
.source "OutgoingDatagramMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/fourthline/cling/model/message/UpnpOperation;",
        ">",
        "Lorg/fourthline/cling/model/message/UpnpMessage",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private destinationAddress:Ljava/net/InetAddress;

.field private destinationPort:I


# direct methods
.method protected constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;)V

    .line 32
    iput-object p2, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    .line 33
    iput p3, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    .line 34
    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;",
            "Ljava/lang/Object;",
            "Ljava/net/InetAddress;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/fourthline/cling/model/message/UpnpMessage;-><init>(Lorg/fourthline/cling/model/message/UpnpOperation;Lorg/fourthline/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 38
    iput-object p4, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    .line 39
    iput p5, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    .line 40
    return-void
.end method


# virtual methods
.method public getDestinationAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationPort()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/fourthline/cling/model/message/OutgoingDatagramMessage;->destinationPort:I

    return v0
.end method
