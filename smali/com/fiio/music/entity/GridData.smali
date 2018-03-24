.class public Lcom/fiio/music/entity/GridData;
.super Ljava/lang/Object;
.source "GridData.java"


# instance fields
.field private checkBox:Z

.field private imageview:I

.field private name:Ljava/lang/String;

.field private skin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/fiio/music/entity/GridData;->imageview:I

    return v0
.end method

.method public getIntSkin()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/fiio/music/entity/GridData;->skin:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fiio/music/entity/GridData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getcheckBox()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/fiio/music/entity/GridData;->checkBox:Z

    return v0
.end method

.method public setCheckBox(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/fiio/music/entity/GridData;->checkBox:Z

    .line 56
    return-void
.end method

.method public setImageView(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/fiio/music/entity/GridData;->imageview:I

    .line 52
    return-void
.end method

.method public setIntSkin(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/fiio/music/entity/GridData;->skin:I

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/fiio/music/entity/GridData;->name:Ljava/lang/String;

    .line 44
    return-void
.end method
