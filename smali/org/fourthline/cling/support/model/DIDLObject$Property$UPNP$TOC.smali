.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$TOC;
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
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>()V

    .line 347
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    return-void
.end method
