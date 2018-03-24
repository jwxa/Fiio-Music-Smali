.class public Lorg/fourthline/cling/support/model/DIDLObject$Class;
.super Ljava/lang/Object;
.source "DIDLObject.java"


# instance fields
.field protected friendlyName:Ljava/lang/String;

.field protected includeDerived:Z

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 592
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 597
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 598
    iput-boolean p3, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->includeDerived:Z

    .line 599
    return-void
.end method


# virtual methods
.method public equals(Lorg/fourthline/cling/support/model/DIDLObject;)Z
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeDerived()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->includeDerived:Z

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->friendlyName:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setIncludeDerived(Z)V
    .locals 0

    .prologue
    .line 622
    iput-boolean p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->includeDerived:Z

    .line 623
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLObject$Class;->value:Ljava/lang/String;

    .line 607
    return-void
.end method
