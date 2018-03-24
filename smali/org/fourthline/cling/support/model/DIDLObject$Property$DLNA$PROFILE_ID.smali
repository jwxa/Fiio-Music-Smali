.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/fourthline/cling/support/model/DIDLAttribute;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V

    .line 568
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V
    .locals 1

    .prologue
    .line 571
    const-string v0, "profileID"

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    return-void
.end method
