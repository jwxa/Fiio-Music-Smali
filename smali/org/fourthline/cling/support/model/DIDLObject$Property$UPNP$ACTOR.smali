.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;-><init>()V

    .line 266
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;Ljava/lang/String;)V

    .line 270
    return-void
.end method
