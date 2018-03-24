.class public abstract Lorg/fourthline/cling/model/meta/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DI:",
        "Lorg/fourthline/cling/model/meta/DeviceIdentity;",
        "D:",
        "Lorg/fourthline/cling/model/meta/Device;",
        "S:",
        "Lorg/fourthline/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/fourthline/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final details:Lorg/fourthline/cling/model/meta/DeviceDetails;

.field protected final embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field

.field private final icons:[Lorg/fourthline/cling/model/meta/Icon;

.field private final identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDI;"
        }
    .end annotation
.end field

.field private parentDevice:Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected final services:[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field private final type:Lorg/fourthline/cling/model/types/DeviceType;

.field private final version:Lorg/fourthline/cling/model/meta/UDAVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/fourthline/cling/model/meta/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 77
    if-nez p2, :cond_0

    new-instance p2, Lorg/fourthline/cling/model/meta/UDAVersion;

    invoke-direct {p2}, Lorg/fourthline/cling/model/meta/UDAVersion;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/Device;->version:Lorg/fourthline/cling/model/meta/UDAVersion;

    .line 78
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/Device;->type:Lorg/fourthline/cling/model/types/DeviceType;

    .line 79
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/Device;->details:Lorg/fourthline/cling/model/meta/DeviceDetails;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    if-eqz p5, :cond_1

    .line 86
    array-length v2, p5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_9

    .line 98
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/Icon;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/Icon;

    iput-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->icons:[Lorg/fourthline/cling/model/meta/Icon;

    .line 100
    const/4 v0, 0x1

    .line 101
    if-eqz p6, :cond_2

    .line 102
    array-length v2, p6

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_c

    .line 109
    :cond_2
    if-eqz p6, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    const/4 p6, 0x0

    :cond_4
    iput-object p6, p0, Lorg/fourthline/cling/model/meta/Device;->services:[Lorg/fourthline/cling/model/meta/Service;

    .line 111
    const/4 v0, 0x1

    .line 112
    if-eqz p7, :cond_5

    .line 113
    array-length v2, p7

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_e

    .line 120
    :cond_5
    if-eqz p7, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    const/4 p7, 0x0

    :cond_7
    iput-object p7, p0, Lorg/fourthline/cling/model/meta/Device;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 124
    sget-object v0, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 129
    :cond_8
    new-instance v0, Lorg/fourthline/cling/model/ValidationException;

    const-string v2, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {v0, v2, v1}, Lorg/fourthline/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0

    .line 86
    :cond_9
    aget-object v3, p5, v0

    .line 87
    if-eqz v3, :cond_a

    .line 88
    invoke-virtual {v3, p0}, Lorg/fourthline/cling/model/meta/Icon;->setDevice(Lorg/fourthline/cling/model/meta/Device;)V

    .line 89
    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/Icon;->validate()Ljava/util/List;

    move-result-object v4

    .line 90
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 91
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_b
    sget-object v5, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Discarding invalid \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\': "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    .line 102
    :cond_c
    aget-object v3, p6, v1

    .line 103
    if-eqz v3, :cond_d

    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {v3, p0}, Lorg/fourthline/cling/model/meta/Service;->setDevice(Lorg/fourthline/cling/model/meta/Device;)V

    .line 102
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_e
    aget-object v3, p7, v1

    .line 114
    if-eqz v3, :cond_f

    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {v3, p0}, Lorg/fourthline/cling/model/meta/Device;->setParentDevice(Lorg/fourthline/cling/model/meta/Device;)V

    .line 113
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/ValidationError;

    .line 126
    sget-object v3, Lorg/fourthline/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_3

    .line 131
    :cond_11
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .prologue
    .line 70
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 71
    return-void
.end method

.method private isMatch(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/fourthline/cling/model/types/ServiceType;->implementsVersion(Lorg/fourthline/cling/model/types/ServiceType;)Z

    move-result v2

    if-nez v2, :cond_0

    move v3, v1

    .line 316
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/fourthline/cling/model/types/ServiceId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    .line 317
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v3, v0

    .line 315
    goto :goto_0

    :cond_1
    move v2, v0

    .line 316
    goto :goto_1

    :cond_2
    move v0, v1

    .line 317
    goto :goto_2
.end method


# virtual methods
.method public abstract discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 412
    if-ne p0, p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 415
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/meta/Device;

    .line 417
    iget-object v2, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    iget-object v3, p1, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected find(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "TD;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 253
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/types/DeviceType;->implementsVersion(Lorg/fourthline/cling/model/types/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 261
    :cond_1
    return-object v1

    .line 257
    :cond_2
    aget-object v4, v2, v0

    .line 258
    invoke-virtual {p0, p1, v4}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected find(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "TD;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 267
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    return-object v1

    .line 267
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    .line 268
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "TD;)TD;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fourthline/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object p2

    .line 228
    :cond_1
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p2}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 234
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 229
    :cond_3
    aget-object v3, v1, v0

    .line 231
    invoke-virtual {p0, p1, v3}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p2

    if-nez p2, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public abstract findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            ")TD;"
        }
    .end annotation
.end method

.method public findDevices(Lorg/fourthline/cling/model/types/DeviceType;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            ")[TD;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public findDevices(Lorg/fourthline/cling/model/types/ServiceType;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")[TD;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->find(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method protected findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 239
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 247
    :cond_1
    return-object v1

    .line 243
    :cond_2
    aget-object v4, v2, v0

    .line 244
    invoke-virtual {p0, v4}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TD;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0, p0}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public findIcons()[Lorg/fourthline/cling/model/meta/Icon;
    .locals 6

    .prologue
    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v2

    .line 210
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 215
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/Icon;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/Icon;

    return-object v0

    .line 210
    :cond_1
    aget-object v4, v2, v0

    .line 211
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->hasIcons()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findService(Lorg/fourthline/cling/model/types/ServiceId;)Lorg/fourthline/cling/model/meta/Service;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            ")TS;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-virtual {p0, v0, p1, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    :cond_0
    return-object v0
.end method

.method public findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")TS;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, p1, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    :cond_0
    return-object v0
.end method

.method public findServiceTypes()[Lorg/fourthline/cling/model/types/ServiceType;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/types/ServiceType;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/types/ServiceType;

    return-object v0

    .line 308
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Service;

    .line 309
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Service;->getServiceType()Lorg/fourthline/cling/model/types/ServiceType;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "TD;)",
            "Ljava/util/Collection",
            "<TS;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 274
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 275
    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p3}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_3

    .line 281
    :cond_0
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/model/meta/Device;->findEmbeddedDevices(Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_2

    .line 283
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    :cond_2
    return-object v2

    .line 276
    :cond_3
    aget-object v5, v3, v0

    .line 277
    invoke-direct {p0, v5, p1, p2}, Lorg/fourthline/cling/model/meta/Device;->isMatch(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 278
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/Device;

    .line 284
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 286
    invoke-direct {p0, v6, p1, p2}, Lorg/fourthline/cling/model/meta/Device;->isMatch(Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 287
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public findServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public findServices(Lorg/fourthline/cling/model/types/ServiceType;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            ")[TS;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p0}, Lorg/fourthline/cling/model/meta/Device;->findServices(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Lorg/fourthline/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/meta/Device;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->details:Lorg/fourthline/cling/model/meta/DeviceDetails;

    return-object v0
.end method

.method public getDetails(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 332
    .line 335
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 338
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 340
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 346
    :goto_1
    if-eqz v1, :cond_4

    .line 347
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 360
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 366
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 367
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_2
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 349
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 351
    :cond_4
    invoke-virtual {v2}, Lorg/fourthline/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 363
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 371
    :cond_6
    const-string v1, ""

    goto :goto_4

    .line 372
    :cond_7
    const-string v0, ""

    goto :goto_5

    :cond_8
    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public abstract getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TD;"
        }
    .end annotation
.end method

.method public getIcons()[Lorg/fourthline/cling/model/meta/Icon;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->icons:[Lorg/fourthline/cling/model/meta/Icon;

    return-object v0
.end method

.method public getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDI;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    return-object v0
.end method

.method public getParentDevice()Lorg/fourthline/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->parentDevice:Lorg/fourthline/cling/model/meta/Device;

    return-object v0
.end method

.method public abstract getRoot()Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract getServices()[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation
.end method

.method public getType()Lorg/fourthline/cling/model/types/DeviceType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->type:Lorg/fourthline/cling/model/types/DeviceType;

    return-object v0
.end method

.method public getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->version:Lorg/fourthline/cling/model/meta/UDAVersion;

    return-object v0
.end method

.method public hasEmbeddedDevices()Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcons()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServices()Z
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->identity:Lorg/fourthline/cling/model/meta/DeviceIdentity;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFullyHydrated()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->findServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    .line 322
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 325
    :goto_1
    return v0

    .line 322
    :cond_0
    aget-object v4, v2, v1

    .line 323
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Service;->hasStateVariables()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 322
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[TS;",
            "Ljava/util/List",
            "<TD;>;)TD;"
        }
    .end annotation
.end method

.method public abstract newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action",
            "<TS;>;[",
            "Lorg/fourthline/cling/model/meta/StateVariable",
            "<TS;>;)TS;"
        }
    .end annotation
.end method

.method public abstract newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method setParentDevice(Lorg/fourthline/cling/model/meta/Device;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/Device;->parentDevice:Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/Device;->parentDevice:Lorg/fourthline/cling/model/meta/Device;

    .line 178
    return-void
.end method

.method public abstract toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TD;>;)[TD;"
        }
    .end annotation
.end method

.method public abstract toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TS;>;)[TS;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 386
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/UDAVersion;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/meta/DeviceDetails;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 392
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasServices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getServices()[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_3

    .line 399
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-lt v0, v3, :cond_5

    .line 407
    :cond_2
    return-object v2

    .line 393
    :cond_3
    aget-object v5, v3, v1

    .line 394
    if-eqz v5, :cond_4

    .line 395
    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Service;->validate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_5
    aget-object v4, v1, v0

    .line 401
    if-eqz v4, :cond_6

    .line 402
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 400
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
