.class public final Le/a/e/r;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lf/i;

.field d:Lf/h;

.field e:Le/a/e/s;

.field f:Le/a/e/aj;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    sget-object v0, Le/a/e/s;->j:Le/a/e/s;

    iput-object v0, p0, Le/a/e/r;->e:Le/a/e/s;

    .line 509
    sget-object v0, Le/a/e/aj;->a:Le/a/e/aj;

    iput-object v0, p0, Le/a/e/r;->f:Le/a/e/aj;

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/e/r;->g:Z

    .line 518
    return-void
.end method


# virtual methods
.method public final a()Le/a/e/j;
    .locals 1

    .prologue
    .line 545
    new-instance v0, Le/a/e/j;

    invoke-direct {v0, p0}, Le/a/e/j;-><init>(Le/a/e/r;)V

    return-object v0
.end method

.method public final a(Le/a/e/s;)Le/a/e/r;
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Le/a/e/r;->e:Le/a/e/s;

    .line 536
    return-object p0
.end method

.method public final a(Ljava/net/Socket;Ljava/lang/String;Lf/i;Lf/h;)Le/a/e/r;
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Le/a/e/r;->a:Ljava/net/Socket;

    .line 528
    iput-object p2, p0, Le/a/e/r;->b:Ljava/lang/String;

    .line 529
    iput-object p3, p0, Le/a/e/r;->c:Lf/i;

    .line 530
    iput-object p4, p0, Le/a/e/r;->d:Lf/h;

    .line 531
    return-object p0
.end method
