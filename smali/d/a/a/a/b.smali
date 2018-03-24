.class public final Ld/a/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ld/a/a/a/d;

.field private b:Ld/a/a/a/a;

.field private c:Ld/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ld/a/a/a/d;->a:Ld/a/a/a/d;

    iput-object v0, p0, Ld/a/a/a/b;->a:Ld/a/a/a/d;

    sget-object v0, Ld/a/a/a/a;->b:Ld/a/a/a/a;

    iput-object v0, p0, Ld/a/a/a/b;->b:Ld/a/a/a/a;

    sget-object v0, Ld/a/a/a/c;->a:Ld/a/a/a/c;

    iput-object v0, p0, Ld/a/a/a/b;->c:Ld/a/a/a/c;

    return-void
.end method


# virtual methods
.method public final a()Ld/a/a/a/a;
    .locals 1

    iget-object v0, p0, Ld/a/a/a/b;->b:Ld/a/a/a/a;

    return-object v0
.end method

.method public final a(Ld/a/a/a/a;)V
    .locals 0

    iput-object p1, p0, Ld/a/a/a/b;->b:Ld/a/a/a/a;

    return-void
.end method

.method public final a(Ld/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Ld/a/a/a/b;->c:Ld/a/a/a/c;

    return-void
.end method

.method public final a(Ld/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Ld/a/a/a/b;->a:Ld/a/a/a/d;

    return-void
.end method

.method public final b()Ld/a/a/a/c;
    .locals 1

    iget-object v0, p0, Ld/a/a/a/b;->c:Ld/a/a/a/c;

    return-object v0
.end method

.method public final c()Ld/a/a/a/d;
    .locals 1

    iget-object v0, p0, Ld/a/a/a/b;->a:Ld/a/a/a/d;

    return-object v0
.end method
