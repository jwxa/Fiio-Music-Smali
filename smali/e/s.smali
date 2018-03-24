.class public interface abstract Le/s;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Le/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Le/t;

    invoke-direct {v0}, Le/t;-><init>()V

    sput-object v0, Le/s;->a:Le/s;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Le/r;",
            ">;"
        }
    .end annotation
.end method
