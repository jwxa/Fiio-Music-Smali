.class public Lorg/fourthline/cling/support/model/container/StorageSystem;
.super Lorg/fourthline/cling/support/model/container/Container;
.source "StorageSystem.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.storageSystem"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/container/StorageSystem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/container/Container;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/support/model/container/StorageSystem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 8

    .prologue
    .line 44
    sget-object v6, Lorg/fourthline/cling/support/model/container/StorageSystem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 45
    if-eqz p6, :cond_0

    .line 46
    invoke-virtual {p0, p6}, Lorg/fourthline/cling/support/model/container/StorageSystem;->setStorageTotal(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;

    .line 47
    :cond_0
    if-eqz p7, :cond_1

    .line 48
    invoke-virtual {p0, p7}, Lorg/fourthline/cling/support/model/container/StorageSystem;->setStorageUsed(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;

    .line 49
    :cond_1
    if-eqz p8, :cond_2

    .line 50
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->setStorageFree(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;

    .line 51
    :cond_2
    if-eqz p9, :cond_3

    .line 52
    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->setStorageMaxPartition(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;

    .line 53
    :cond_3
    if-eqz p10, :cond_4

    .line 54
    move-object/from16 v0, p10

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/container/StorageSystem;

    .line 55
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 11

    .prologue
    .line 39
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/support/model/container/StorageSystem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/fourthline/cling/support/model/StorageMedium;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/container/Container;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/container/Container;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getStorageFree()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageMaxPartition()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getStorageTotal()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageUsed()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public setStorageFree(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_FREE;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 81
    return-object p0
.end method

.method public setStorageMaxPartition(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 90
    return-object p0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/container/StorageSystem;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 99
    return-object p0
.end method

.method public setStorageTotal(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_TOTAL;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 63
    return-object p0
.end method

.method public setStorageUsed(Ljava/lang/Long;)Lorg/fourthline/cling/support/model/container/StorageSystem;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_USED;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 72
    return-object p0
.end method
