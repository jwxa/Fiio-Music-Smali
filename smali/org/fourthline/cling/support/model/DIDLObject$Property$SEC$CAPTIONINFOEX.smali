.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$CAPTIONINFOEX;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$SEC$CAPTIONINFOEX;-><init>(Ljava/net/URI;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 214
    const-string v0, "CaptionInfoEx"

    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "CaptionInfoEx"

    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 219
    return-void
.end method
