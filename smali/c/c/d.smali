.class public final enum Lc/c/d;
.super Ljava/lang/Enum;
.source "DispatcherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/c/d;

.field public static final enum b:Lc/c/d;

.field public static final enum c:Lc/c/d;

.field public static final enum d:Lc/c/d;

.field public static final enum e:Lc/c/d;

.field private static final synthetic f:[Lc/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lc/c/d;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Lc/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/d;->a:Lc/c/d;

    .line 50
    new-instance v0, Lc/c/d;

    const-string v1, "INCLUDE"

    invoke-direct {v0, v1, v3}, Lc/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/d;->b:Lc/c/d;

    .line 51
    new-instance v0, Lc/c/d;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v4}, Lc/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/d;->c:Lc/c/d;

    .line 52
    new-instance v0, Lc/c/d;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v5}, Lc/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/d;->d:Lc/c/d;

    .line 53
    new-instance v0, Lc/c/d;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lc/c/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/d;->e:Lc/c/d;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lc/c/d;

    sget-object v1, Lc/c/d;->a:Lc/c/d;

    aput-object v1, v0, v2

    sget-object v1, Lc/c/d;->b:Lc/c/d;

    aput-object v1, v0, v3

    sget-object v1, Lc/c/d;->c:Lc/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lc/c/d;->d:Lc/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lc/c/d;->e:Lc/c/d;

    aput-object v1, v0, v6

    sput-object v0, Lc/c/d;->f:[Lc/c/d;

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

.method public static valueOf(Ljava/lang/String;)Lc/c/d;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lc/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/c/d;

    return-object v0
.end method

.method public static values()[Lc/c/d;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lc/c/d;->f:[Lc/c/d;

    invoke-virtual {v0}, [Lc/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/d;

    return-object v0
.end method
