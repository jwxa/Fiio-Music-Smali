.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property",
        "<",
        "Lorg/fourthline/cling/support/model/PersonWithRole;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>()V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PersonWithRole;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public setOnElement(Lorg/w3c/dom/Element;)V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/support/model/PersonWithRole;->setOnElement(Lorg/w3c/dom/Element;)V

    .line 129
    :cond_0
    return-void
.end method
