.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$RADIO_BAND;-><init>(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 483
    const-string v0, "radioBand"

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    return-void
.end method
