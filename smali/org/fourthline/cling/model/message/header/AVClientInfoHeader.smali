.class public Lorg/fourthline/cling/model/message/header/AVClientInfoHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "AVClientInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/AVClientInfoHeader;->setValue(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/AVClientInfoHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/AVClientInfoHeader;->setValue(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
