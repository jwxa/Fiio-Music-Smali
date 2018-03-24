.class public final Ld/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ld/a/a/a/a;

.field public static final b:Ld/a/a/a/a;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/a/a/a/a;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1}, Ld/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/a;->a:Ld/a/a/a/a;

    new-instance v0, Ld/a/a/a/a;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1}, Ld/a/a/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/a;->b:Ld/a/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a/a/a/a;->c:Ljava/lang/String;

    return-void
.end method
