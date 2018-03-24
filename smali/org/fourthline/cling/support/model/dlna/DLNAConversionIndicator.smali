.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;
.super Ljava/lang/Enum;
.source "DLNAConversionIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

.field public static final enum NONE:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

.field public static final enum TRANSCODED:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    const-string v1, "TRANSCODED"

    invoke-direct {v0, v1, v3, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->TRANSCODED:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->TRANSCODED:Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    aput-object v1, v0, v3

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->code:I

    .line 34
    return-void
.end method

.method public static valueOf(I)Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;
    .locals 5

    .prologue
    .line 41
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 46
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 41
    :cond_1
    aget-object v0, v2, v1

    .line 42
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicator;->code:I

    return v0
.end method
