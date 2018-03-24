.class public final enum Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
.super Ljava/lang/Enum;
.source "AvailableSeekRangeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

.field public static final enum MODE_0:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

.field public static final enum MODE_1:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    const-string v1, "MODE_0"

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->MODE_0:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 28
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    const-string v1, "MODE_1"

    invoke-direct {v0, v1, v3}, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->MODE_1:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->MODE_0:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->MODE_1:Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    return-object v0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;->ENUM$VALUES:[Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    array-length v1, v0

    new-array v2, v1, [Lorg/fourthline/cling/support/model/dlna/types/AvailableSeekRangeType$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
