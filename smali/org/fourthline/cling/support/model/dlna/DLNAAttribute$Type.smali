.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
.super Ljava/lang/Enum;
.source "DLNAAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field public static final enum DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_PN"

    .line 46
    const-string v2, "DLNA.ORG_PN"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/DLNAProfileAttribute;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_OP"

    const-string v2, "DLNA.ORG_OP"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/DLNAOperationsAttribute;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_PS"

    const-string v2, "DLNA.ORG_PS"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/DLNAPlaySpeedAttribute;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_CI"

    const-string v2, "DLNA.ORG_CI"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/DLNAConversionIndicatorAttribute;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const-string v1, "DLNA_ORG_FLAGS"

    const-string v2, "DLNA.ORG_FLAGS"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PN:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_OP:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_PS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_CI:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->DLNA_ORG_FLAGS:Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    aput-object v1, v0, v9

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/a;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/dlna/a;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->byName:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeName:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeTypes:[Ljava/lang/Class;

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    return-object v0
.end method

.method public static valueOfAttributeName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 2

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->byName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    goto :goto_0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttributeTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute$Type;->attributeTypes:[Ljava/lang/Class;

    return-object v0
.end method
