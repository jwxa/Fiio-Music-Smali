.class public final enum Lorg/seamless/util/time/DateRange$Preset;
.super Ljava/lang/Enum;
.source "DateRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/seamless/util/time/DateRange$Preset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum ALL:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

.field public static final enum YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;


# instance fields
.field dateRange:Lorg/seamless/util/time/DateRange;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 27
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    const-string v1, "ALL"

    new-instance v2, Lorg/seamless/util/time/DateRange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;)V

    invoke-direct {v0, v1, v9, v2}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->ALL:Lorg/seamless/util/time/DateRange$Preset;

    .line 28
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    const-string v1, "YEAR_TO_DATE"

    new-instance v2, Lorg/seamless/util/time/DateRange;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v4

    invoke-direct {v3, v4, v9, v8}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v2, v3}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;)V

    invoke-direct {v0, v1, v8, v2}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    .line 29
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    const-string v1, "MONTH_TO_DATE"

    new-instance v2, Lorg/seamless/util/time/DateRange;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v4

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentMonth()I

    move-result v5

    invoke-direct {v3, v4, v5, v8}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v2, v3}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;)V

    invoke-direct {v0, v1, v10, v2}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    .line 30
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    const-string v1, "LAST_MONTH"

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v3

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentMonth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v4, v8}, Ljava/util/Date;-><init>(III)V

    invoke-static {v2}, Lorg/seamless/util/time/DateRange;->getMonthOf(Ljava/util/Date;)Lorg/seamless/util/time/DateRange;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

    .line 31
    new-instance v0, Lorg/seamless/util/time/DateRange$Preset;

    const-string v1, "LAST_YEAR"

    new-instance v2, Lorg/seamless/util/time/DateRange;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, v9, v8}, Ljava/util/Date;-><init>(III)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Lorg/seamless/util/time/DateRange;->getCurrentYear()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0xb

    const/16 v7, 0x1f

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Date;-><init>(III)V

    invoke-direct {v2, v3, v4}, Lorg/seamless/util/time/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    invoke-direct {v0, v1, v12, v2}, Lorg/seamless/util/time/DateRange$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/seamless/util/time/DateRange$Preset;

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->ALL:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v9

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->YEAR_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v8

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->MONTH_TO_DATE:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v10

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->LAST_MONTH:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v11

    sget-object v1, Lorg/seamless/util/time/DateRange$Preset;->LAST_YEAR:Lorg/seamless/util/time/DateRange$Preset;

    aput-object v1, v0, v12

    sput-object v0, Lorg/seamless/util/time/DateRange$Preset;->$VALUES:[Lorg/seamless/util/time/DateRange$Preset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/seamless/util/time/DateRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/util/time/DateRange;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lorg/seamless/util/time/DateRange$Preset;->dateRange:Lorg/seamless/util/time/DateRange;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateRange$Preset;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/seamless/util/time/DateRange$Preset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/time/DateRange$Preset;

    return-object v0
.end method

.method public static values()[Lorg/seamless/util/time/DateRange$Preset;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/seamless/util/time/DateRange$Preset;->$VALUES:[Lorg/seamless/util/time/DateRange$Preset;

    invoke-virtual {v0}, [Lorg/seamless/util/time/DateRange$Preset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/util/time/DateRange$Preset;

    return-object v0
.end method


# virtual methods
.method public final getDateRange()Lorg/seamless/util/time/DateRange;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/seamless/util/time/DateRange$Preset;->dateRange:Lorg/seamless/util/time/DateRange;

    return-object v0
.end method
