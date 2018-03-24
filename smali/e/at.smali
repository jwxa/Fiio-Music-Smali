.class final Le/at;
.super Le/as;
.source "ResponseBody.java"


# instance fields
.field final synthetic a:Le/af;

.field final synthetic b:J

.field final synthetic c:Lf/i;


# direct methods
.method constructor <init>(JLf/i;)V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Le/at;->a:Le/af;

    iput-wide p1, p0, Le/at;->b:J

    iput-object p3, p0, Le/at;->c:Lf/i;

    invoke-direct {p0}, Le/as;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/af;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Le/at;->a:Le/af;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Le/at;->b:J

    return-wide v0
.end method

.method public final d()Lf/i;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Le/at;->c:Lf/i;

    return-object v0
.end method
