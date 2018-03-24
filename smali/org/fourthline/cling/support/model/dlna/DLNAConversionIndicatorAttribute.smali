.class public Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAConversionIndicatorAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 23
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->setValue(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->setValue(Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->valueOf(I)Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse DLNA play speed integer from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;->setValue(Ljava/lang/Object;)V

    .line 40
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
