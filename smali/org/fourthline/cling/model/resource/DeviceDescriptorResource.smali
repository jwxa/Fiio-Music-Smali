.class public Lorg/fourthline/cling/model/resource/DeviceDescriptorResource;
.super Lorg/fourthline/cling/model/resource/Resource;
.source "DeviceDescriptorResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/resource/Resource",
        "<",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/model/resource/Resource;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 29
    return-void
.end method
