.class public final enum Lc/c/am;
.super Ljava/lang/Enum;
.source "SessionTrackingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/c/am;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/c/am;

.field public static final enum b:Lc/c/am;

.field public static final enum c:Lc/c/am;

.field private static final synthetic d:[Lc/c/am;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lc/c/am;

    const-string v1, "COOKIE"

    invoke-direct {v0, v1, v2}, Lc/c/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/am;->a:Lc/c/am;

    .line 50
    new-instance v0, Lc/c/am;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lc/c/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/am;->b:Lc/c/am;

    .line 51
    new-instance v0, Lc/c/am;

    const-string v1, "SSL"

    invoke-direct {v0, v1, v4}, Lc/c/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/am;->c:Lc/c/am;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lc/c/am;

    sget-object v1, Lc/c/am;->a:Lc/c/am;

    aput-object v1, v0, v2

    sget-object v1, Lc/c/am;->b:Lc/c/am;

    aput-object v1, v0, v3

    sget-object v1, Lc/c/am;->c:Lc/c/am;

    aput-object v1, v0, v4

    sput-object v0, Lc/c/am;->d:[Lc/c/am;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/am;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lc/c/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/c/am;

    return-object v0
.end method

.method public static values()[Lc/c/am;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lc/c/am;->d:[Lc/c/am;

    invoke-virtual {v0}, [Lc/c/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/am;

    return-object v0
.end method
