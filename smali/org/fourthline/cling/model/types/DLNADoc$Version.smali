.class public final enum Lorg/fourthline/cling/model/types/DLNADoc$Version;
.super Ljava/lang/Enum;
.source "DLNADoc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/model/types/DLNADoc$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/model/types/DLNADoc$Version;

.field public static final enum V1_0:Lorg/fourthline/cling/model/types/DLNADoc$Version;

.field public static final enum V1_5:Lorg/fourthline/cling/model/types/DLNADoc$Version;


# instance fields
.field s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    const-string v1, "V1_0"

    const-string v2, "1.00"

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/model/types/DLNADoc$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_0:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    .line 36
    new-instance v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    const-string v1, "V1_5"

    const-string v2, "1.50"

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/model/types/DLNADoc$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_5:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fourthline/cling/model/types/DLNADoc$Version;

    sget-object v1, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_0:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/model/types/DLNADoc$Version;->V1_5:Lorg/fourthline/cling/model/types/DLNADoc$Version;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->ENUM$VALUES:[Lorg/fourthline/cling/model/types/DLNADoc$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->s:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNADoc$Version;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/model/types/DLNADoc$Version;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->ENUM$VALUES:[Lorg/fourthline/cling/model/types/DLNADoc$Version;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/model/types/DLNADoc$Version;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DLNADoc$Version;->s:Ljava/lang/String;

    return-object v0
.end method
