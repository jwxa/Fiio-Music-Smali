.class public abstract Lorg/fourthline/cling/support/model/DIDLObject;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# instance fields
.field protected clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

.field protected creator:Ljava/lang/String;

.field protected descMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/String;

.field protected parentID:Ljava/lang/String;

.field protected properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;"
        }
    .end annotation
.end field

.field protected resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;"
        }
    .end annotation
.end field

.field protected restricted:Z

.field protected title:Ljava/lang/String;

.field protected writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 647
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 664
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    .line 665
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    .line 666
    iput-object p3, p0, Lorg/fourthline/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    .line 667
    iput-object p4, p0, Lorg/fourthline/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    .line 668
    iput-boolean p5, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 669
    iput-object p6, p0, Lorg/fourthline/cling/support/model/DIDLObject;->writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;

    .line 670
    iput-object p7, p0, Lorg/fourthline/cling/support/model/DIDLObject;->clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 671
    iput-object p8, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 672
    iput-object p9, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 673
    iput-object p10, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 674
    return-void
.end method

.method protected constructor <init>(Lorg/fourthline/cling/support/model/DIDLObject;)V
    .locals 11

    .prologue
    .line 650
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getParentID()Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v4

    .line 654
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->isRestricted()Z

    move-result v5

    .line 655
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;

    move-result-object v6

    .line 656
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v7

    .line 657
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v8

    .line 658
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v9

    .line 659
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getDescMetadata()Ljava/util/List;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/fourthline/cling/support/model/WriteStatus;Lorg/fourthline/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 661
    return-void
.end method


# virtual methods
.method public addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    return-object p0
.end method

.method public addProperties([Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 3

    .prologue
    .line 791
    if-nez p1, :cond_1

    .line 795
    :cond_0
    return-object p0

    .line 792
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 793
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1

    .prologue
    .line 767
    if-nez p1, :cond_0

    .line 769
    :goto_0
    return-object p0

    .line 768
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResource(Lorg/fourthline/cling/support/model/Res;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 876
    if-ne p0, p1, :cond_1

    .line 883
    :cond_0
    :goto_0
    return v0

    .line 877
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

    .line 879
    :cond_3
    check-cast p1, Lorg/fourthline/cling/support/model/DIDLObject;

    .line 881
    iget-object v2, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 816
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 817
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)TV;"
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getFirstProperty(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject$Property;

    move-result-object v0

    .line 850
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstResource()Lorg/fourthline/cling/support/model/Res;
    .locals 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getResources()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastProperty(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    return-object v1

    .line 824
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 825
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public getParentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getProperties(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)[",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 831
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 832
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 836
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    return-object v0

    .line 832
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 833
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPropertiesByNamespace(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property$NAMESPACE;",
            ">;)[",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 840
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/DIDLObject$Property;

    return-object v0

    .line 841
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 842
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPropertyValues(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties(Ljava/lang/Class;)[Lorg/fourthline/cling/support/model/DIDLObject$Property;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 858
    return-object v1

    .line 855
    :cond_0
    aget-object v4, v2, v0

    .line 856
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWriteStatus()Lorg/fourthline/cling/support/model/WriteStatus;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 809
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 810
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    return v0
.end method

.method public removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;)",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 799
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 800
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    return-object p0

    .line 801
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 802
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 3

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 781
    :goto_0
    return-object p0

    .line 774
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 775
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    goto :goto_0

    .line 776
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/DIDLObject$Property;

    .line 777
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public replaceProperties(Ljava/lang/Class;[Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;[",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ")",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 785
    array-length v0, p2

    if-nez v0, :cond_0

    .line 787
    :goto_0
    return-object p0

    .line 786
    :cond_0
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLObject;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 787
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/DIDLObject;->addProperties([Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    move-result-object p0

    goto :goto_0
.end method

.method public setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->clazz:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 754
    return-object p0
.end method

.method public setCreator(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->creator:Ljava/lang/String;

    .line 709
    return-object p0
.end method

.method public setDescMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->descMetadata:Ljava/util/List;

    .line 867
    return-void
.end method

.method public setId(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->id:Ljava/lang/String;

    .line 682
    return-object p0
.end method

.method public setParentID(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->parentID:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public setProperties(Ljava/util/List;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property;",
            ">;)",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 762
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->properties:Ljava/util/List;

    .line 763
    return-object p0
.end method

.method public setResources(Ljava/util/List;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/Res;",
            ">;)",
            "Lorg/fourthline/cling/support/model/DIDLObject;"
        }
    .end annotation

    .prologue
    .line 739
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->resources:Ljava/util/List;

    .line 740
    return-object p0
.end method

.method public setRestricted(Z)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 717
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->restricted:Z

    .line 718
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->title:Ljava/lang/String;

    .line 700
    return-object p0
.end method

.method public setWriteStatus(Lorg/fourthline/cling/support/model/WriteStatus;)Lorg/fourthline/cling/support/model/DIDLObject;
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject;->writeStatus:Lorg/fourthline/cling/support/model/WriteStatus;

    .line 727
    return-object p0
.end method
