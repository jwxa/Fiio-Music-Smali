.class public final enum Lc/c/a/c;
.super Ljava/lang/Enum;
.source "ServletSecurity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lc/c/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/c/a/c;

.field public static final enum b:Lc/c/a/c;

.field private static final synthetic c:[Lc/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lc/c/a/c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lc/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/a/c;->a:Lc/c/a/c;

    .line 95
    new-instance v0, Lc/c/a/c;

    const-string v1, "CONFIDENTIAL"

    invoke-direct {v0, v1, v3}, Lc/c/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/a/c;->b:Lc/c/a/c;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Lc/c/a/c;

    sget-object v1, Lc/c/a/c;->a:Lc/c/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lc/c/a/c;->b:Lc/c/a/c;

    aput-object v1, v0, v3

    sput-object v0, Lc/c/a/c;->c:[Lc/c/a/c;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/a/c;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lc/c/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lc/c/a/c;

    return-object v0
.end method

.method public static values()[Lc/c/a/c;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lc/c/a/c;->c:[Lc/c/a/c;

    invoke-virtual {v0}, [Lc/c/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/c;

    return-object v0
.end method
