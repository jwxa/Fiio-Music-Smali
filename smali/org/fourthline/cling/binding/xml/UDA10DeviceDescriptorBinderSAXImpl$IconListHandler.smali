.class public Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;
.super Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;
.source "UDA10DeviceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/fourthline/cling/binding/staging/MutableIcon;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    sput-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/binding/staging/MutableIcon;",
            ">;",
            "Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 257
    return-void
.end method


# virtual methods
.method public isLastElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;)Z
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startElement(Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 2

    .prologue
    .line 261
    sget-object v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconHandler;->EL:Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Lorg/fourthline/cling/binding/staging/MutableIcon;

    invoke-direct {v1}, Lorg/fourthline/cling/binding/staging/MutableIcon;-><init>()V

    .line 263
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconHandler;

    invoke-direct {v0, v1, p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconHandler;-><init>(Lorg/fourthline/cling/binding/staging/MutableIcon;Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 266
    :cond_0
    return-void
.end method
