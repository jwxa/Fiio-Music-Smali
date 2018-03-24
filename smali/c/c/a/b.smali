.class public final enum Lc/c/a/b;
.super Ljava/lang/Enum;
.source "ServletSecurity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/c/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/c/a/b;

.field public static final enum b:Lc/c/a/b;

.field private static final synthetic c:[Lc/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lc/c/a/b;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1, v2}, Lc/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/a/b;->a:Lc/c/a/b;

    .line 79
    new-instance v0, Lc/c/a/b;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Lc/c/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/a/b;->b:Lc/c/a/b;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lc/c/a/b;

    sget-object v1, Lc/c/a/b;->a:Lc/c/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lc/c/a/b;->b:Lc/c/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lc/c/a/b;->c:[Lc/c/a/b;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/a/b;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lc/c/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/c/a/b;

    return-object v0
.end method

.method public static values()[Lc/c/a/b;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lc/c/a/b;->c:[Lc/c/a/b;

    invoke-virtual {v0}, [Lc/c/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/b;

    return-object v0
.end method
