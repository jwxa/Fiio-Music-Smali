.class public final enum Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;
.super Ljava/lang/Enum;
.source "RenderingControlErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

.field public static final enum INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

.field public static final enum INVALID_PRESET_NAME:Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    const-string v1, "INVALID_PRESET_NAME"

    const/16 v2, 0x2bd

    const-string v3, "The specified name is not a valid preset name"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->INVALID_PRESET_NAME:Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    const-string v1, "INVALID_INSTANCE_ID"

    const/16 v2, 0x2be

    const-string v3, "The specified instanceID is invalid for this RenderingControl"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    sget-object v1, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->INVALID_PRESET_NAME:Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->INVALID_INSTANCE_ID:Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->ENUM$VALUES:[Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->code:I

    .line 31
    iput-object p4, p0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->description:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;
    .locals 5

    .prologue
    .line 43
    invoke-static {}, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->values()[Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 47
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 43
    :cond_1
    aget-object v0, v2, v1

    .line 44
    invoke-virtual {v0}, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->ENUM$VALUES:[Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->code:I

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/fourthline/cling/support/renderingcontrol/RenderingControlErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
