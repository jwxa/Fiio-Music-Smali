.class public Lorg/fourthline/cling/support/model/item/Item;
.super Lorg/fourthline/cling/support/model/DIDLObject;
.source "Item.java"


# instance fields
.field protected refID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;)V
    .locals 11

    .prologue
    .line 60
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 64
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/fourthline/cling/support/model/WriteStatus;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p10}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/fourthline/cling/support/model/WriteStatus;",
            "Lorg/fourthline/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p10}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 48
    iput-object p11, p0, Lorg/fourthline/cling/support/model/item/Item;->refID:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;)V
    .locals 11

    .prologue
    .line 52
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 56
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/fourthline/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Lorg/fourthline/cling/support/model/DIDLObject;)V

    .line 39
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/Item;->setRefID(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getRefID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/fourthline/cling/support/model/item/Item;->refID:Ljava/lang/String;

    return-object v0
.end method

.method public setRefID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/fourthline/cling/support/model/item/Item;->refID:Ljava/lang/String;

    .line 73
    return-void
.end method
