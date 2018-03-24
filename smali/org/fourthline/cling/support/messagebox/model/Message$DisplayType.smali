.class public final enum Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

.field public static final enum MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

.field public static final enum MINIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    const-string v1, "MINIMUM"

    const-string v2, "Minimum"

    invoke-direct {v0, v1, v3, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MINIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    const-string v1, "MAXIMUM"

    const-string v2, "Maximum"

    invoke-direct {v0, v1, v4, v2}, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MINIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->MAXIMUM:Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->ENUM$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->text:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;->ENUM$VALUES:[Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/messagebox/model/Message$DisplayType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
