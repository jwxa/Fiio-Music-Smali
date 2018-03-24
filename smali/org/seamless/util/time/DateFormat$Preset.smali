.class public final enum Lorg/seamless/util/time/DateFormat$Preset;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/seamless/util/time/DateFormat$Preset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

.field public static final enum YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;


# instance fields
.field protected dateFormat:Lorg/seamless/util/time/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 27
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "DD_MM_YYYY_DOT"

    new-instance v2, Lorg/seamless/util/time/DateFormat;

    const-string v3, "31.12.2010"

    const-string v4, "dd.MM.yyyy"

    invoke-direct {v2, v3, v4}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v6, v2}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 28
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "MM_DD_YYYY_DOT"

    new-instance v2, Lorg/seamless/util/time/DateFormat;

    const-string v3, "12.31.2010"

    const-string v4, "MM.dd.yyyy"

    invoke-direct {v2, v3, v4}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v7, v2}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 29
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "YYYY_MM_DD_DOT"

    new-instance v2, Lorg/seamless/util/time/DateFormat;

    const-string v3, "2010.12.31"

    const-string v4, "yyyy.MM.dd"

    invoke-direct {v2, v3, v4}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v8, v2}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 30
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "YYYY_DD_MM_DOT"

    new-instance v2, Lorg/seamless/util/time/DateFormat;

    const-string v3, "2010.31.12"

    const-string v4, "yyyy.dd.MM"

    invoke-direct {v2, v3, v4}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v9, v2}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    .line 31
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "DD_MM_YYYY_SLASH"

    new-instance v2, Lorg/seamless/util/time/DateFormat;

    const-string v3, "31/12/2010"

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v2, v3, v4}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v10, v2}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 32
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "MM_DD_YYYY_SLASH"

    const/4 v2, 0x5

    new-instance v3, Lorg/seamless/util/time/DateFormat;

    const-string v4, "12/31/2010"

    const-string v5, "MM/dd/yyyy"

    invoke-direct {v3, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 33
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "YYYY_MM_DD_SLASH"

    const/4 v2, 0x6

    new-instance v3, Lorg/seamless/util/time/DateFormat;

    const-string v4, "2010/12/31"

    const-string v5, "yyyy/MM/dd"

    invoke-direct {v3, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 34
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "YYYY_DD_MM_SLASH"

    const/4 v2, 0x7

    new-instance v3, Lorg/seamless/util/time/DateFormat;

    const-string v4, "2010/31/12"

    const-string v5, "yyyy/dd/MM"

    invoke-direct {v3, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    .line 35
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "YYYY_MMM_DD"

    const/16 v2, 0x8

    new-instance v3, Lorg/seamless/util/time/DateFormat;

    const-string v4, "2010 Dec 31"

    const-string v5, "yyyy MMM dd"

    invoke-direct {v3, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

    .line 36
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "DD_MMM_YYYY"

    const/16 v2, 0x9

    new-instance v3, Lorg/seamless/util/time/DateFormat;

    const-string v4, "31 Dec 2010"

    const-string v5, "dd MMM yyyy"

    invoke-direct {v3, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    .line 37
    new-instance v0, Lorg/seamless/util/time/DateFormat$Preset;

    const-string v1, "MMM_DD_YYYY"

    const/16 v2, 0xa

    new-instance v3, Lorg/seamless/util/time/DateFormat;

    const-string v4, "Dec 31 2010"

    const-string v5, "MMM dd yyyy"

    invoke-direct {v3, v4, v5}, Lorg/seamless/util/time/DateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/seamless/util/time/DateFormat$Preset;-><init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/seamless/util/time/DateFormat$Preset;

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v6

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v7

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v8

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_DOT:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v9

    sget-object v1, Lorg/seamless/util/time/DateFormat$Preset;->DD_MM_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lorg/seamless/util/time/DateFormat$Preset;->MM_DD_YYYY_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MM_DD_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_DD_MM_SLASH:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/seamless/util/time/DateFormat$Preset;->YYYY_MMM_DD:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/seamless/util/time/DateFormat$Preset;->DD_MMM_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/seamless/util/time/DateFormat$Preset;->MMM_DD_YYYY:Lorg/seamless/util/time/DateFormat$Preset;

    aput-object v2, v0, v1

    sput-object v0, Lorg/seamless/util/time/DateFormat$Preset;->$VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/seamless/util/time/DateFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/util/time/DateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lorg/seamless/util/time/DateFormat$Preset;->dateFormat:Lorg/seamless/util/time/DateFormat;

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/util/time/DateFormat$Preset;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/seamless/util/time/DateFormat$Preset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/time/DateFormat$Preset;

    return-object v0
.end method

.method public static values()[Lorg/seamless/util/time/DateFormat$Preset;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/seamless/util/time/DateFormat$Preset;->$VALUES:[Lorg/seamless/util/time/DateFormat$Preset;

    invoke-virtual {v0}, [Lorg/seamless/util/time/DateFormat$Preset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/seamless/util/time/DateFormat$Preset;

    return-object v0
.end method


# virtual methods
.method public final getDateFormat()Lorg/seamless/util/time/DateFormat;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/seamless/util/time/DateFormat$Preset;->dateFormat:Lorg/seamless/util/time/DateFormat;

    return-object v0
.end method
