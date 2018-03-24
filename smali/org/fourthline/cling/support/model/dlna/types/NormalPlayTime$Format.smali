.class public final enum Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;
.super Ljava/lang/Enum;
.source "NormalPlayTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

.field public static final enum SECONDS:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

.field public static final enum TIME:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    const-string v1, "SECONDS"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->SECONDS:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    .line 30
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    const-string v1, "TIME"

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->TIME:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->SECONDS:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->TIME:Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    aput-object v1, v0, v3

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/types/NormalPlayTime$Format;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
