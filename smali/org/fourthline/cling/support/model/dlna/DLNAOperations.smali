.class public final enum Lorg/fourthline/cling/support/model/dlna/DLNAOperations;
.super Ljava/lang/Enum;
.source "DLNAOperations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAOperations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

.field public static final enum NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

.field public static final enum RANGE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

.field public static final enum TIMESEEK:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 32
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    const-string v1, "RANGE"

    invoke-direct {v0, v1, v4, v4}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->RANGE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 33
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    const-string v1, "TIMESEEK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->TIMESEEK:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->NONE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->RANGE:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->TIMESEEK:Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    aput-object v1, v0, v5

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->code:I

    .line 39
    return-void
.end method

.method public static valueOf(I)Lorg/fourthline/cling/support/model/dlna/DLNAOperations;
    .locals 5

    .prologue
    .line 46
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 51
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 46
    :cond_1
    aget-object v0, v2, v1

    .line 47
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/DLNAOperations;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/DLNAOperations;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/fourthline/cling/support/model/dlna/DLNAOperations;->code:I

    return v0
.end method
