.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$TYPE;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/fourthline/cling/support/model/DIDLAttribute;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$TYPE;-><init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V
    .locals 1

    .prologue
    .line 242
    const-string v0, "type"

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    return-void
.end method
