.class public final enum Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
.super Ljava/lang/Enum;
.source "ContentDirectoryErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

.field public static final enum NO_SUCH_OBJECT:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

.field public static final enum UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const-string v1, "NO_SUCH_OBJECT"

    const/16 v2, 0x2bd

    const-string v3, "The specified ObjectID is invalid"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->NO_SUCH_OBJECT:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    .line 24
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const-string v1, "UNSUPPORTED_SORT_CRITERIA"

    const/16 v2, 0x2c5

    const-string v3, "Unsupported or invalid sort criteria"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    .line 25
    new-instance v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    const-string v1, "CANNOT_PROCESS"

    const/16 v2, 0x2d0

    const-string v3, "Cannot process the request"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->NO_SUCH_OBJECT:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->UNSUPPORTED_SORT_CRITERIA:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->CANNOT_PROCESS:Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->ENUM$VALUES:[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->code:I

    .line 32
    iput-object p4, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->description:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static getByCode(I)Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->values()[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 48
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 44
    :cond_1
    aget-object v0, v2, v1

    .line 45
    invoke-virtual {v0}, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->ENUM$VALUES:[Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->code:I

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/fourthline/cling/support/contentdirectory/ContentDirectoryErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
